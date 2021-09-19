package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class GpaServlet
 */
@WebServlet("/GpaServlet")
public class GpaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public GpaServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String grade1 = request.getParameterC("gradeOne"); 
		String grade2 = request.getParameterC("gradeTwo"); 
		String grade3 = request.getParameter("gradeThree");
				
		int credit= 12; 
		double gpa =((Double.parseDouble(grade1)*credit)+
		(Double.parseDouble(grade2)*credit)+ 
		(Double.parseDouble(grade3)*credit))/36;
		
		HttpSession session= request. getSession(true);
		Student student= (Student)session.getAttribute("student");
		student.setGpa(gpa);
		
		session.setAttribute("student", student);
		RequestDispatcher rs = request.getRequestDispatcher("account.jsp");
		rs.forward(request,response); 

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
