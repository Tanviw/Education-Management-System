package com.servlet.student;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.CourseDao;
import com.javabeans.Course;
import com.javabeans.TeacherCourse;

/**
 * Servlet implementation class ShowChooseCorsServlet
 */
@WebServlet("/ShowChooseCorsServlet")
public class ShowChooseCorsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowChooseCorsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		long stuAccount= Long.parseLong((String) request.getSession().getAttribute("account"));
		CourseDao dao=new CourseDao();
        ArrayList<TeacherCourse> avacourseList=dao.findAllAvaCourse();
        ArrayList<TeacherCourse> selectedCorsList=dao.findSelectedCourse(stuAccount);
        request.getSession().setAttribute("avacourseList", avacourseList);//���ؿ�ѡ�γ���Ϣ�б�
        request.getSession().setAttribute("selectedCorsList", selectedCorsList);//����ѧ����ѡ�γ���Ϣ�б�
        response.sendRedirect("student.jsp");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}