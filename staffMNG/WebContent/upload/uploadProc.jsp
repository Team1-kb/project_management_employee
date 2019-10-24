<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
// 	int sizeLimit = 30 * 1024 * 1024 ; // 용량제한  
// 	 String formName = "";  
// 	 String fileName = "";  
// 	 Vector vFileName = new Vector();  
// 	 Vector vFileSize = new Vector();  
// 	 String[] aFileName = null;  
// 	 String[] aFileSize = null;  
// 	 long fileSize = 0;  
	 
// 	 String savePath = application.getRealPath("/StaffList");
	 
// 	 MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());  
	 
// 	 Enumeration formNames = multi.getFileNames();   
	 
// 	 while (formNames.hasMoreElements()) {   
	 
// 	 formName = (String)formNames.nextElement();   
// 	    fileName = multi.getFilesystemName(formName);   
	 
// 	 if(fileName != null) {   // 파일이 업로드 되면  
	 
// 	  fileSize = multi.getFile(formName).length();  
// 	  vFileName.addElement(fileName);  
// 	        vFileSize.addElement(String.valueOf(fileSize));  } }  
	      
// 	 aFileName = (String[])vFileName.toArray(new String[vFileName.size()]);  
// 	 aFileSize = (String[])vFileSize.toArray(new String[vFileSize.size()]);  
	
		String fname = "";
		String uploadPath = application.getRealPath("/StaffList");
		try {
			MultipartRequest multi = new MultipartRequest(request, uploadPath, 10 * 1024 * 1024, "utf-8",
					new DefaultFileRenamePolicy());
			fname = multi.getFilesystemName("file");
			
		} catch (Exception e) { e.getMessage();	}
		
		response.sendRedirect("upload.jsp?fname="+fname);	
	%>
	
</body>
</html>