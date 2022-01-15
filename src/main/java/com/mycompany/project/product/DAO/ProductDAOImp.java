package com.mycompany.project.product.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.mycompany.project.product.vo.ProductVO;

@Repository("productDAO")
public class ProductDAOImp implements ProductDAO{

	@Autowired
	private SqlSession sqlsession;
	
	public ProductDAOImp() {
		
	}

	@Override
	public List<ProductVO> searchList(ProductVO vo) throws DataAccessException {
		return sqlsession.selectList("mapper.product.seachProduct", vo);
	}

	@Override
	public List<ProductVO> detailsProductList(ProductVO vo) throws DataAccessException {
		return sqlsession.selectList("mapper.product.detailsProductList", vo);
	}
	
}
