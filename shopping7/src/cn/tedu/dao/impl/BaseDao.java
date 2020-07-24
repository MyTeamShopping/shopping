package cn.tedu.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cn.tedu.dao.IbaseDao;
/**
 *    在以往的mybatis 操作中 都是直接 通过字符串  寻找mapper文件中的相应的操作     现在是在   baseDao     
 *    
 *    不知道要操作哪个mapper 文件的         按照以往的编程习惯    mapper 文件个  实体接口 在同一个目录下      并且mapper 文件名和实体接口类型 也是一样的  
 *      因此可以使用泛型来获取可的名字  ，然后相应的方法  对应相应的操作      在本类     操作的是  泛型      不能直接使用  反射  
 *      因此 使用了专门的方法 来获取 泛型运行时的类    
 *         baseDao  就是基于   泛型的操作       目的为了让其他数据访问对象类继承    因此  BaseDao 类 不需要添加到  spring  容器中        mybatis的   
 *         SqlSessionFactory   注入     获取 session对象  
 *              用这种方式的操作     可以大大的提高  开发 效率        使用这种方式来完成  数据操作的话  有一个前提  
 *                  要求  mybatis中各映射文件 必须与实体类同名  并且要在  同一个  目录下      此项目左右 映射文件 都是基于这点来开发的   
 *                         约定大于 配置
 *                         
 * @author aaaa
 *
 * @param <T>
 */
public class BaseDao<T> implements IbaseDao<T> {
	//创建sqlsessionFactory 对象  
         private SqlSessionFactory sqlSessionFactory;
         @Resource
         public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory){
        	   this.sqlSessionFactory=sqlSessionFactory;
         }
           protected SqlSession openSession(){
        	   return sqlSessionFactory.openSession();
           }
         //   创建泛型运行时的类对象  
            private Class<?> clz;
            
       private Class<?> getClz(){
    	   if(clz==null){
    		   //表示返回此class所表示的实体类      直接超类  Type
    		   //然后将  type 类型  直接转换为ParameterizedType     
    		   //getActualTypeArguments  返回的是表示此类型实际参数的对象的数组     [0] 就是表示这个数组的第一个      
    		   //    获取超类 的泛型参数的实际类型  
    		     clz=(Class<?>)((ParameterizedType)this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    		 //  Type type1 = this.getClass().getGenericSuperclass();  
    		      //  之后将type 转换  ParameterizedType       
    		     //get
    		     
    	   }
    	   return clz;
       }  
       /**
        * 公共的数据添加方法 
        */
	@Override
	public void add(T t) {
		openSession().insert(getClz().getName()+".add",t);
	}
  /**
   * 公共的数据删除方法 
   */
	@Override
	public void delete(int id) {
		openSession().delete(getClz().getName()+".delete", id);
	}
    /**
     * 公共的数据的修改
     */
	@Override
	public void update(T t) {
	    openSession().update(getClz().getName()+".update", t);	
	}
     /**
      * 数据的单条查询方法
      */
	@Override
	public T load(int id) {
		
		return openSession().selectOne(getClz().getName()+".load", id);
	}
/**
 * 数据的多条查询  
 */
	@Override
	public List<T> list() {
		return openSession().selectList(getClz().getName()+".list");
	}

}
