import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

public class SecurUtility
{

    // Check whether this 'request' is required to login or not.
    public static boolean isSecurityPage(HttpServletRequest request)
    {
        String urlPattern = UrlPattern.getUrlPattern(request);

        Set<String> uTypes = SecurSetup.getAllAppTypes();

        for (String uType : uTypes)
        {
            List<String> urlPatterns = SecurSetup.getUrlPatternsForType(uType);

            if (urlPatterns != null && urlPatterns.contains(urlPattern))
            {
                return true;
            }
        }
        return false;
    }

    // Check if this 'request' has a 'valid type'?
    public static boolean hasPermission(HttpServletRequest request)
    {
        String urlPattern = UrlPattern.getUrlPattern(request);

        Set<String> allTypes = SecurSetup.getAllAppTypes();

        for (String type : allTypes)
        {
            if (!request.isUserInRole(type))
            {
                continue;
            }

            List<String> urlPatterns = SecurSetup.getUrlPatternsForType(type);

            if (urlPatterns != null && urlPatterns.contains(urlPattern))
            {
                return true;
            }
        }
        return false;
    }
}
