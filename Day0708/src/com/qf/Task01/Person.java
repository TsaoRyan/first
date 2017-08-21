package com.qf.Task01;

public class Person {
	private String name;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	private PersonListener listener;
	public void eat(){
		System.out.println(name+"正在大口大口的吃包子");
		if(listener!=null){
			listener.eat(new Event(this));
		}
	}
	public void run(){
		System.out.println(name+"正在飞快的跑");
		if(listener!=null){
			listener.run(new Event(this));
		}
	}
	public void setListener(PersonListener listener) {
		this.listener = listener;
	}
}