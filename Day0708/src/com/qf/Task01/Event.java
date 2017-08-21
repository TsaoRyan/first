package com.qf.Task01;

public class Event {
	private Person source;//时间源
	public Event(Person source) {
		super();
		this.source = source;
	}
	public Person getSource() {
		return source;
	}
	public void setSource(Person source) {
		this.source = source;
	}
	
}
