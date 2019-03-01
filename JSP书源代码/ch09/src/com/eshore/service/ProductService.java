package com.eshore.service;

import java.util.List;

import com.eshore.dao.ProductDao;
import com.eshore.dao.ProductDaoImpl;
import com.eshore.db.DBConnection;
import com.eshore.pojo.Product;

public class ProductService implements ProductDao{
	private DBConnection dbconn = null; // 定义数据库连接类
	private ProductDao dao = null; // 声明DAO对象
	// 在构造方法中实例化数据库连接，同时实例化dao对象
	public ProductService() throws Exception { 
		this.dbconn = new DBConnection();
		this.dao = new ProductDaoImpl(this.dbconn.getConnection());// 实例化ProductDao的实现类
	}

	public boolean addProduct(Product product) throws Exception {
		boolean flag = false; // 标识
		try {
			if (this.dao.findByProductId(product.getProduct_id()) == null) {// 如果要插入的产品编号不存在
				flag = this.dao.addProduct(product);// 新增一条产品信息
			}
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		return flag;
	}

	public List<Product> findAll(String keyWord) throws Exception {
		List<Product> all = null; // 定义产品返回的集合
		try {
			all = this.dao.findAll(keyWord);// 调用实现方法
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		return all;
	}

	public Product findByProductId(String product_id) throws Exception {
		Product product = null;
		try {
			product = this.dao.findByProductId(product_id);
		} catch (Exception e) {
			throw e;
		} finally {
			this.dbconn.close();
		}
		return product;
	}

}
