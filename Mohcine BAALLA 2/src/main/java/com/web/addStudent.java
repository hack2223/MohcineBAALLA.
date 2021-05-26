package com.web;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.db.Student;
import com.util.db.GestionEtudiants;

/**
 * Servlet implementation class Create
 */
@WebServlet("/addStudent")
public class addStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	GestionEtudiants sm;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addStudent() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		sm = new GestionEtudiants();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String etat = "etudiant";

		Student s = null;
		if (!login.isEmpty() && !password.isEmpty() && !etat.isEmpty()) {
			HttpSession ss = request.getSession(false);
			Student student = (Student)ss.getAttribute("student");
			
			s = new Student(login, password, etat);
			sm.addStudent(s);
			if(s.getEtat().equalsIgnoreCase("admin")) {
				response.sendRedirect("studentHandling.jsp?res=succ");
			}else {
				
				response.sendRedirect("auth.jsp?res=succ");
			}
			
		} else {
			response.sendRedirect("createAccount.jsp?res=err");
		}

	}

}
