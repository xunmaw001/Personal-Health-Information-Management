package com.entity.view;

import com.entity.DiscussjiankangzhishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 健康知识评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-22 16:52:01
 */
@TableName("discussjiankangzhishi")
public class DiscussjiankangzhishiView  extends DiscussjiankangzhishiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussjiankangzhishiView(){
	}
 
 	public DiscussjiankangzhishiView(DiscussjiankangzhishiEntity discussjiankangzhishiEntity){
 	try {
			BeanUtils.copyProperties(this, discussjiankangzhishiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
