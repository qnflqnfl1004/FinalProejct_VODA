package com.finalproject.voda.cart.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart {
	private int pno;
	
	private int mno;
	
	private String pname;
	
	private String pmadecompany;
	
	private int pqtt;
	
	private int pprice;

	private String pcategory;
	
	private String prenamefile;
}
