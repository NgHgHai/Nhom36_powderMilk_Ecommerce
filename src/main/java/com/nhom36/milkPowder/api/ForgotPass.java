package com.nhom36.milkPowder.api;

import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.services.UserService;
import com.nhom36.milkPowder.util.MailHelper;
import com.nhom36.milkPowder.util.StringUtil;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;

@WebServlet(name = "ForgotPass", value = "/ForgotPass")
public class ForgotPass extends HttpServlet {
    RequestDispatcher rd;
    static UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        rd = request.getRequestDispatcher("/signIn_signUp_page/forgotPassword.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String resetPass = StringUtil.getIDWithLength(10);
        String email = (String) request.getAttribute("email");
        Boolean checkEmail = userService.checkEmail(email);
        if (checkEmail == true){
//           if(sendMail(email,resetPass))
//            request.setAttribute("mess", "Vui lòng kiểm tra mail, mật khẩu mới đã  được gửi tới");
//           else  request.setAttribute("mess", "gửi mail thất bại");
        }else {
            request.setAttribute("mess", "email không tồn tại");
        }
        doGet(request, response);
    }

//    private static boolean sendMail(String email, String resetPass) {
//        String result;
//        // Recipient's email ID needs to be mentioned.
//        String to = email;
//
//        // Sender's email ID needs to be mentioned
//        String from = "20130166@st.hcmuaf.edu.vn";
//
//        // Assuming you are sending email from localhost
//        String host = "localhost";
//
//        // Get system properties object
//        Properties properties = System.getProperties();
//
//        // Setup mail server
//        properties.setProperty("mail.smtp.host", host);
//
//        // Get the default Session object.
//        Session mailSession = Session.getDefaultInstance(properties);
//
//        try{
//            // Create a default MimeMessage object.
//            MimeMessage message = new MimeMessage(mailSession);
//            // Set From: header field of the header.
//            message.setFrom(new InternetAddress(from));
//            // Set To: header field of the header.
//            message.addRecipient(Message.RecipientType.TO,
//                    new InternetAddress(to));
//            // Set Subject: header field
//            message.setSubject("Reset Password!");
//
//            // Send the actual HTML message, as big as you like
//            message.setContent("<h1>Cài Đặc lại mật khẩu</h1>",
//                    resetPass );
//            // Send message
//            Transport.send(message);
//            User user = userService.findUserEmail(email);
//            user.setPassword(resetPass);
//            userService.update(user);
//            return true;
//        }catch (MessagingException mex) {
//            mex.printStackTrace();
//            return  false;
//        }
//    }

    public static void main(String[] args) throws MessagingException, IOException {
        String to = "hoanghailata@gmail.com";
        MailHelper.sendResetPassword(to,"123456");
//        System.out.println(sendMail(to, "12345678"));
    }
}
