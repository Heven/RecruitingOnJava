package com.xjtu.dao;

import com.xjtu.domain.User;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.transaction.TransactionConfiguration;

import static org.junit.Assert.assertEquals;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
@TransactionConfiguration(defaultRollback = false)
public class UserDaoTest extends AbstractTransactionalJUnit4SpringContextTests {

    @Autowired
    private UserDao userDao;

    @Before
    public void setup(){
        userDao.deleteAll();
    }

    @Test
    public void should_add_user_succeed() throws Exception {

        User user = new User("ZhouCong", "xjtu" ,"15155555" , "xutu@qq" , "software");
        userDao.save(user);

        User savedUser = userDao.all().get(0);
        assertEquals("ZhouCong", savedUser.getName());
        assertEquals("xjtu", savedUser.getUniversity());
        assertEquals("15155555" , savedUser.getPhone());
        assertEquals("xutu@qq", savedUser.getEmail());
        assertEquals("software" , savedUser.getMajor());
    }

}
