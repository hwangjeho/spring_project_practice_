package com.jeho.DTO;

import lombok.Data;

@Data
public class BoardDTO {
	private int b_no, b_count, b_cate, u_no, commentcount;
	private String b_title, b_content, b_date, u_id;
}
