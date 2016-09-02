/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.java.servlet;

import com.java.dao.BookingDAO;
import com.java.dao.DAO;
import com.java.model.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Pinkesh
 */
@WebServlet("/controller")
public class Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = (String) request.getParameter("action");
        User user = (User) session.getAttribute("User");
        DAO dao = new DAO();
        String url;

        if (action == null) {
            response.setContentType("text/html;charset=UTF-8");
            if (user == null) {
                url = "login.jsp";
            } else {
                url = "main.jsp";
            }
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } else if ("login_pg".equalsIgnoreCase(action) && user == null) {
            response.setContentType("text/html;charset=UTF-8");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        } else if ("map".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            RequestDispatcher rd = request.getRequestDispatcher("map.jsp");
            rd.forward(request, response);
        } else if ("login".equalsIgnoreCase(action)) {
            if (user != null) {
                url = "main.jsp";
            } else {
                String email = String.valueOf(request.getParameter("email"));
                String password = String.valueOf(request.getParameter("password"));
                User loggedInUser = dao.getUser(email, password);
                if (loggedInUser != null) {
                    url = "main.jsp";
                    session.setAttribute("User", loggedInUser);
                } else {
                    request.setAttribute("msg", "Invalid username and/or password.");
                    url = "login.jsp";
                }
            }

            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } else if ("main".equalsIgnoreCase(action)) {
            response.setContentType("text/html;charset=UTF-8");
            if (user == null) {
                url = "login.jsp";
            } else {
                url = "main.jsp";
            }
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } else if ("sportsdetails".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            RequestDispatcher rd = request.getRequestDispatcher("sportsdetails.jsp");
            rd.forward(request, response);
        } else if ("location".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            String game = request.getParameter("sportId");
            log(game);
            session.setAttribute("Game", game);
            RequestDispatcher rd = request.getRequestDispatcher("location.jsp");
            rd.forward(request, response);
        } else if ("LocDetails".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            
            String Location_val = request.getParameter("location_val");
            log(Location_val);
            session.setAttribute("Location", Location_val);           
            
            RequestDispatcher rd = request.getRequestDispatcher("sacdetails.jsp");
            rd.forward(request, response);
        } else if ("court".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            String Court_Details = request.getParameter("court_det");
            log(Court_Details);
            session.setAttribute("Court", Court_Details); 
            RequestDispatcher rd = request.getRequestDispatcher("court.jsp");
            rd.forward(request, response);
        } else if ("confirmBooking_pg".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            
            String time_details = request.getParameter("time_det");
            String page_details = request.getParameter("location_val");
            log(time_details);
            session.setAttribute("TimeDetails", time_details); 
            session.setAttribute("PageDetails", page_details);
            
            RequestDispatcher rd = request.getRequestDispatcher("confirmBooking.jsp");
            rd.forward(request, response);
        } else if ("confirmBooking".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            
            
            String game = (String) session.getAttribute("Game");
            String location = (String) session.getAttribute("Location");
            String court = (String) session.getAttribute("Court");
            String time_det = (String) session.getAttribute("TimeDetails");
            
            BookingDAO booking = new BookingDAO();
            booking.book(1, game, location, court, time_det, session);
            
            RequestDispatcher rd = request.getRequestDispatcher("court1.jsp");
            rd.forward(request, response);
        } else if ("confirmBooking_eqp".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            request.setAttribute("msg", "Your booking is successfull..!!");
            RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
            rd.forward(request, response);
        } else if ("EquipmentInfo".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            RequestDispatcher rd = request.getRequestDispatcher("EquipmentInfo.jsp");
            rd.forward(request, response);
        } else if ("entertimedetails".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            RequestDispatcher rd = request.getRequestDispatcher("EnterTimeDetails.jsp");
            rd.forward(request, response);
        } else if ("rentdetails".equalsIgnoreCase(action) && user != null) {
            response.setContentType("text/html;charset=UTF-8");
            RequestDispatcher rd = request.getRequestDispatcher("rentdetails.jsp");
            rd.forward(request, response);
        } else if ("logout".equalsIgnoreCase(action)) {
            response.setContentType("text/html;charset=UTF-8");
            url = "login.jsp";
            session.invalidate();
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } else {
            response.setContentType("text/html;charset=UTF-8");
            if (user == null) {
                url = "login.jsp";
            } else {
                url = "main.jsp";
            }
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
