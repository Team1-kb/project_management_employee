package com.team1.org;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Scalar.String;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberDTO {
	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	private int sabun;
	private String name;
	private Date birth;
	private String phone;
	private Object joindate;
	private String adrr1;
	private String adrr2;
	private String adrr3;
	private String division;
	private String team;
	private boolean holdoffice = true;
	private Date resigndate;
	private Date moddate;
	
	
	
}
