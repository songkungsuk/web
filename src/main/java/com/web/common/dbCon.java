package com.web.common;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbCon {
	private final static String LOCATION = "jdbc:mariadb://localhost:3306/kd";
	private final static String DRIVER_NAME = "org.mariadb.jdbc.Driver";
	private final static String ID = "root";
	private final static String PW = "kd1824java";
	
	static {
		try {
			Class.forName(DRIVER_NAME);
			System.out.println(DRIVER_NAME);
		} catch (Exception e) {

		}

		
	}
	
	public static Connection getCon() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(LOCATION, ID, PW);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return con;
	}
	public static int changeStringToInt(String str) throws Exception {
		try {
			return Integer.parseInt(str);
		}catch (Exception e) {
			throw new Exception("숫자를써주세요");
		}
	}
	public static void main(String[] args) {
		
	}
//	public static void main(String[] args)  {
//		
//		try {
//			int a = changeStringToInt("onetwo");
//			System.out.println(a);
//			
//		} catch (Exception e) {
//			
//		}
//		
//		System.out.println("프로그램이 종료되었습니다");
//		
//		
//	}
//	
}
