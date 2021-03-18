import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/**
 * An extension for the HTTPServletRequest that overrides the getUserPrincipal()
 * and isUserInType(). We supply these implementations here, where they are not
 * normally populated unless we are going through the facility provided by the
 * container.
 * <p>
 * If he user or userTypes are null on this wrapper, the parent request is consulted
 * to try to fetch what ever the container has set for us. This is intended to
 * be created and used by the UsertypeFilter.
 *
 */
public class UserTypeRequestWrapper extends HttpServletRequestWrapper
{

    private String user;
    private List<String> userTypes = null;
    private HttpServletRequest realRequest;

    public UserTypeRequestWrapper(String user, List<String> userTypes, HttpServletRequest request)
    {
        super(request);
        this.user = user;
        this.userTypes = userTypes;
        this.realRequest = request;
    }

    @Override
    public boolean isUserInRole(String type)
    {
        if (type == null)
        {
            return this.realRequest.isUserInRole(type);
        }
        return userTypes.contains(type);
    }

    @Override
    public Principal getUserPrincipal()
    {
        if (this.user == null)
        {
            return realRequest.getUserPrincipal();
        }

        // Make an anonymous implementation to just return our user
        return new Principal()
        {
            @Override
            public String getName()
            {
                return user;
            }
        };
    }
}
