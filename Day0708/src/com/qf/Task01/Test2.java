package com.qf.Task01;

public class Test2 {
	public static void main(String[] args) {
		Person p=new Person();
		p.setName("董航");
		p.setListener(new PersonListener() {	
			@Override
			public void run(Event e) {			
			}
			@Override
			public void eat(Event e) {
				System.out.println(p.getName()+"吃东西");
			}
		});
		Person p2=new Person();
		p2.setName("凤姐");
		p.eat();
		p.run();
		p2.eat();
		p2.run();
	}
}
