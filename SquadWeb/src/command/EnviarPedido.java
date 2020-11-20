package command;

import java.io.IOException;
import java.text.ParseException;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class EnviarPedido implements Command {
	
	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String locO = request.getParameter("localOrigem");
		String locD = request.getParameter("localDestino");
		int i=0;
		final long sec=(1000);
		do {
		Timer timer= new Timer();
		TimerTask check = new TimerTask() {
			
			@Override
			public void run() {
				//check
				
			}
		};
		i++;
		}while(i!=5);
		//finaliza
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		view = request.getRequestDispatcher("Contador.jsp");
		view.forward(request, response);
	}
	
	
}