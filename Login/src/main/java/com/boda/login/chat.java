//package com.boda.login;
//
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.ServletContext;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//import java.net.URLEncoder;
//import java.util.ArrayList;
//import java.util.HashSet;
//
//@WebServlet("/chat-servlet")
//public class chat extends HttpServlet {
//    public void doPost(HttpServletRequest request,
//                       HttpServletResponse response)
//            throws IOException, ServletException {
//        response.setContentType("text/html");
//
//        HttpSession session = request.getSession();
//        String username1 = (String) session.getAttribute("username");
//        String username2 = request.getParameter("username2");
//        String content = request.getParameter("message");
//
//        if(username1!=null&&username2!=null&&username2!=username1){
//
//            ServletContext message = getServletContext();
//
//           ArrayList<Message> messages=(ArrayList<Message>) message.getAttribute("messages");
//            // 如果消息列表不存在，创建新的
//            if (messages == null) {
//                messages = new ArrayList<>();
//            }
//            messages.add(new Message(username1,username2,content));
//
//            message.setAttribute("messages",messages);
//        }
//        //RequestDispatcher rd = request.getRequestDispatcher("chat.jsp");
//        //rd.forward(request, response);
//        // 重定向回聊天页面，保持选择的用户
//        response.sendRedirect("chat.jsp?username2=" + URLEncoder.encode(username2, "UTF-8"));
//    }
//}



//package com.boda.login;
//
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.ServletContext;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//import java.net.URLEncoder;
//import java.util.ArrayList;
//
//@WebServlet("/chat-servlet")
//public class chat extends HttpServlet {
//    public void doPost(HttpServletRequest request,
//                       HttpServletResponse response)
//            throws IOException, ServletException {
//        response.setContentType("text/html");
//
//        HttpSession session = request.getSession();
//        String username1 = (String) session.getAttribute("username");
//        String username2 = request.getParameter("username2");
//        String content = request.getParameter("message");
//        String chatType = request.getParameter("chatType"); // 新增：区分群聊和私聊
//
//        if(username1 != null && content != null && !content.trim().isEmpty()){
//            ServletContext context = getServletContext();
//            ArrayList<Message> messages = (ArrayList<Message>) context.getAttribute("messages");
//            // 如果消息列表不存在，创建新的
//            if (messages == null) {
//                messages = new ArrayList<>();
//            }
//
//            // 根据聊天类型存储消息
//            if ("private".equals(chatType) && username2 != null && !username2.trim().isEmpty() && !username2.equals(username1)) {
//                // 私聊消息
//                messages.add(new Message(username1, username2, content, false));
//            } else if ("group".equals(chatType)) {
//                // 群发消息
//                messages.add(new Message(username1, "ALL", content, true));
//            }
//
//            context.setAttribute("messages", messages);
//        }
//
//        // 根据聊天类型重定向到不同的页面
//        if ("private".equals(chatType)) {
//            response.sendRedirect("private-chat.jsp?username2=" + URLEncoder.encode(username2, "UTF-8"));
//        } else {
//            response.sendRedirect("group-chat.jsp");
//        }
//    }
//}
//package com.boda.login;
//
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.ServletContext;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//import java.net.URLEncoder;
//import java.util.ArrayList;
//import java.util.Set;
//
//@WebServlet("/chat-servlet")
//public class chat extends HttpServlet {
//    public void doPost(HttpServletRequest request,
//                       HttpServletResponse response)
//            throws IOException, ServletException {
//        response.setContentType("text/html");
//
//        HttpSession session = request.getSession();
//        String username1 = (String) session.getAttribute("username");
//        String username2 = request.getParameter("username2");
//        String content = request.getParameter("message");
//        String chatType = request.getParameter("chatType");
//
//        // 检查用户是否登录
//        if(username1 == null) {
//            response.sendRedirect("index.jsp");
//            return;
//        }
//
//        if(content != null && !content.trim().isEmpty()){
//            ServletContext context = getServletContext();
//            ArrayList<Message> messages = (ArrayList<Message>) context.getAttribute("messages");
//            // 如果消息列表不存在，创建新的
//            if (messages == null) {
//                messages = new ArrayList<>();
//            }
//
//            // 根据聊天类型存储消息
//            if ("private".equals(chatType) && username2 != null && !username2.trim().isEmpty() && !username2.equals(username1)) {
//                // 私聊消息
//                messages.add(new Message(username1, username2, content, false));
//                context.setAttribute("messages", messages);
//                response.sendRedirect("private-chat.jsp?username2=" + URLEncoder.encode(username2, "UTF-8"));
//            } else if ("group".equals(chatType)) {
//                // 检查在线用户数量
//                Set<String> onlineUsers = (Set<String>) context.getAttribute("onlineUsers");
//                if(onlineUsers == null || onlineUsers.size() < 2) {
//                    // 只有一个人在线，不允许群聊
//                    session.setAttribute("error", "群聊需要至少两个在线用户");
//                    response.sendRedirect("group-chat.jsp");
//                    return;
//                }
//
//                // 群发消息
//                messages.add(new Message(username1, "ALL", content, true));
//                context.setAttribute("messages", messages);
//                response.sendRedirect("group-chat.jsp");
//            }
//        } else {
//            // 消息为空，重定向回原页面
//            if ("private".equals(chatType)) {
//                response.sendRedirect("private-chat.jsp?username2=" + URLEncoder.encode(username2, "UTF-8"));
//            } else {
//                response.sendRedirect("group-chat.jsp");
//            }
//        }
//    }
//}
//package com.boda.login;
//
//import jakarta.servlet.ServletContext;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//import java.net.URLEncoder;
//import java.util.ArrayList;
//import java.util.Set;
//
//@WebServlet("/chat-servlet")
//public class chat extends HttpServlet {
//    public void doPost(HttpServletRequest request,
//                       HttpServletResponse response)
//            throws IOException, ServletException {
//        response.setContentType("text/html");
//
//        HttpSession session = request.getSession();
//        String username1 = (String) session.getAttribute("username");
//        String username2 = request.getParameter("username2");
//        String content = request.getParameter("message");
//        String chatType = request.getParameter("chatType");
//
//        // 检查用户是否登录
//        if(username1 == null) {
//            response.sendRedirect("index.jsp");
//            return;
//        }
//
//        // 检查消息是否为空
//        if(content == null || content.trim().isEmpty()) {
//            response.sendRedirect("chat.jsp?chatType=" + chatType +
//                    (username2 != null ? "&username2=" + URLEncoder.encode(username2, "UTF-8") : ""));
//            return;
//        }
//
//        ServletContext context = getServletContext();
//        ArrayList<Message> messages = (ArrayList<Message>) context.getAttribute("messages");
//        // 如果消息列表不存在，创建新的
//        if (messages == null) {
//            messages = new ArrayList<>();
//        }
//
//        // 根据聊天类型存储消息
//        if ("private".equals(chatType) && username2 != null && !username2.trim().isEmpty() && !username2.equals(username1)) {
//            // 私聊消息
//            messages.add(new Message(username1, username2, content, false));
//            context.setAttribute("messages", messages);
//            response.sendRedirect("chat.jsp?chatType=private&username2=" + URLEncoder.encode(username2, "UTF-8"));
//        } else if ("group".equals(chatType)) {
//            // 检查在线用户数量
//            Set<String> onlineUsers = (Set<String>) context.getAttribute("onlineUsers");
//            if(onlineUsers == null || onlineUsers.size() < 2) {
//                // 只有一个人在线，不允许群聊
//                session.setAttribute("error", "群聊需要至少两个在线用户");
//                response.sendRedirect("chat.jsp?chatType=group");
//                return;
//            }
//
//            // 群发消息
//            messages.add(new Message(username1, "ALL", content, true));
//            context.setAttribute("messages", messages);
//            response.sendRedirect("chat.jsp?chatType=group");
//        } else {
//            // 默认重定向到群聊
//            response.sendRedirect("chat.jsp?chatType=group");
//        }
//    }
//
//    // 添加GET方法处理页面加载
//    public void doGet(HttpServletRequest request,
//                      HttpServletResponse response)
//            throws IOException, ServletException {
//        // 转发到聊天页面，不需要额外处理
//        request.getRequestDispatcher("chat.jsp").forward(request, response);
//    }
//}
package com.boda.login;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Set;

