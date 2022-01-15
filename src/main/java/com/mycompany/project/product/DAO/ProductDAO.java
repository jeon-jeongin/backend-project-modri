package com.mycompany.project.product.DAO;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.mycompany.project.product.vo.ProductVO;

public interface ProductDAO {
	
	public List<ProductVO> searchList(ProductVO vo) throws DataAccessException;
	public List<ProductVO> detailsProductList(ProductVO vo) throws DataAccessException;
	
}
