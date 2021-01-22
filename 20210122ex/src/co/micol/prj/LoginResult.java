package co.micol.prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginResult
 */
@WebServlet("/LoginResult")
public class LoginResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String message = null;
		
		if(id.equals("hong") && pw.equals("1234")) {
			message = "님 환영합니다.";
		} else {
			message = "님 아이디 또는 패스워드가 틀려요.";
		}
		
		request.setAttribute("msg", message);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/member/loginResult.jsp");
		dispatcher.forward(request, response);
//		response.sendRedirect("jsp/member/loginResult.jsp");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
