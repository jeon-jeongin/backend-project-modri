package com.mycompany.project.product.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.mycompany.project.product.vo.ProductVO;

public interface ProductService {

	public List<ProductVO> searchProducts(ProductVO vo) throws DataAccessException;
	public List<ProductVO> detailProducts(ProductVO vo) throws DataAccessException;
}
