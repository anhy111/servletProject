package kr.or.ddit.app.qna.controller;

import java.io.IOException;  

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.qna.service.IQnaService;
import kr.or.ddit.app.qna.service.QnaServiceImpl;
import kr.or.ddit.app.qna.vo.QnaVO;

@WebServlet("/qna/qnaDetail.do")
public class DetailQnaController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String qnaNo = req.getParameter("qnaNo");
		
		IQnaService qnaService = QnaServiceImpl.getInstance();
		QnaVO qnaVO = qnaService.getQna(qnaNo);
		
		req.setAttribute("qnaVO", qnaVO);
		
		req.getRequestDispatcher("/qna/qnaDetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
