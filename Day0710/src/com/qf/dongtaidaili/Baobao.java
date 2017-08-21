package com.qf.dongtaidaili;

public class Baobao implements Actor {

	@Override
	public String play(String playname) {
		System.out.println("宝宝演戏"+playname+"......");
		return "演戏中";
	}

	@Override
	public String sing(String singname) {
		System.out.println("宝宝唱歌"+singname+".....");
		return "唱歌中";
	}

}
