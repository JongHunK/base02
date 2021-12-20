package kr.co.member;



import java.util.Date;

import lombok.Data;
@Data
public class member {
	private String user_id;
	private String user_pw;
	private String user_pw_ch;
	private String user_name;
	private String new_user_name;
	private String user_email;
	private Date userJoinDate;
}
