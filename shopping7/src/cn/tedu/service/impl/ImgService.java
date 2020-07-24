package cn.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.tedu.dao.IImgDao;
import cn.tedu.model.Img;
import cn.tedu.service.IImgService;
@Service
public class ImgService implements IImgService {
       private IImgDao imgDao;
       @Resource
	public void setImgDao(IImgDao imgDao) {
		this.imgDao = imgDao;
	}

	@Override
	public void add(Img img) {
		   imgDao.add(img);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		imgDao.delete(id);
	}

	@Override
	public void update(Img img) {
		 imgDao.update(img);
	}

	@Override
	public Img load(int id) {
		 
		return  imgDao.load(id);
	}

	@Override
	public List<Img> list() {
		return imgDao.list();
	}

}
