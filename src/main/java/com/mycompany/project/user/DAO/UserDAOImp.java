package com.mycompany.project.user.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.mycompany.project.user.vo.UserVO;

@Repository("userDAO")
public class UserDAOImp implements UserDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	public UserDAOImp() {
		
	}

	@Override
	public List selectAllUserList() throws DataAccessException {
		List<UserVO> usersList = null;
		usersList = sqlSession.selectList("mapper.user.selectAllUserList");
		return usersList;
	}

	@Override
	public int insertUser(UserVO userVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.user.insertUser", userVO);
		return result;
	}

	@Override
	public int deleteUser(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.user.deleteUser", id);
		return result;
	}

	@Override
	public UserVO loginById(UserVO userVO) throws DataAccessException {
		UserVO vo = sqlSession.selectOne("mapper.user.loginById", userVO);
		return vo;
	}

	@Override
	public int updateUser(UserVO userVO) throws DataAccessException {
		int result = sqlSession.update("mapper.user.updateUser", userVO);
		return result;
	}
	
}
