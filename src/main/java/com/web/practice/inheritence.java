package com.web.practice;


class Parent{
	public Parent() {
		System.out.println("cunstruct P");
	}
	public static void printC() {
		System.out.println("A");
	}
	public void printD() {
		System.out.println("B");
	}
}
class Child extends Parent{
	public static void printC() {
		System.out.println("C");
	}
	public void printD() {
		System.out.println("D");
	}
	public Child() {
		System.out.println("cunstruct C");
	}
	public void printE() {
		System.out.println("E");
	}
}

public class inheritence {
	public static void main(String[] args) {
		Parent a = new Child(); //a 
		Child b = new Child(); // b
		
		a.printC(); //a
		a.printD(); /// b
		
		b.printC();//ac
		b.printD();//bd
		
		Child c = (Child) a;
		c.printE();
		b.printE();
		
	}
}
