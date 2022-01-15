package com.mycompany.project.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.project.user.DAO.UserDAO;
import com.mycompany.project.user.vo.UserVO;

@Service("userService")
@Transactional(propagation = Propagation.REQUIRED)
public class UserServiceImp implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	public UserServiceImp() {
		
	}

	@Override
	public List listUsers() throws DataAccessException {
		List usersList = null;
		usersList = userDAO.selectAllUserList();
		return usersList;
	}

	@Override
	public int addUser(UserVO userVO) throws DataAccessException {
		return userDAO.insertUser(userVO);
	}

	@Override
	public int removeUser(String id) throws DataAccessException {
		return userDAO.deleteUser(id);
	}

	@Override
	public UserVO login(UserVO userVO) throws Exception {
		return userDAO.loginById(userVO);
	}

	@Override
	public int modUser(UserVO userVO) throws DataAccessException {
		return userDAO.updateUser(userVO);
	}

}
