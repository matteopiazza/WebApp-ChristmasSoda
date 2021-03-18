

import java.util.ArrayList;
import java.util.List;

public class UserAccount
{
    public static final String FACULTY_I = "ITEC";
    public static final String FACULTY_H = "HUMA";

    private String userName;
    private String faculty;
    private String password;
    private String fullName;

    private List<String> userType;

    public UserAccount()
    {

    }

    public UserAccount(String userName, String password, String faculty,
        String fullName, String... userType) {

        this.userName = userName;
        this.password = password;
        this.faculty = faculty;
        this.fullName = fullName;
 
        this.userType = new ArrayList<String>();
        if (userType != null)
        {
            for (String ut : userType)
            {
                this.userType.add(ut);
            }
        }
    }

    public String getUserName()
    {
        return userName;
    }

    public void setUserName(String userName)
    {
        this.userName = userName;
    }
    
    public String getFaculty()
    {
        return faculty;
    }
    
    public void setFaculty(String faculty)
    {
        this.faculty = faculty;
    }
    
    public String getPassword()
    {
        return password;
    }
    
    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getFullName()
    {
        return fullName;
    }

    public void setFullName(String fullName)
    {
        this.fullName = fullName;
    }
    
    public List<String> getUserTypes()
    {
        return userType;
    }
    
    public void setUserTypes(List<String> userType)
    {
        this.userType = userType;
    }
}
