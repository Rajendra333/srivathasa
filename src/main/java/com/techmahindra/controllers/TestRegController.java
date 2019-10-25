package com.techmahindra.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techmahindra.beans.TestRegBean;
import com.techmahindra.services.TestRegService;
import com.techmahindra.servicesfactory.ServicesFactory;

/**
 * Servlet implementation class TestRegController
 */
@WebServlet("/TestRegController")
public class TestRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=ISO-8859-1");
		PrintWriter out=response.getWriter();
		try{
			
			
			int tot_amount;
			int pid=Integer.parseInt(request.getParameter("product_id"));
			String pname=request.getParameter("product_name");
			String ptype=request.getParameter("product_type");
			String rdate = request.getParameter("reg_date");
			String tdate=request.getParameter("test_date");
			//int thr=Integer.parseInt(request.getParameter("hour"));
			//int tmin=Integer.parseInt(request.getParameter("min"));
			int amount=Integer.parseInt(request.getParameter("amount"));
			tot_amount=amount+200;
			HttpSession hs = request.getSession();
			hs.setAttribute("pi", pid);
			//hs.setAttribute("h",thr);
			//hs.setAttribute("tm", tmin);
			hs.setAttribute("a",tot_amount);
			hs.setAttribute("d",tdate);
			TestRegBean trb= new TestRegBean();
			trb.setproduct_id(pid);
			trb.setproduct_name(pname);
			trb.setReg_date(rdate);
			trb.setTest_date(tdate);
			trb.setproduct_type(ttype);
			//trb.setTest_hr(thr);
			//trb.setTest_min(tmin);
			trb.setAmount(amount);
			
			
			TestRegService trs1= ServicesFactory.getTestRegService();
			//try {
				trs1.insertDetails(trb);
				System.out.println("hello test reg");
			/*} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
			RequestDispatcher rd=request.getRequestDispatcher("payment.jsp");
			rd.forward(request, response);
		
		}
		catch(SQLException e)
		{
			RequestDispatcher rd=request.getRequestDispatcher("Productregredirect.jsp.jsp");
			rd.forward(request, response);
		}
		catch(Exception e)
		{
			RequestDispatcher rd=request.getRequestDispatcher("Productregredirect.jsp.jsp");
			rd.forward(request, response);
		}
	}
}
