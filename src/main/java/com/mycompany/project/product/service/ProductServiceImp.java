package com.mycompany.project.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.project.product.DAO.ProductDAO;
import com.mycompany.project.product.vo.ProductVO;

@Service("productService")
@Transactional(propagation = Propagation.REQUIRED)
public class ProductServiceImp implements ProductService{
	
	@Autowired
	private ProductDAO productDAO;
	
	public ProductServiceImp() {
	
	}

	@Override
	public List<ProductVO> searchProducts(ProductVO vo) throws DataAccessException {
		return productDAO.searchList(vo);
	}

	@Override
	public List<ProductVO> detailProducts(ProductVO vo) throws DataAccessException {
		return productDAO.detailsProductList(vo);
	}

}
