<%--
  Created by IntelliJ IDEA.
  User: eathelyn
  Date: 2025/11/12
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ page import="java.util.*" %>--%>
<%--<%@ page import="com.boda.login.Message" %>--%>
<%--<%@ page import="com.boda.login.Users" %>--%>
<%--<link rel="stylesheet" href="chat.css">--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>私聊 - 聊天室</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<%--%>
<%--    String username = (String) session.getAttribute("username");--%>
<%--    if (username == null) {--%>
<%--        response.sendRedirect("index.jsp");--%>
<%--        return;--%>
<%--    }--%>

<%--    // 获取当前选中的用户--%>
<%--    String username2selected = request.getParameter("username2");--%>

<%--    // 获取所有消息--%>
<%--    ArrayList<Message> allMessages = (ArrayList<Message>) application.getAttribute("messages");--%>
<%--    if (allMessages == null) {--%>
<%--        allMessages = new ArrayList<>();--%>
<%--    }--%>

<%--    // 获取所有用户--%>
<%--    ArrayList<Users> users = (ArrayList<Users>) application.getAttribute("users");--%>
<%--%>--%>

<%--<h1>私聊室</h1>--%>
<%--<p>当前用户: <strong><%= username %></strong></p>--%>
<%--<div class="navigation">--%>
<%--    <a href="group-chat.jsp">前往群聊</a> |--%>
<%--    <a href="index.jsp">退出登录</a>--%>
<%--</div>--%>

