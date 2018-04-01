package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Hero;
import bean.HeroDAO;

public class HeroListServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Hero> heros = new HeroDAO().list();

		int a = 0;
		int b = 1;
		/*
		 * List<Hero> heros = new ArrayList<Hero>(); Hero hero = new Hero(); hero.name =
		 * "dd"; hero.id = 1; hero.hp = 100.5f; hero.damage = 122; heros.add(hero);
		 */
		/*
		 * for (Hero heross : heros) { System.out.println(heross.id + "  " +
		 * heross.damage); }
		 */
		request.setAttribute("heros", heros);
		request.getRequestDispatcher("listHero.jsp").forward(request, response);
	}
}
