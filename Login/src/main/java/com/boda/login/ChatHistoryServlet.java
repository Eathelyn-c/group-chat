//package com.boda.login;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.ArrayList;
//
//@WebServlet("/chat-history")
//public class ChatHistoryServlet extends HttpServlet {
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        response.setContentType("text/html;charset=UTF-8");
//        HttpSession session = request.getSession();
//        String username = (String) session.getAttribute("username");
//        String username2selected = request.getParameter("username2");
//
//        PrintWriter out = response.getWriter();
//
//        if (username == null) {
//            out.print("<p>请先登录</p>");
//            return;
//        }
//
//        if (username2selected == null || username2selected.trim().isEmpty()) {
//            out.print("<p>请选择一个用户开始聊天</p>");
//            return;
//        }
//
//        // 获取所有消息
//        ArrayList<Message> allMessages = (ArrayList<Message>) getServletContext().getAttribute("messages");
//
//        if (allMessages == null) {
//            allMessages = new ArrayList<>();
//        }
//
//        // 显示与选中用户的聊天记录
//        boolean hasMessages = false;
//        for (Message mes : allMessages) {
//            // 检查是否是当前对话的消息（双向）
//            boolean isCurrentConversation =
//                    (mes.getUsername1().equals(username) && mes.getUsername2().equals(username2selected)) ||
//                            (mes.getUsername1().equals(username2selected) && mes.getUsername2().equals(username));
//
//            if (isCurrentConversation) {
//                hasMessages = true;
//                boolean isSentByMe = mes.getUsername1().equals(username);
//                String messageClass = isSentByMe ? "sent" : "received";
//
//                out.print("<div class='message " + messageClass + "'>");
//                out.print("<strong>" + mes.getUsername1() + ":</strong> " + mes.getContent());
//                out.print("</div>");
//            }
//        }
//
//        if (!hasMessages) {
//            out.print("<p>还没有与 " + username2selected + " 的聊天记录，开始对话吧！</p>");
//        }
//    }
//}