@WebServlet("/chat-servlet")
public class chat extends HttpServlet {

    // 处理消息发送
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws IOException, ServletException {

        HttpSession session = request.getSession();
        String username1 = (String) session.getAttribute("username");
        String username2 = request.getParameter("username2");
        String content = request.getParameter("message");
        String chatType = request.getParameter("chatType");

        // 检查用户是否登录
        if(username1 == null) {
            response.sendRedirect("index.jsp");
            return;
        }

        // 检查消息是否为空
        if(content == null || content.trim().isEmpty()) {
            // 根据聊天类型重定向到相应页面
            if ("private".equals(chatType) && username2 != null && !username2.trim().isEmpty()) {
                response.sendRedirect("private-chat.jsp?username2=" +
                        URLEncoder.encode(username2, "UTF-8"));
            } else {
                response.sendRedirect("group-chat.jsp");
            }
            return;
        }

        ServletContext context = getServletContext();
        ArrayList<Message> messages = (ArrayList<Message>) context.getAttribute("messages");
        // 如果消息列表不存在，创建新的
        if (messages == null) {
            messages = new ArrayList<>();
        }

        // 根据聊天类型存储消息
        if ("private".equals(chatType) && username2 != null && !username2.trim().isEmpty() && !username2.equals(username1)) {
            // 私聊消息
            messages.add(new Message(username1, username2, content, false));
            context.setAttribute("messages", messages);
            response.sendRedirect("private-chat.jsp?username2=" +
                    URLEncoder.encode(username2, "UTF-8"));
        } else if ("group".equals(chatType)) {
            // 检查在线用户数量
            Set<String> onlineUsers = (Set<String>) context.getAttribute("onlineUsers");
            if(onlineUsers == null || onlineUsers.size() < 2) {
                // 只有一个人在线，不允许群聊
                session.setAttribute("error", "群聊需要至少两个在线用户");
                response.sendRedirect("group-chat.jsp");
                return;
            }

            // 群发消息
            messages.add(new Message(username1, "ALL", content, true));
            context.setAttribute("messages", messages);
            response.sendRedirect("group-chat.jsp");
        }
    }

    // 处理聊天模式切换
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws IOException, ServletException {

        String action = request.getParameter("action");

        if ("switchMode".equals(action)) {
            String chatType = request.getParameter("chatType");
            String username2 = request.getParameter("username2");

            if ("group".equals(chatType)) {
                // 切换到群聊
                response.sendRedirect("group-chat.jsp");
            } else if ("private".equals(chatType) && username2 != null && !username2.trim().isEmpty()) {
                // 切换到私聊
                response.sendRedirect("private-chat.jsp?username2=" +
                        URLEncoder.encode(username2, "UTF-8"));
            } else {
                // 默认跳转到群聊
                response.sendRedirect("group-chat.jsp");
            }
        }
    }
}