package net.review.db;

import java.sql.Date;

public class ReviewBean {
	private int review_num;
	private int card_num;
	private int star_rate;
	private String review_id;
	private String review_subject;
	private String review_content;
	private Date review_date;

	public int getReview_num() {
		return review_num;
	}

	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	
	public int getCard_num() {
		return card_num;
	}
	
	public void setCard_num(int card_num) {
		this.card_num = card_num;
	}
	
	public int getStar_rate() {
		return star_rate;
	}
	
	public void setStar_rate(int star_rate) {
		this.star_rate = star_rate;
	}

	public String getReview_id() {
		return review_id;
	}

	public void setReview_id(String review_id) {
		this.review_id = review_id;
	}

	public String getReview_subject() {
		return review_subject;
	}

	public void setReview_subject(String review_subject) {
		this.review_subject = review_subject;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

}