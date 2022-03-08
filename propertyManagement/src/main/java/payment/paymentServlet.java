package payment;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/paymentServlet")
public class paymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paymentmethod = request.getParameter("method");
		String cardholdername =  request.getParameter("cardholder");
		String cardnumber = request.getParameter("cardno");
		String validthru = request.getParameter("validthru");
		
		boolean isTrue;
		
		isTrue = paymentDBUtil.insertpayment(paymentmethod, cardholdername, cardnumber, validthru);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("paysuccess.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("payunsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
