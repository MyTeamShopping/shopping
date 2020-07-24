package cn.tedu.dao;

import java.util.List;

/**
 *   在以前的时候 创建各个dao接口    每个dao接口 大概 都有 增删 该查  的操作  
 *   比如增加操作 delete  update   将这些相同的操作  抽取出来   
 *     创建 一个公共的 IBaseDao     完成对数据的 基本操作   其它的dao接口 只需要继承 IbaseDao
 *     就具备了 对数据的基本操作   节省了大量的代码     
 *     不同dao类 操作的是不同的数据对象         IbaseDao 要完成对各种不同数据的对象处理  
 *     怎么做 泛型+ 反射 共同操作    
 *     在接口中使用了泛型  T   其它的接口 继承IbaseDao接口    就必须要指定具体的数据类型  
 *         五个方法   基本满足了 对数据的基本操作     如果不能满足  
 *         在具体的处理对象中 增加其它方法   
 *         
 * @author aaaa
 *
 */
public interface IbaseDao<T> {

	public void add(T t);
	 public void delete(int id);
	 public void update(T t);
	 public T load(int id);
	 
	 public List<T> list();
	
}
