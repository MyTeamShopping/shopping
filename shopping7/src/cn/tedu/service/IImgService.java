package cn.tedu.service;

import java.util.List;

import cn.tedu.model.Img;

public interface IImgService {

	/**
	 * 添加
	 */
	public void add(Img img);
	public void delete(int id);
	public void update(Img img);
	public Img load(int id);
	public List<Img> list();
}
