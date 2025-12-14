<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="chat.css">

<!DOCTYPE html>
<html>
<head>
    <title>群聊室</title>
    <script>
        // 切换聊天模式
        function switchChatMode() {
            const chatType = document.getElementById('chatType').value;
            const username2 = document.getElementById('username2').value;

            if (chatType === 'private' && !username2) {
                alert('请先选择私聊用户');
                document.getElementById('username2').focus();
                return;
            }

            // 提交切换表单
            document.getElementById('switchForm').submit();
        }

        // 页面加载完成后执行
        function initPage() {
            // 滚动到底部
            const chatHistory = document.getElementById('chat-history');
            if (chatHistory) {
                chatHistory.scrollTop = chatHistory.scrollHeight;
            }

            // 如果允许群聊，聚焦到输入框
            const messageInput = document.getElementById('message-input');
            if (messageInput && !messageInput.disabled) {
                messageInput.focus();
            }

            // 当下拉框选择用户时，自动切换到私聊模式
            const username2Select = document.getElementById('username2');
            if (username2Select) {
                username2Select.addEventListener('change', function() {
                    if (this.value) {
                        document.getElementById('chatType').value = 'private';
                        setTimeout(switchChatMode, 100);
                    }
                });
            }
        }

        // 自动刷新页面（每10秒）
        setTimeout(function() {
            window.location.reload();
        }, 10000);
    </script>
</head>
<body onload="initPage()">
<!-- 检查用户是否登录 -->
<c:if test="${empty sessionScope.username}">
    <c:redirect url="index.jsp" />
</c:if>

<!-- 获取应用数据 -->
<c:set var="allMessages" value="${applicationScope.messages}" />
<c:if test="${empty allMessages}">
    <c:set var="allMessages" value="${[]}" scope="page" />
</c:if>

<c:set var="users" value="${applicationScope.users}" />
<c:set var="onlineUsers" value="${applicationScope.onlineUsers}" />
<c:set var="onlineCount" value="${not empty onlineUsers ? onlineUsers.size() : 0}" />
<c:set var="allowGroupChat" value="${onlineCount >= 2}" />
<c:set var="currentUser" value="${sessionScope.username}" />

<h1>群聊室</h1>
<div class="user-info">
    <p>当前用户: <strong>${currentUser}</strong> |
        在线用户: <strong>${onlineCount}</strong> 人</p>
    <c:if test="${not allowGroupChat}">
        <p style="color: orange; font-weight: bold;">
            ⚠️ 群聊需要至少2人在线（当前 ${onlineCount} 人）
        </p>
    </c:if>
</div>

<!-- 聊天模式切换表单 -->
<form id="switchForm" action="chat-servlet" method="get">
    <input type="hidden" name="action" value="switchMode" />
    <div class="chat-mode-selector">
        <label for="chatType">聊天模式:</label>
        <select name="chatType" id="chatType" onchange="switchChatMode()">
            <option value="group" selected>群聊（所有人）</option>
            <option value="private">私聊</option>
        </select>

        <label for="username2">选择私聊用户:</label>
        <select name="username2" id="username2">
            <option value="">-- 选择用户 --</option>
            <c:if test="${not empty users}">
                <c:forEach var="user" items="${users}">
                    <c:if test="${user.username ne currentUser}">
                        <option value="${user.username}">
                                ${user.username}
                            <c:choose>
                                <c:when test="${onlineUsers.contains(user.username)}">
                                    ● 在线
                                </c:when>
                                <c:otherwise>
                                    ○ 离线
                                </c:otherwise>
                            </c:choose>
                        </option>
                    </c:if>
                </c:forEach>
            </c:if>
        </select>
    </div>
</form>

<div class="navigation">
    <a href="logout-servlet">退出登录</a>
</div>

<!-- 错误信息显示 -->
<c:if test="${not empty sessionScope.error}">
    <div class="error-message">
            ${sessionScope.error}
        <c:remove var="error" scope="session" />
    </div>
</c:if>

<!-- 在线用户列表 -->
<div class="online-users">
    <h3>在线用户列表:</h3>
    <div class="user-list">
        <c:choose>
            <c:when test="${not empty onlineUsers}">
                <c:forEach var="user" items="${onlineUsers}">
                    <div class="user-item ${user eq currentUser ? 'current-user' : ''}">
                        <span class="user-name">${user}</span>
                        <span class="online-indicator">● 在线</span>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <p>暂无在线用户</p>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<h2>群聊记录 (所有在线用户可见):</h2>
<div id="chat-history" class="chat-history">
    <c:set var="hasGroupMessages" value="false" />
    <c:forEach var="mes" items="${allMessages}">
        <c:if test="${mes.broadcast}">
            <c:set var="hasGroupMessages" value="true" />
            <div class="message ${mes.username1 eq currentUser ? 'sent' : 'received'}">
                <div class="message-header">
                    <strong>${mes.username1}:</strong>
                    <span class="timestamp">${mes.timestamp}</span>
                </div>
                <div class="message-content">${mes.content}</div>
            </div>
        </c:if>
    </c:forEach>
    <c:if test="${not hasGroupMessages}">
        <c:choose>
            <c:when test="${allowGroupChat}">
                <p>还没有群聊消息，发送第一条消息开始群聊吧！</p>
            </c:when>
            <c:otherwise>
                <p>等待其他用户上线以开始群聊...</p>
            </c:otherwise>
        </c:choose>
    </c:if>
</div>

<form action="chat-servlet" method="post" id="chat-form">
    <input type="hidden" name="chatType" value="group">

    <h2>发送群聊消息:</h2>
    <c:choose>
        <c:when test="${allowGroupChat}">
            <textarea name="message" rows="4" cols="50" id="message-input"
                      placeholder="输入群发消息（所有在线用户可见）..." required></textarea>
            <br>
            <input type="submit" value="发送群聊消息">
        </c:when>
        <c:otherwise>
            <textarea name="message" rows="4" cols="50" id="message-input"
                      placeholder="群聊需要至少2人在线才能发送消息..." disabled></textarea>
            <br>
            <input type="submit" value="发送群聊消息" disabled>
            <div class="warning">
                <p>⚠️ 群聊功能已禁用，需要至少2个在线用户</p>
            </div>
        </c:otherwise>
    </c:choose>
</form>
</body>
</html>
