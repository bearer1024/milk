package com.elgin.utils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * json结果工具类<br>
 * 用于控制器返回json使用<br>
 * spring mvc的@ResponseBody自动将Map 转为json<br>
 * json格式符合javashop规范：<br>
 * {"result":1,"message":""}或<br>
 * {"result":1,"data":""}或<br>
 *  适用于grid的： {"total":1,"rows":""}<br>
 */
public class JsonResultUtil {
	
	public static final int NO_LOGIN= -1;//没有登陆
	
	/**
	 * 获取 适用于 datatables 的json Map
	 * @param page 用于grid的page对象
	 * @return 符合easy grid 规范的json map: {"total":1,"rows":""}
	 */
	public static GridJsonResult getGridJson(Page page){
	  
		return new  GridJsonResult(page);
		
	}
	
	/**
	 * 获取 适用于 datatables 的json Map
	 * @param list 用于grid的list对象
	 * @return 符合datatables 规范的json map: {"total":1,"rows":""}
	 */
	public static GridJsonResult getGridJson(List list){
		  
		return new  GridJsonResult(list);
		
	}
	
	
	/**
	 * 获取对象json Map
	 * @param object 要生成json格式的对象
	 * @return 符合javashop规范的json map: {"result":1,"data":""}
	 */
	public static JsonResult getObjectJson(Object object){
	 
		JsonResult result = new JsonResult();
		result.setResult(1);
		result.setData(object);
	  
		return result;
		
	}
	/**
	 * 获取对象 json
	 * @param object	数据
	 * @param message	消息
	 * @return
	 */
	public static JsonResult getObjectMessageJson(Object object,String message){
		 
		JsonResult result = new JsonResult();
		result.setResult(1);
		result.setMessage(message);
		result.setData(object);
	  
		return result;
		
	}
	
	/**
	 * 获取对象json Map
	 * @param object 要生成json格式的对象
	 * @objectName	object的key名称
	 * @return 符合javashop规范的json map: {"result":1,"data":""}
	 */
	public static JsonResult getObjectJson(Object object, String objectName){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put(objectName, object);
		JsonResult result = new JsonResult();
		result.setResult(1);
		result.setData(map);
	  
		return result;
		
	}
	
	/**
	 * 获得对象json Integer
	 * @param name 数值key名
	 * @param num 值
	 * @return 符合javashop规范的json map: {"result":1,"data":""}
	 */
	public static JsonResult getNumberJson(String name, int num){
	 
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put(name, num);
		
		JsonResult result = new JsonResult();
		result.setResult(1);
		result.setData(map);
	  
		return result;
		
	}
	
	
	/**
	 * 获取成功状态的json Map
	 * @param message 要返回的信息
	 * @return 符合javashop规范的json map: {"result":1,"message":""}
	 */	
	public static JsonResult getSuccessJson(String message){
		
		JsonResult result = new JsonResult();
		result.setResult(1);
		result.setMessage(message);
		
		return result;
	}
	
	/**
	 * 获取失败状态的json Map
	 * @param message 要返回的信息
	 * @return 符合javashop规范的json map: {"result":0,"message":""}
	 */	
	public static JsonResult getErrorJson(String message){
		
		JsonResult result = new JsonResult();
		result.setResult(0);
		result.setMessage(message);
		 
		return result;
		
	}
	/**
	 * 获取失败状态的json Map
	 * @param message 要返回的信息
	 * @return 符合javashop规范的json map: {"result":0,"message":""}
	 */	
	public static JsonResult getErrorJson(String message,int resultNum){
		
		JsonResult result = new JsonResult();
		result.setResult(resultNum);
		result.setMessage(message);
		 
		return result;
		
	}
	
}
