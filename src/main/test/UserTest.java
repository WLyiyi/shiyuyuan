import com.syy.bean.User;
import com.syy.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class UserTest extends BaseTest {

    @Autowired
    UserService userService;
    @Test
    public void testInsert(){
        User user = userService.queryUserById(1);
        System.out.println(user);
    }
}
