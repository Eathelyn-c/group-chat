<%--
  Created by IntelliJ IDEA.
  User: eathelyn
  Date: 2025/11/6
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ page import="java.util.*" %>--%>
<%--<%@ page import="com.boda.login.Message" %>--%>
<%--<%@ page import="com.boda.login.Users" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>聊天室</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<%--%>
<%--    String heading = (String) session.getAttribute("heading");--%>
<%--    String username = (String) session.getAttribute("username");--%>
<%--    if (username == null) {--%>
<%--        response.sendRedirect("index.jsp");--%>
<%--        return;--%>
<%--    }--%>
<%--    //获取表单中可能提交的目标用户名（username2）--%>
<%--    String username2selected = request.getParameter("username2");--%>
<%--    ArrayList<Message> message = (ArrayList<Message>) application.getAttribute("messages");--%>
<%--%>--%>

<%--<h1><%= heading != null ? heading : "欢迎来到聊天室" %></h1>--%>
<%--<p>当前用户: <strong><%= username %></strong></p>--%>
<%--<a href="index.jsp" >退出登录</a>--%>
<%--<h2>聊天记录:</h2>--%>
<%--<div id="chat-history">--%>
<%--<%--%>
<%--        //ServletContext messages = getServletContext();--%>
<%--        //ArrayList<Message> message = (ArrayList<Message>) application.getAttribute("messages");--%>
<%--        if (message == null) {--%>
<%--            message = new ArrayList<>();--%>
<%--        }--%>
<%--        for (Message mes : message) {--%>
<%--            if ((mes.getUsername1().equals(username) && mes.getUsername2().equals(username2selected)) ||--%>
<%--    (mes.getUsername1().equals(username2selected) && mes.getUsername2().equals(username))) {--%>
<%--    %>--%>
<%--    <p><strong><%= mes.getUsername1() %>:</strong> <%= mes.getContent() %></p>--%>
<%--    <%--%>
<%--            } else {--%>
<%--    %>--%>
<%--    <p></p>--%>
<%--    <%--%>
<%--            }--%>
<%--        }--%>
<%--%>--%>
<%--<form action="chat-servlet" method="post">--%>
<%--    <h2>选择用户:</h2>--%>
<%--&lt;%&ndash;   <select name="username2">&ndash;%&gt;--%>
<%--&lt;%&ndash;    &lt;%&ndash;%>--%>
<%--&lt;%&ndash;        //ServletContext context = getServletContext();&ndash;%&gt;--%>
<%--&lt;%&ndash;        ArrayList<Users> users = (ArrayList<Users>) application.getAttribute("users");&ndash;%&gt;--%>
<%--&lt;%&ndash;        for (Users user : users) {&ndash;%&gt;--%>
<%--&lt;%&ndash;            if (!user.getUsername().equals(username)) {&ndash;%&gt;--%>
<%--&lt;%&ndash;    %>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <option value="<%= user.getUsername() %>"><%= user.getUsername() %></option>&ndash;%&gt;--%>
<%--&lt;%&ndash;    &lt;%&ndash;%>--%>
<%--&lt;%&ndash;            }&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;    %>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </select>&ndash;%&gt;--%>
<%--    <select name="username2">--%>
<%--        <%--%>
<%--            ArrayList<Users> users = (ArrayList<Users>) application.getAttribute("users");--%>
<%--            for (Users user : users) {--%>
<%--                if (!user.getUsername().equals(username)) {--%>
<%--                    // 设置默认选中的用户--%>
<%--                    String selected = "";--%>
<%--                    if (username2selected != null && username2selected.equals(user.getUsername())) {--%>
<%--                        selected = "selected";--%>
<%--                    }--%>
<%--        %>--%>
<%--        <option value="<%= user.getUsername() %>" <%= selected %>><%= user.getUsername() %></option>--%>
<%--        <%--%>
<%--                }--%>
<%--            }--%>
<%--        %>--%>
<%--    </select>--%>
<%--    <h2>发送消息:</h2>--%>
<%--    <textarea name="message" rows="4" cols="50"></textarea>--%>
<%--    <input type="submit" value="发送">--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%--改版2--%>
<%--<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ page import="java.util.*" %>--%>
<%--<%@ page import="com.boda.login.Message" %>--%>
<%--<%@ page import="com.boda.login.Users" %>--%>
<%--<link rel="stylesheet" href="chat.css">--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>聊天室</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<%--%>
<%--    String heading = (String) session.getAttribute("heading");--%>
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

<%--<h1><%= heading != null ? heading : "欢迎来到聊天室" %></h1>--%>
<%--<p>当前用户: <strong><%= username %></strong></p>--%>
<%--<a href="index.jsp">退出登录</a>--%>

<%--<h2>聊天记录:</h2>--%>
<%--<div id="chat-history" class="chat-history">--%>
<%--    <%--%>
<%--        // 如果没有选择用户或没有消息，显示提示--%>
<%--        if (username2selected == null || username2selected.trim().isEmpty()) {--%>
<%--    %>--%>
<%--    <p>请选择一个用户开始聊天</p>--%>
<%--    <%--%>
<%--    } else {--%>
<%--        // 显示与选中用户的聊天记录--%>
<%--        boolean hasMessages = false;--%>
<%--        for (Message mes : allMessages) {--%>
<%--            // 检查是否是当前对话的消息（双向）--%>
<%--            boolean isCurrentConversation =--%>
<%--                    (mes.getUsername1().equals(username) && mes.getUsername2().equals(username2selected)) ||--%>
<%--                            (mes.getUsername1().equals(username2selected) && mes.getUsername2().equals(username));--%>

<%--            if (isCurrentConversation) {--%>
<%--                hasMessages = true;--%>
<%--                boolean isSentByMe = mes.getUsername1().equals(username);--%>
<%--    %>--%>
<%--    <div class="message <%= isSentByMe ? "sent" : "received" %>">--%>
<%--        <strong><%= mes.getUsername1() %>:</strong> <%= mes.getContent() %>--%>
<%--    </div>--%>
<%--    <%--%>
<%--            }--%>
<%--        }--%>
<%--        // 如果没有消息，显示提示--%>

<%--        if (!hasMessages) {--%>
<%--    %>--%>
<%--    <p>还没有与 <%= username2selected %> 的聊天记录，开始对话吧！</p>--%>
<%--    <%--%>
<%--            }--%>
<%--        }--%>
<%--    %>--%>
<%--</div>--%>

<%--<form action="chat-servlet" method="post" id="chat-form">--%>
<%--    <h2>请选择用户:</h2>--%>
<%--    <select name="username2" id="user-selector">--%>
<%--        <option value="">-- 请选择用户 --</option>--%>
<%--        <%--%>
<%--            if (users != null) {--%>
<%--                for (Users user : users) {--%>
<%--                    if (!user.getUsername().equals(username)) {--%>
<%--                        String selected = "";--%>
<%--                        if (username2selected != null && username2selected.equals(user.getUsername())) {--%>
<%--                            selected = "selected";--%>
<%--                        }--%>
<%--        %>--%>
<%--        <option value="<%= user.getUsername() %>" <%= selected %>><%= user.getUsername() %></option>--%>
<%--        <%--%>
<%--                    }--%>
<%--                }--%>
<%--            }--%>
<%--        %>--%>
<%--    </select>--%>

<%--    <h2>发送消息:</h2>--%>
<%--    <textarea name="message" rows="4" cols="50" id="message-input"></textarea>--%>
<%--    <br>--%>
<%--    <input type="submit" value="发送">--%>
<%--</form>--%>
<%--<script src="chat.js"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%--改版3--%>
<%--<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<%@ page import="java.util.*" %>--%>
<%--<%@ page import="com.boda.login.Message" %>--%>
<%--<%@ page import="com.boda.login.Users" %>--%>
<%--<link rel="stylesheet" href="chat.css">--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>聊天室</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<%--%>
<%--    String heading = (String) session.getAttribute("heading");--%>
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

<%--<h1><%= heading != null ? heading : "欢迎来到聊天室" %></h1>--%>
<%--<p>当前用户: <strong><%= username %></strong></p>--%>
<%--<a href="index.jsp">退出登录</a>--%>

<%--<h2>聊天记录:</h2>--%>
<%--<div id="chat-history" class="chat-history">--%>
<%--    <%--%>
<%--        // 显示群发消息和私聊消息--%>
<%--        boolean hasMessages = false;--%>
<%--        for (Message mes : allMessages) {--%>
<%--            // 群发消息：所有人都能看到--%>
<%--            if (mes.isBroadcast()) {--%>
<%--                hasMessages = true;--%>
<%--                boolean isSentByMe = mes.getUsername1().equals(username);--%>
<%--    %>--%>
<%--    <div class="message broadcast <%= isSentByMe ? "sent" : "received" %>">--%>
<%--        <div class="message-header">--%>
<%--            <strong><%= mes.getUsername1() %> [群发]:</strong>--%>
<%--        </div>--%>
<%--        <div class="message-content"><%= mes.getContent() %></div>--%>
<%--    </div>--%>
<%--    <%--%>
<%--    }--%>
<%--    // 私聊消息：只显示与当前用户相关的--%>
<%--    else if (username2selected != null && !username2selected.trim().isEmpty()) {--%>
<%--        // 检查是否是当前对话的消息（双向）--%>
<%--        boolean isCurrentConversation =--%>
<%--                (mes.getUsername1().equals(username) && mes.getUsername2().equals(username2selected)) ||--%>
<%--                        (mes.getUsername1().equals(username2selected) && mes.getUsername2().equals(username));--%>

<%--        if (isCurrentConversation) {--%>
<%--            hasMessages = true;--%>
<%--            boolean isSentByMe = mes.getUsername1().equals(username);--%>
<%--    %>--%>
<%--    <div class="message private <%= isSentByMe ? "sent" : "received" %>">--%>
<%--        <div class="message-header">--%>
<%--            <strong><%= mes.getUsername1() %>:</strong>--%>
<%--        </div>--%>
<%--        <div class="message-content"><%= mes.getContent() %></div>--%>
<%--    </div>--%>
<%--    <%--%>
<%--                }--%>
<%--            }--%>
<%--        }--%>

<%--        // 如果没有消息，显示提示--%>
<%--        if (!hasMessages) {--%>
<%--            if (username2selected == null || username2selected.trim().isEmpty()) {--%>
<%--    %>--%>
<%--    <p>还没有群发消息，发送一条消息开始群聊吧！</p>--%>
<%--    <%--%>
<%--    } else {--%>
<%--    %>--%>
<%--    <p>还没有与 <%= username2selected %> 的聊天记录，开始对话吧！</p>--%>
<%--    <%--%>
<%--            }--%>
<%--        }--%>
<%--    %>--%>
<%--</div>--%>

<%--<form action="chat-servlet" method="post" id="chat-form">--%>
<%--    <h2>聊天模式:</h2>--%>
<%--    <div class="chat-mode">--%>
<%--        <label>--%>
<%--            <input type="radio" name="username2" value=""--%>
<%--                <%= (username2selected == null || username2selected.trim().isEmpty()) ? "checked" : "" %>--%>
<%--                   onchange="this.form.submit()"> 群发模式（所有人可见）--%>
<%--        </label>--%>
<%--        <label>--%>
<%--            <input type="radio" name="username2" value="private"--%>
<%--                <%= (username2selected != null && !username2selected.trim().isEmpty()) ? "checked" : "" %>--%>
<%--                   disabled> 私聊模式--%>
<%--        </label>--%>
<%--    </div>--%>

<%--    <h2>选择私聊用户:</h2>--%>
<%--    <select name="username2" id="user-selector" onchange="updateChatMode()">--%>
<%--        <option value="">-- 请选择用户进行私聊 --</option>--%>
<%--        <%--%>
<%--            if (users != null) {--%>
<%--                for (Users user : users) {--%>
<%--                    if (!user.getUsername().equals(username)) {--%>
<%--                        String selected = "";--%>
<%--                        if (username2selected != null && username2selected.equals(user.getUsername())) {--%>
<%--                            selected = "selected";--%>
<%--                        }--%>
<%--        %>--%>
<%--        <option value="<%= user.getUsername() %>" <%= selected %>><%= user.getUsername() %></option>--%>
<%--        <%--%>
<%--                    }--%>
<%--                }--%>
<%--            }--%>
<%--        %>--%>
<%--    </select>--%>

<%--    <h2>发送消息:</h2>--%>
<%--    <%--%>
<%--        String placeholder;--%>
<%--        if (username2selected == null || username2selected.trim().isEmpty()) {--%>
<%--            placeholder = "输入群发消息（所有用户可见）...";--%>
<%--        } else {--%>
<%--            placeholder = "发送给 " + username2selected + " 的私聊消息...";--%>
<%--        }--%>
<%--    %>--%>
<%--    <textarea name="message" rows="4" cols="50" id="message-input"--%>
<%--              placeholder="<%= placeholder %>" required></textarea>--%>
<%--    <br>--%>
<%--    <input type="submit" value="发送消息">--%>
<%--</form>--%>

<%--<script>--%>
<%--    function updateChatMode() {--%>
<%--        const selector = document.getElementById('user-selector');--%>
<%--        const privateRadio = document.querySelector('input[value="private"]');--%>
<%--        const broadcastRadio = document.querySelector('input[value=""]');--%>

<%--        if (selector.value === "") {--%>
<%--            broadcastRadio.checked = true;--%>
<%--        } else {--%>
<%--            privateRadio.checked = true;--%>
<%--        }--%>
<%--    }--%>

<%--    // 页面加载完成后设置初始状态--%>
<%--    document.addEventListener('DOMContentLoaded', function() {--%>
<%--        updateChatMode();--%>

<%--        // 自动滚动到聊天记录底部--%>
<%--        const chatHistory = document.getElementById('chat-history');--%>
<%--        if (chatHistory) {--%>
<%--            chatHistory.scrollTop = chatHistory.scrollHeight;--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="chat.css">

<!DOCTYPE html>
<html>
<head>
    <title>聊天室</title>
    <script>
        // 页面加载完成后执行
        function initPage() {
            // 滚动到底部
            const chatHistory = document.getElementById('chat-history');
            if (chatHistory) {
                chatHistory.scrollTop = chatHistory.scrollHeight;
            }

            // 如果选择了用户，聚焦到输入框
            const messageInput = document.getElementById('message-input');
            if (messageInput && !messageInput.disabled) {
                messageInput.focus();
            }
        }

        // 切换聊天模式
        function toggleChatMode() {
            const chatType = document.getElementById('chatType').value;
            const privateContainer = document.getElementById('private-user-container');
            const messageInput = document.getElementById('message-input');
            const submitButton = document.querySelector('input[type="submit"]');

            if (chatType === 'private') {
                privateContainer.style.display = 'block';
                // 检查是否已选择用户
                const username2 = document.getElementById('username2').value;
                if (username2) {
                    messageInput.disabled = false;
                    submitButton.disabled = false;
                    messageInput.placeholder = "发送给 " + username2 + " 的私聊消息...";
                } else {
                    messageInput.disabled = true;
                    submitButton.disabled = true;
                    messageInput.placeholder = "请先选择私聊用户...";
                }
            } else {
                privateContainer.style.display = 'none';
                // 如果是群聊，检查是否允许
                const allowGroupChat = ${not empty onlineUsers and onlineUsers.size() >= 2};
                if (!allowGroupChat) {
                    messageInput.disabled = true;
                    submitButton.disabled = true;
                    messageInput.placeholder = "群聊需要至少2人在线...";
                } else {
                    messageInput.disabled = false;
                    submitButton.disabled = false;
                    messageInput.placeholder = "输入群发消息（所有用户可见）...";
                }
            }
        }

        // 私聊用户选择变化时更新
        function updatePrivateChat() {
            const username2 = document.getElementById('username2').value;
            const messageInput = document.getElementById('message-input');
            const submitButton = document.querySelector('input[type="submit"]');

            if (username2) {
                messageInput.disabled = false;
                submitButton.disabled = false;
                messageInput.placeholder = "发送给 " + username2 + " 的私聊消息...";

                // 自动提交表单以刷新页面显示该用户的聊天记录
                if (document.getElementById('chatType').value === 'private') {
                    document.getElementById('refreshForm').submit();
                }
            } else {
                messageInput.disabled = true;
                submitButton.disabled = true;
                messageInput.placeholder = "请先选择私聊用户...";
            }
        }

        // 自动刷新页面（每30秒）
        setTimeout(function() {
            window.location.reload();
        }, 100000);
    </script>
</head>
<body onload="initPage()">
<!-- 检查用户是否登录 -->
<c:if test="${empty sessionScope.username}">
    <c:redirect url="index.jsp" />
</c:if>

<!-- 获取参数 -->
<c:set var="chatType" value="${param.chatType}" />
<c:if test="${empty chatType}">
    <c:set var="chatType" value="group" />
</c:if>
<c:set var="username2selected" value="${param.username2}" />

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

<!-- 用于刷新页面的表单 -->
<form id="refreshForm" method="get" style="display: none;">
    <input type="hidden" name="chatType" value="${chatType}" />
    <input type="hidden" name="username2" value="${username2selected}" />
</form>

<h1>聊天室</h1>
<div class="user-info">
    <p>当前用户: <strong>${currentUser}</strong> |
        在线用户: <strong>${onlineCount}</strong> 人</p>
    <c:if test="${chatType eq 'group' and not allowGroupChat}">
        <p style="color: orange; font-weight: bold;">
            ⚠️ 群聊需要至少2人在线（当前 ${onlineCount} 人）
        </p>
    </c:if>
</div>
<div class="navigation">
    <a href="index.jsp">退出登录</a>
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
    <h3>在线用户 (${onlineCount} 人):</h3>
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

<h2>聊天记录:</h2>
<div id="chat-history" class="chat-history">
    <c:choose>
        <c:when test="${chatType eq 'group'}">
            <!-- 群聊模式 -->
            <c:set var="hasGroupMessages" value="false" />
            <c:forEach var="mes" items="${allMessages}">
                <c:if test="${mes.broadcast}">
                    <c:set var="hasGroupMessages" value="true" />
                    <div class="message ${mes.username1 eq currentUser ? 'sent' : 'received'}">
                        <div class="message-header">
                            <strong>${mes.username1} [群发]:</strong>
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
        </c:when>

        <c:when test="${chatType eq 'private' and not empty username2selected}">
            <!-- 私聊模式 -->
            <c:set var="targetUserOnline" value="${onlineUsers.contains(username2selected)}" />
            <c:if test="${not targetUserOnline}">
                <div class="warning">
                    <h3>用户 ${username2selected} 当前不在线</h3>
                    <p>您可以发送消息，但对方需要上线后才能看到</p>
                </div>
            </c:if>

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
        </c:when>

        <c:otherwise>
            <p>请选择聊天模式并开始聊天</p>
        </c:otherwise>
    </c:choose>
</div>

<form action="chat-servlet" method="post" id="chat-form">
    <div class="chat-controls">
        <div class="chat-mode-selector">
            <label for="chatType">聊天模式:</label>
            <select name="chatType" id="chatType" onchange="toggleChatMode()">
                <option value="group" ${chatType eq 'group' ? 'selected' : ''}>群聊（所有人）</option>
                <option value="private" ${chatType eq 'private' ? 'selected' : ''}>私聊</option>
            </select>
        </div>

        <div id="private-user-container" style="${chatType eq 'private' ? '' : 'display:none;'}">
            <label for="username2">选择私聊用户:</label>
            <select name="username2" id="username2" onchange="updatePrivateChat()">
                <option value="">-- 请选择用户 --</option>
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
    </div>

    <div class="message-input">
        <h3>发送消息:</h3>
        <textarea name="message" rows="4" cols="50" id="message-input" required></textarea>
        <br>
        <input type="submit" value="发送消息" id="submit-button">
    </div>
</form>

<script>
    // 初始化页面时设置输入框状态
    document.addEventListener('DOMContentLoaded', function() {
        toggleChatMode();
    });
</script>
</body>
</html>