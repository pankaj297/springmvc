package mvc.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.UserDao;
import mvc.model.User;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	@Transactional
	public int createUser(User user) {
		
		return this.userDao.saveUser(user);
		
		
	}
}
