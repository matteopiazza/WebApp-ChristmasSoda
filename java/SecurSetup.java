

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SecurSetup
{

    public static final String ROLE_STUDENT = "STUDENT";
    public static final String ROLE_FACULTY = "FACULTY";

    // String: Role
    // List<String>: urlPatterns.
    private static final Map<String, List<String>> mapConfig = new HashMap<String, List<String>>();

    static
    {
        init();
    }

    private static void init()
    {
        // Configure For "STUDENT" Role.
        List<String> urlPatterns1 = new ArrayList<String>();

        urlPatterns1.add("/userInfo");
        urlPatterns1.add("/studentUpdates");

        mapConfig.put(ROLE_STUDENT, urlPatterns1);

        // Configure For "FACULTY" Role.
        List<String> urlPatterns2 = new ArrayList<String>();

        urlPatterns2.add("/userInfo");
        urlPatterns2.add("/facultyUpdates");

        mapConfig.put(ROLE_FACULTY, urlPatterns2);
    }

    public static Set<String> getAllAppTypes()
    {
        return mapConfig.keySet();
    }

    public static List<String> getUrlPatternsForType(String uType)
    {
        return mapConfig.get(uType);
    }

}
