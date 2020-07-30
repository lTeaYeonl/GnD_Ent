<%@page import="informdao.InformDao"%>
<%@page import="informdto.InformDto"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//업로드 설정
	final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
	//최대 업로드 사이즈 설정 
	final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
	//최대 요청 사이즈 설정 (최대 업로드 사이즈 보다 크게 설정 해야한다)
	final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
	
    //실제로 업로드한 파일이 있는지 체크 한다.
    if (!ServletFileUpload.isMultipartContent(request)) {
        //업로드한 파일이 없다면 예외 처리를 한다. 
        PrintWriter writer = response.getWriter();
        writer.println("Error: Form must has enctype=multipart/form-data.");
        writer.flush();
        return;
    }
    // configures upload settings
    DiskFileItemFactory factory = new DiskFileItemFactory();
    // sets memory threshold - beyond which files are stored in disk
    factory.setSizeThreshold(MEMORY_THRESHOLD);
    // sets temporary location to store files
    factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
    ServletFileUpload upload = new ServletFileUpload(factory);
    // sets maximum size of upload file
    upload.setFileSizeMax(MAX_FILE_SIZE);
    // sets maximum size of request (include file + form data)
    upload.setSizeMax(MAX_REQUEST_SIZE);
    //WebContent 하위의 upload 폴더 절대 경로 얻어오기 
    String uploadPath = application.getRealPath("/upload");
    //업로드 경로를 서버측 콘솔에 출력하기 
    System.out.println(uploadPath);
    //전송된 파라미터의 한글 인코딩 설정 
    upload.setHeaderEncoding("utf-8");
    
    //폼 전송된 caption
  	String caption="";
    //WebContent 안에서 이미지 파일이 저장된 경로 
  	String imagePath="";
    //작업의 성공 여부 
  	boolean isSuccess=false;
    try {
        //폼전송된 아이템 목록 얻어오기 
        List<FileItem> formItems = upload.parseRequest(request);
        //폼전송된 아이템이 존재 한다면 
        if (formItems != null && formItems.size() > 0) {
        	
        	
            //반복문 돌면서 FileItem 객체를 불러온다. 
            for (FileItem item : formItems) {
            	
                //아이템이 폼 필드인지 아닌지에 따라 선택적인 처리를 한다.
                if (!item.isFormField()) {//만일 파일 필드라면...
                	//전송된 원본 파일명을 얻어온다. 
                    String orgFileName = new File(item.getName()).getName();
                	//저장할 파일명 구성(파일명 앞에  time stamp 를 출력해서 겹치지 않게한다 )
                	String saveFileName = System.currentTimeMillis()+orgFileName;
                	//파일 시스템에 저장할 전체 경로를 구성한다.
                    String filePath = 
                    	uploadPath + File.separator + saveFileName;
                	//파일을 파일시스템에 저장한다.
                    File storeFile = new File(filePath);
                    item.write(storeFile);
                    
                    //이미지 경로
                    imagePath="/upload/"+saveFileName;
                    
                }else{//폼 필드라면 
                	
                	// input name="caption" 에 입력한 문자열 읽어오는 부분 2
                	if(item.getFieldName().equals("caption")){
                		//제목 읽어오기
                		caption=item.getString("utf-8");
                	}
                
                }//if
            }//for     
        }//if
        
        //작성자
        String writer=(String)session.getAttribute("id");
        //업로드된 사진 정보를 Dto 에 담고 
        InformDto dto=new InformDto();
        dto.setInf_photo(inf_photo);
        //DB 에 저장하기
        isSuccess=InformDao.getInstance().insert(dto);
    } catch (Exception ex) {
     
        System.out.println(ex.getMessage());
    }
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>/gallery/private/upload.jsp</title>
</head>
<body>
<div class="container">
	<%if(isSuccess){ %>
		<p> 이미지를 업로드 했습니다. <a href="../list.jsp">확인</a></p>
	<%}else{ %>
		<p> 업로드 실패! <a href="upload_form.jsp">다시 시도</a></p>
	<%} %>
</div>
</body>
</html>