package com.mycompany.project.user.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.mycompany.project.user.vo.UserVO;

public interface UserService {
	
	public List listUsers() throws DataAccessException;
	 public int addUser(UserVO userVO) throws DataAccessException;
	 public int removeUser(String id) throws DataAccessException;
	 public UserVO login(UserVO userVO) throws Exception;
	 public int modUser(UserVO userVO) throws DataAccessException;
}
