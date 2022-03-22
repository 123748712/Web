package kr.or.ddit.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.prod.service.ProdServiceImpl;
import kr.or.ddit.prod.vo.ProdVO;

/**
 * Servlet implementation class ProdController
 */
@WebServlet("/Prod.do")
public class ProdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//0. 요청데이터 받음
		String gu = request.getParameter("gu");
		//1. service 객체 얻기
		ProdServiceImpl service = ProdServiceImpl.getService();
		//2. service 메소드 호출해서 결과 받기
		List<ProdVO> list = service.prodNames(gu);
		// 결과에 대한 표현(view)은 jsp에 위임하기 위해-
		//3. 결과 값을 request에 저장
		request.setAttribute("listValue", list);
		//4. jsp로 request 포워딩
		RequestDispatcher disp 
			= request.getRequestDispatcher("0224/prodNames.jsp");
		disp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 여기로 넘어오는 요청데이터로 상세정보를 조회하도록 하세요
		String id = request.getParameter("pId");
		// service객체 얻기
		ProdServiceImpl service = ProdServiceImpl.getService();
		// service객체로 메소드 호출하여 값 얻기
		ProdVO vo = service.prodDetails(id);
		request.setAttribute("voValue", vo);
		// request에 담아서 jsp로 값을 위임
		request.getRequestDispatcher("0224/prodDetails.jsp")
				.forward(request, response);
	}

}










