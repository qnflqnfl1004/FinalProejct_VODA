package com.finalproject.voda.admin.model.vo;

import java.util.Date;

import com.finalproject.voda.product.model.vo.Product;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Notice {
	
	private int noticeno;
	
	private int memberno;
	
	private String noticeTitle;
	
	private String noticeContent;
	
	private String noticeOriginalFileName;
	
	private String noticeRenamedFileName;
	
	private int noticeReadCount;
	
	private String noticeStatus;
	
	private Date noticeCreateDate;
	
	private String noticeTopTitle;
	
}
