import java.util.HashMap;
import java.util.Map;

public class DataDAO
{

    private static final Map<String, UserAccount> mapUsers = new HashMap<String,
        UserAccount>();

    static
    {
        initUsers();
    }

    private static void initUsers()
    {

        // This user has a role as STUDENT.
        UserAccount stu = new UserAccount("msmith", "hello123", UserAccount.FACULTY_H,
            "Mike Smith", SecurSetup.ROLE_STUDENT);

        // This user has 2 roles STUDENT and FACULTY.
        UserAccount fac = new UserAccount("jhuang", "admin456", UserAccount.FACULTY_I,
            "Jimmy Huang", SecurSetup.ROLE_STUDENT, SecurSetup.ROLE_FACULTY);

        mapUsers.put(stu.getUserName(), stu);
        mapUsers.put(fac.getUserName(), fac);
    }

    // Find a User by userName and password.
    public static UserAccount findUser(String userName, String password)
    {
        UserAccount ua = mapUsers.get(userName);

        // If ua is not null and password correct, return ua
        if (ua != null && ua.getPassword().equals(password))
        {
            return ua;
        }

        return null;
    }
}
