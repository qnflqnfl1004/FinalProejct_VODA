package com.finalproject.voda.order.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Pay {
	private int payno;
	
	private String paymerchant;
	
	private String paymethod;
}
