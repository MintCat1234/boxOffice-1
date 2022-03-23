package boxOffice.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.ReviewDao;
import boxOffice.model.Review;

public class ReviewWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		/* HttpSession session = request.getSession(); */

		String rvTitle = request.getParameter("rvTitle");
		String id = request.getParameter("id");
		String mvTitle = request.getParameter("mvTitle");
		int rvGrade = Integer.parseInt(request.getParameter("rvGrade"));
		String rvContent = request.getParameter("rvContent");
		
		Review review = new Review();



		review.setRvTitle(rvTitle);
		/* String id= (String)session.getAttribute("id"); */
		review.setId(id);
		review.setMvTitle(mvTitle);
		review.setRvGrade(rvGrade);
		review.setRvContent(rvContent);
		
		ReviewDao rd = ReviewDao.getInstance();
		int result = rd.insert(review);
		
		request.setAttribute("result", result);
		
		return "reviewWrite";
	}

}
