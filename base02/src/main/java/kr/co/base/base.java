package kr.co.base;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class base {
	private int count;
	private int board_no;
	private String title=null;
	private String content=null;
	private String writer=null;
	@DateTimeFormat(pattern = "MM/dd")
	private Date created_at;
	
	private int view_count;
}
