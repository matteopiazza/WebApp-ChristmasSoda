

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginSrvlt extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    public LoginSrvlt()
    {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {

        RequestDispatcher dispatcher = this.getServletContext()
            .getRequestDispatcher("/loginPage.jsp");

        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        UserAccount userAccount = DataDAO.findUser(userName, password);

        if (userAccount == null)
        {
            String errorMsg = "Invalid userName or Password";

            request.setAttribute("errorMsg", errorMsg);

            RequestDispatcher dispatcher = this.getServletContext()
                .getRequestDispatcher("/loginPage.jsp");

            dispatcher.forward(request, response);
            return;
        }

        ApplicationUtility.storeLoginedUser(request.getSession(), userAccount);

        //
        int redirectId = -1;
        try
        {
            redirectId = Integer.parseInt(request.getParameter("redirectId"));
        } catch (Exception e)
        {
          }

        String requestUri = ApplicationUtility.getRedirectAfterLoginUrl(request.getSession(), redirectId);
        if (requestUri != null)
        {
            response.sendRedirect(requestUri);
        } else
        {
            // Default after successful login
            // redirect to /userInfo page
            response.sendRedirect(request.getContextPath() + "/userInfo");
        }

    }

}
