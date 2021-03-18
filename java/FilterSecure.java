

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class FilterSecure implements Filter
{

    public FilterSecure()
    {
      }

    @Override
    public void destroy()
    {
      }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
          throws IOException, ServletException
    {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0);
        
        String servletPath = request.getServletPath();
        
        // User information stored in the Session.
        // (After successful login).
        UserAccount loginedUser = ApplicationUtility.getLoginedUser(request.getSession());

        if (servletPath.equals("/login"))
        {
            chain.doFilter(request, response);
            return;
        }
        HttpServletRequest wrapRequest = request;

        if (loginedUser != null)
        {
            // User Name
            String userName = loginedUser.getUserName();

            // User Type
            List<String> userTypes = loginedUser.getUserTypes();

            // Wrap old request by a new Request with userName and Roles information.
            wrapRequest = new UserTypeRequestWrapper(userName, userTypes, request);
        }

        // Pages must be signed in.
        if (SecurUtility.isSecurityPage(request))
        {

            // If the user is not logged in,
            // Redirect to the login page.
            if (loginedUser == null)
            {

                String requestUri = request.getRequestURI();

                // Store the current page to redirect to after successful login.
                int redirectId = ApplicationUtility.storeRedirectAfterLoginUrl(request.getSession(), requestUri);

                response.sendRedirect(wrapRequest.getContextPath() + "/login?redirectId=" + redirectId);
                return;
            }

            // Check if the user has a valid role?
            boolean hasPermission = SecurUtility.hasPermission(wrapRequest);
            if (!hasPermission)
            {

                RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/accessDeniedPage.jsp");

                dispatcher.forward(request, response);
                return;
            }
        }
       
        chain.doFilter(wrapRequest, response);
    }

    @Override
    public void init(FilterConfig fConfig) throws ServletException
    {

    }

}
