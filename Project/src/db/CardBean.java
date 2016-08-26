package net.card.db;

import java.sql.Date;

public class CardBean {
	private int card_num;
	private String card_ad;
	private String card_image;
	private String card_name;
	
	
	public int getCard_num() {
		return card_num;
	}
	public void setCard_num(int card_num) {
		this.card_num = card_num;
	}
	public String getCard_ad() {
		return card_ad;
	}
	public void setCard_ad(String card_ad) {
		this.card_ad = card_ad;
	}
	public String getCard_image() {
		return card_image;
	}
	public void setCard_image(String card_image) {
		this.card_image = card_image;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	
}