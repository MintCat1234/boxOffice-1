package boxOffice.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.model.Review;

public class ReviewWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		Review review = new Review();
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		
		return "reviewWrite";
	}

}