<%--<div class="chat-container">--%>
<%--    <div class="user-list">--%>
<%--        <h2>在线用户:</h2>--%>
<%--        <div class="user-buttons">--%>
<%--            <%--%>
<%--                if (users != null) {--%>
<%--                    for (Users user : users) {--%>
<%--                        if (!user.getUsername().equals(username)) {--%>
<%--                            String activeClass = "";--%>
<%--                            if (username2selected != null && username2selected.equals(user.getUsername())) {--%>
<%--                                activeClass = "active";--%>
<%--                            }--%>
<%--            %>--%>
<%--            <a href="private-chat.jsp?username2=<%= java.net.URLEncoder.encode(user.getUsername(), "UTF-8") %>"--%>
<%--               class="user-button <%= activeClass %>">--%>
<%--                <%= user.getUsername() %><br>--%>
<%--            </a>--%>
<%--            <%--%>
<%--                        }--%>
<%--                    }--%>
<%--                }--%>
<%--            %>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="chat-area">--%>
<%--        <%--%>
<%--            if (username2selected != null && !username2selected.trim().isEmpty()) {--%>
<%--        %>--%>
<%--        <h2>与 <strong><%= username2selected %></strong> 的私聊记录:</h2>--%>
<%--        <div id="private-chat-history" class="chat-history private-chat">--%>
<%--            <%--%>
<%--                boolean hasPrivateMessages = false;--%>
<%--                for (Message mes : allMessages) {--%>
<%--                    if (!mes.isBroadcast()) {--%>
<%--                        // 检查是否是当前对话的消息（双向）--%>
<%--                        boolean isCurrentConversation =--%>
<%--                                (mes.getUsername1().equals(username) && mes.getUsername2().equals(username2selected)) ||--%>
<%--                                        (mes.getUsername1().equals(username2selected) && mes.getUsername2().equals(username));--%>

<%--                        if (isCurrentConversation) {--%>
<%--                            hasPrivateMessages = true;--%>
<%--                            boolean isSentByMe = mes.getUsername1().equals(username);--%>
<%--            %>--%>
<%--            <div class="message <%= isSentByMe ? "sent" : "received" %>">--%>
<%--                <div class="message-header">--%>
<%--                    <strong><%= mes.getUsername1() %>:</strong>--%>
<%--                    <span class="timestamp"><%= new java.util.Date() %></span>--%>
<%--                </div>--%>
<%--                <div class="message-content"><%= mes.getContent() %></div>--%>
<%--            </div>--%>
<%--            <%--%>
<%--                        }--%>
<%--                    }--%>
<%--                }--%>

<%--                if (!hasPrivateMessages) {--%>
<%--            %>--%>
<%--            <p>还没有与 <%= username2selected %> 的聊天记录，开始对话吧！</p>--%>
<%--            <%--%>
<%--                }--%>
<%--            %>--%>
<%--        </div>--%>

<%--        <form action="chat-servlet" method="post" class="private-chat-form">--%>
<%--            <input type="hidden" name="chatType" value="private">--%>
<%--            <input type="hidden" name="username2" value="<%= username2selected %>">--%>

<%--            <h3>发送私聊消息给 <%= username2selected %>:</h3>--%>
<%--            <textarea name="message" rows="4" cols="50" required--%>
<%--                      placeholder="发送给 <%= username2selected %> 的私聊消息..."></textarea>--%>
<%--            <br>--%>
<%--            <input type="submit" value="发送私聊消息">--%>
<%--        </form>--%>
<%--        <%--%>
<%--        } else {--%>
<%--        %>--%>
<%--        <div class="no-user-selected">--%>
<%--            <h2>请选择聊天用户</h2>--%>
<%--            <p>从左侧用户列表中选择一个用户开始私聊</p>--%>
<%--            <p>私聊消息只有您和对方可见</p>--%>
<%--        </div>--%>
<%--        <%--%>
<%--            }--%>
<%--        %>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<script>--%>
<%--    // 页面加载完成后自动滚动到底部--%>
<%--    document.addEventListener('DOMContentLoaded', function() {--%>
<%--        const chatHistory = document.getElementById('private-chat-history');--%>
<%--        if (chatHistory) {--%>
<%--            chatHistory.scrollTop = chatHistory.scrollHeight;--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>

<%--<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ page import="java.util.*" %>--%>
<%--<%@ page import="com.boda.login.Message" %>--%>
<%--<%@ page import="com.boda.login.Users" %>--%>
<%--<link rel="stylesheet" href="chat.css">--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>私聊 - 聊天室</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<%--%>
<%--    String username = (String) session.getAttribute("username");--%>
<%--    if (username == null) {--%>
<%--        response.sendRedirect("index.jsp");--%>
<%--        return;--%>
<%--    }--%>

<%--    // 获取当前选中的用户--%>
<%--    String username2selected = request.getParameter("username2");--%>

<%--    // 获取所有消息--%>
<%--    ArrayList<Message> allMessages = (ArrayList<Message>) application.getAttribute("messages");--%>
<%--    if (allMessages == null) {--%>
<%--        allMessages = new ArrayList<>();--%>
<%--    }--%>

<%--    // 获取所有注册用户--%>
<%--    ArrayList<Users> users = (ArrayList<Users>) application.getAttribute("users");--%>

<%--    // 获取在线用户（只有登录后才能看到）--%>
<%--    Set<String> onlineUsers = (Set<String>) application.getAttribute("onlineUsers");--%>
<%--    int onlineCount = (onlineUsers != null) ? onlineUsers.size() : 0;--%>
<%--%>--%>

<%--<h1>私聊室</h1>--%>
<%--<div class="user-info">--%>
<%--    <p>当前用户: <strong><%= username %></strong> |--%>
<%--        在线用户: <strong><%= onlineCount %></strong> 人</p>--%>
<%--</div>--%>
<%--<div class="navigation">--%>
<%--    <a href="group-chat.jsp">前往群聊</a> |--%>
<%--    <a href="logout-servlet">退出登录</a>--%>
<%--</div>--%>

<%--<div class="chat-container">--%>
<%--    <div class="user-list">--%>
<%--        <h2>在线用户（可私聊）:</h2>--%>
<%--        <div class="user-buttons">--%>
<%--            <%--%>
<%--                if (onlineUsers != null) {--%>
<%--                    for (String onlineUser : onlineUsers) {--%>
<%--                        if (!onlineUser.equals(username)) {--%>
<%--                            String activeClass = "";--%>
<%--                            if (username2selected != null && username2selected.equals(onlineUser)) {--%>
<%--                                activeClass = "active";--%>
<%--                            }--%>
<%--            %>--%>
<%--            <a href="private-chat.jsp?username2=<%= java.net.URLEncoder.encode(onlineUser, "UTF-8") %>"--%>
<%--               class="user-button <%= activeClass %>">--%>
<%--                <%= onlineUser %><br>--%>
<%--                <span class="online-status">在线 ●</span>--%>
<%--            </a>--%>
<%--            <%--%>
<%--                        }--%>
<%--                    }--%>
<%--                }--%>
<%--            %>--%>
<%--        </div>--%>

<%--        <% if (users != null && users.size() > 1) { %>--%>
<%--        <h3>所有注册用户:</h3>--%>
<%--        <div class="all-users">--%>
<%--            <%--%>
<%--                for (Users user : users) {--%>
<%--                    String userUsername = user.getUsername();--%>
<%--                    if (!userUsername.equals(username)) {--%>
<%--                        boolean isOnline = (onlineUsers != null && onlineUsers.contains(userUsername));--%>
<%--            %>--%>
<%--            <div class="user-item <%= isOnline ? "online" : "offline" %>">--%>
<%--                <%= userUsername %>--%>
<%--                <span class="status <%= isOnline ? "online-status" : "offline-status" %>">--%>
<%--                    <%= isOnline ? "● 在线" : "○ 离线" %>--%>
<%--                </span>--%>
<%--            </div>--%>
<%--            <%--%>
<%--                    }--%>
<%--                }--%>
<%--            %>--%>
<%--        </div>--%>
<%--        <% } %>--%>
<%--    </div>--%>

<%--    <div class="chat-area">--%>
<%--        <%--%>
<%--            if (username2selected != null && !username2selected.trim().isEmpty()) {--%>
<%--                // 检查目标用户是否在线--%>
<%--                boolean targetUserOnline = (onlineUsers != null && onlineUsers.contains(username2selected));--%>

<%--                if(!targetUserOnline) {--%>
<%--        %>--%>
<%--        <div class="warning">--%>
<%--            <h2>用户 <%= username2selected %> 当前不在线</h2>--%>
<%--            <p>您可以发送消息，但对方需要上线后才能看到</p>--%>
<%--            <p><a href="private-chat.jsp">返回在线用户列表</a></p>--%>
<%--        </div>--%>
<%--        <%--%>
<%--        } else {--%>
<%--        %>--%>
<%--        <h2>与 <strong><%= username2selected %></strong> 的私聊记录:</h2>--%>
<%--        <div id="private-chat-history" class="chat-history private-chat">--%>
<%--            <%--%>
<%--                boolean hasPrivateMessages = false;--%>
<%--                for (Message mes : allMessages) {--%>
<%--                    if (!mes.isBroadcast()) {--%>
<%--                        // 检查是否是当前对话的消息（双向）--%>
<%--                        boolean isCurrentConversation =--%>
<%--                                (mes.getUsername1().equals(username) && mes.getUsername2().equals(username2selected)) ||--%>
<%--                                        (mes.getUsername1().equals(username2selected) && mes.getUsername2().equals(username));--%>

<%--                        if (isCurrentConversation) {--%>
<%--                            hasPrivateMessages = true;--%>
<%--                            boolean isSentByMe = mes.getUsername1().equals(username);--%>
<%--            %>--%>
<%--            <div class="message <%= isSentByMe ? "sent" : "received" %>">--%>
<%--                <div class="message-header">--%>
<%--                    <strong><%= mes.getUsername1() %>:</strong>--%>
<%--                    <span class="timestamp"><%= mes.getTimestamp() %></span>--%>
<%--                </div>--%>
<%--                <div class="message-content"><%= mes.getContent() %></div>--%>
<%--            </div>--%>
<%--            <%--%>
<%--                        }--%>
<%--                    }--%>
<%--                }--%>

<%--                if (!hasPrivateMessages) {--%>
<%--            %>--%>
<%--            <p>还没有与 <%= username2selected %> 的聊天记录，开始对话吧！</p>--%>
<%--            <%--%>
<%--                }--%>
<%--            %>--%>
<%--        </div>--%>

<%--        <form action="chat-servlet" method="post" class="private-chat-form">--%>
<%--            <input type="hidden" name="chatType" value="private">--%>
<%--            <input type="hidden" name="username2" value="<%= username2selected %>">--%>

<%--            <h3>发送私聊消息给 <%= username2selected %>:</h3>--%>
<%--            <textarea name="message" rows="4" cols="50" required--%>
<%--                      placeholder="发送给 <%= username2selected %> 的私聊消息..."></textarea>--%>
<%--            <br>--%>
<%--            <input type="submit" value="发送私聊消息">--%>
<%--        </form>--%>
<%--        <%--%>
<%--            }--%>
<%--        } else {--%>
<%--        %>--%>
<%--        <div class="no-user-selected">--%>
<%--            <h2>请选择聊天用户</h2>--%>
<%--            <p>从左侧在线用户列表中选择一个用户开始私聊</p>--%>
<%--            <p>私聊消息只有您和对方可见</p>--%>
<%--            <p><strong>提示：</strong>只能与在线用户进行实时私聊</p>--%>
<%--        </div>--%>
<%--        <%--%>
<%--            }--%>
<%--        %>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<script>--%>
<%--    // 页面加载完成后自动滚动到底部--%>
<%--    document.addEventListener('DOMContentLoaded', function() {--%>
<%--        const chatHistory = document.getElementById('private-chat-history');--%>
<%--        if (chatHistory) {--%>
<%--            chatHistory.scrollTop = chatHistory.scrollHeight;--%>
<%--        }--%>
<%--    });--%>

<%--    // 定期刷新在线用户（每30秒）--%>
<%--    setTimeout(function() {--%>
<%--        window.location.reload();--%>
<%--    }, 30000);--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="chat.css">

<!DOCTYPE html>
<html>
<head>
    <title>私聊室</title>
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
            const chatHistory = document.getElementById('private-chat-history');
            if (chatHistory) {
                chatHistory.scrollTop = chatHistory.scrollHeight;
            }

            // 聚焦到输入框
            const messageInput = document.getElementById('message-input');
            if (messageInput && !messageInput.disabled) {
                messageInput.focus();
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

<!-- 获取当前选中的私聊用户 -->
<c:set var="username2selected" value="${param.username2}" />

<!-- 获取应用数据 -->
<c:set var="allMessages" value="${applicationScope.messages}" />
<c:if test="${empty allMessages}">
    <c:set var="allMessages" value="${[]}" scope="page" />
</c:if>

<c:set var="users" value="${applicationScope.users}" />
<c:set var="onlineUsers" value="${applicationScope.onlineUsers}" />
<c:set var="onlineCount" value="${not empty onlineUsers ? onlineUsers.size() : 0}" />
<c:set var="currentUser" value="${sessionScope.username}" />

<h1>私聊室</h1>
<div class="user-info">
    <p>当前用户: <strong>${currentUser}</strong> |
        在线用户: <strong>${onlineCount}</strong> 人</p>
</div>

<!-- 聊天模式切换表单 -->
<form id="switchForm" action="chat-servlet" method="get">
    <input type="hidden" name="action" value="switchMode" />
    <div class="chat-mode-selector">
        <label for="chatType">聊天模式:</label>
        <select name="chatType" id="chatType" onchange="switchChatMode()">
            <option value="group">群聊（所有人）</option>
            <option value="private" selected>私聊</option>
        </select>

        <label for="username2">选择私聊用户:</label>
        <select name="username2" id="username2" onchange="switchChatMode()">
            <option value="">-- 选择用户 --</option>
            <c:if test="${not empty users}">
                <c:forEach var="user" items="${users}">
                    <c:if test="${user.username ne currentUser}">
                        <option value="${user.username}"
                            ${username2selected eq user.username ? 'selected' : ''}>
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

<%--<div class="chat-container">--%>
<%--    <div class="user-list">--%>
<%--        <h2>在线用户（可私聊）:</h2>--%>
<%--        <div class="user-buttons">--%>
<%--            <c:if test="${not empty onlineUsers}">--%>
<%--                <c:forEach var="onlineUser" items="${onlineUsers}">--%>
<%--                    <c:if test="${onlineUser ne currentUser}">--%>
<%--                        <a href="private-chat.jsp?username2=${onlineUser}"--%>
<%--                           class="user-button ${username2selected eq onlineUser ? 'active' : ''}">--%>
<%--                                ${onlineUser}<br>--%>
<%--                            <span class="online-status">在线 ●</span>--%>
<%--                        </a>--%>
<%--                    </c:if>--%>
<%--                </c:forEach>--%>
<%--            </c:if>--%>
<%--        </div>--%>
<%--    </div>--%>

    <div class="chat-area">
        <c:choose>
            <c:when test="${not empty username2selected}">
                <!-- 检查目标用户是否在线 -->
                <c:set var="targetUserOnline"
                       value="${onlineUsers.contains(username2selected)}" />

                <c:if test="${not targetUserOnline}">
                    <div class="warning">
                        <h2>用户 ${username2selected} 当前不在线</h2>
                        <p>您可以发送消息，但对方需要上线后才能看到</p>
                    </div>
                </c:if>

                <h2>与 <strong>${username2selected}</strong> 的私聊记录:</h2>
                <div id="private-chat-history" class="chat-history private-chat">
                    <c:set var="hasPrivateMessages" value="false" />
                    <c:forEach var="mes" items="${allMessages}">
                        <c:if test="${not mes.broadcast}">
                            <c:if test="${(mes.username1 eq currentUser and mes.username2 eq username2selected) or
                                         (mes.username1 eq username2selected and mes.username2 eq currentUser)}">
                                <c:set var="hasPrivateMessages" value="true" />
                                <div class="message ${mes.username1 eq currentUser ? 'sent' : 'received'}">
                                    <div class="message-header">
                                        <strong>${mes.username1}:</strong>
                                        <span class="timestamp">${mes.timestamp}</span>
                                    </div>
                                    <div class="message-content">${mes.content}</div>
                                </div>
                            </c:if>
                        </c:if>
                    </c:forEach>
                    <c:if test="${not hasPrivateMessages}">
                        <p>还没有与 ${username2selected} 的聊天记录，开始对话吧！</p>
                    </c:if>
                </div>

                <form action="chat-servlet" method="post" class="private-chat-form">
                    <input type="hidden" name="chatType" value="private">
                    <input type="hidden" name="username2" value="${username2selected}">

                    <h3>发送私聊消息给 ${username2selected}:</h3>
                    <textarea name="message" rows="4" cols="50" id="message-input" required
                              placeholder="发送给 ${username2selected} 的私聊消息..."></textarea>
                    <br>
                    <input type="submit" value="发送私聊消息">
                </form>
            </c:when>
            <c:otherwise>
                <div class="no-user-selected">
                    <h2>请选择聊天用户</h2>
                    <p>从左侧在线用户列表或上方的下拉框中选择一个用户开始私聊</p>
                    <p>私聊消息只有您和对方可见</p>
                    <p><strong>提示：</strong>只能与在线用户进行实时私聊</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>
</body>
</html>