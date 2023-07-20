package com.web.practice;

import java.util.ArrayList;
import java.util.List;

public class ObjDownCasting {
	public static Object object;
	
	public static void setAttr(String s, Object obj) {
		object = obj;
	}
	
	public static Object getAttr() {
		return object;
	}
	
	public static void main(String[] args) {
		List<String> myList = new ArrayList<String>();
		
		myList.add("we");
		myList.add("are");
		myList.add("foollish");
		
		setAttr("myList", myList);
		
		Object obj = getAttr();
		System.out.println(myList == obj); //같은메모리를 바라보고있다..헐,,,ㅓ
		
		List<String> objDownCastingList = (List<String>) obj; //아래에있는 데이터타입을 사용하려면
		System.out.println(objDownCastingList); // 다운캐스팅이 필수다
	}
}
