package com.jeho.DTO;

import lombok.Data;

@Data
public class LoginDTO {
	private String u_id, u_pw, u_joindate, u_name, u_email;
	private int u_no;
}
