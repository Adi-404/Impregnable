<%@page import="util.DB"%>
<%@page import="org.apache.commons.io.FilenameUtils"%>
<%@page import="org.apache.poi.xwpf.extractor.XWPFWordExtractor"%>
<%@page import="org.apache.poi.xwpf.usermodel.XWPFParagraph"%>
<%@page import="org.apache.poi.xwpf.usermodel.XWPFDocument"%>
<%@page import="org.apache.poi.hwpf.extractor.WordExtractor"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,def.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="org.apache.poi.hwpf.HWPFDocument"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%
String uid=(String)session.getAttribute("id");
String oid = (String)session.getAttribute("oid");
%>

<%
		String a=null,c=null,d=null,f1=null,image=null,size33=null,ss=null,fPath=null,fid=null,myimagename=null,fname=null,pkey=null,aname=null;
		/* Statement st = null; */
		String uname=null,uemail=null;
		String sss=null,mmm=null;
		ResultSet rs1=null;
		int iid=0,score=0;
		int ch,id1=0;
		String status="pending";

		FileInputStream fs=null;
		FileInputStream fileInputStream = null;
		XWPFDocument document=null;
		int m=0,x=0;
		
			
			/* session.setAttribute("fid",m); */
			
		ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\Data");
		String paramname=null;
		String file=null;

		java.util.Date now = new java.util.Date();
		 String date=now.toString();
		 String DATE_FORMAT = "dd-MM-yyyy";
		 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
	     String strDateNew = sdf.format(now) ;
	     StringBuffer strContent = new StringBuffer("");
		File file1 = null;
		File fileToBeRead=null;	
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("fileid"))
				{
					fid=multi.getParameter(paramname);
					
				}
				if(paramname.equalsIgnoreCase("fname"))
				{
					c=multi.getParameter(paramname);
					
				}
				if(paramname.equalsIgnoreCase("fkey"))
				{
					d=multi.getParameter(paramname);
					
				}
				if(paramname.equalsIgnoreCase("file"))
				{
					image=multi.getParameter(paramname);
					
				}
				if(paramname.equalsIgnoreCase("24"))
				{
					uemail=multi.getParameter(paramname);
					
				}
				if(paramname.equalsIgnoreCase("23"))
				{
					uname=multi.getParameter(paramname);
					
				}
				
			}
			    
			   
			    	
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			 fPath = context.getRealPath("\\Data\\"+image);
			System.out.println("fpath=========="+fPath);
			file1 = new File(fPath);
			double size11=file1.length();
			double  size12=size11/1024;
			double size22=Math.round(size12*100.0)/100.0;
			size33=Double.toString(size22);
			myimagename=file1.getName();
			/* fname = FilenameUtils.removeExtension(myimagename); */
			fs = new FileInputStream(file1);
			list.add(fs);
			/* while ((ch = fs.read()) != -1)
			    strContent.append((char) ch); */
			
			   
		}		
	}
	        /* FileInputStream fs1 = null; */
            //name=dirName+"\\Gallery\\"+image;
			
			/* SEPERATE DOWNLOAD FOR EXCELL AND WORD FILE */
			Connection con1=DB.getconnection();
			PreparedStatement ps= null;
			if(myimagename.endsWith(".docx"))
			{
					fileToBeRead = new File(fPath);
					fileInputStream = new FileInputStream(fileToBeRead);
					document = new XWPFDocument(fileInputStream);
					XWPFWordExtractor extractor = new XWPFWordExtractor(document);
		  		    ss=extractor.getText();
				
		  		    ps=con1.prepareStatement("insert into upload(FID,FSEARCHNAME,FILEKEY,FILE,FILES,FSIZE,DATE,FPATH,FNAME,STATUS,ONAME,OEMAIL,OID,ENC) values(?,?,?,?,?,?,?,?,?,?,?,?,?,AES_ENCRYPT(?,'"+ d +"'))");
		  		    ps.setString(4,ss);
		  		  	ps.setString(14,ss); 
			}
			else if(myimagename.endsWith(".xlsx"))
			{
				String excel = xlsxRead.buff(fPath).toString();
				ps=con1.prepareStatement("insert into upload(FID,FSEARCHNAME,FILEKEY,FILE,FILES,FSIZE,DATE,FPATH,FNAME,STATUS,ONAME,OEMAIL,OID,ENC) values(?,?,?,?,?,?,?,?,?,?,?,?,?,AES_ENCRYPT(?,'"+ d +"'))");
				ps.setString(4,image);
				ps.setString(14, excel);  
				
			}
			
 	            ps.setString(1,fid);
				ps.setString(2,c);
				ps.setString(3,d);	
			    	ps.setString(5,image);
				ps.setString(6,size33);
				ps.setString(7,strDateNew);
				ps.setString(8,fPath);
				ps.setString(9,myimagename);
				ps.setString(10,status);
				ps.setString(11,uname);
				ps.setString(12,uemail);
				ps.setString(13, oid);
				
	        	
				if(f == 0)
					ps.setObject(5,null);
				else if(f == 1)
				{
					fs = (FileInputStream)list.get(0);
					ps.setBinaryStream(5,fs,fs.available()); 
				}	
				int x1 =    ps.executeUpdate();
		       
			/* FOR DISTRIBUTED STORAGE */			
		
			Statement st = null;
			ResultSet rs = null;
			int part = 0;
			String part1= null;
			String ide = null;
			String part2=null;
			String part3=null;
			String mainpart=null;
			
			try
			{
			Connection con=DB.getconnection();
			st=con.createStatement();
				rs = st.executeQuery(" select  * from upload where FID='"+fid+"'");
				while(rs.next())
				{
				 	ide=rs.getString("FID");
				  	mainpart=rs.getString("ENC");
					part = mainpart.length()/3;
					
					 part1 = mainpart.substring(0, part);
					 part2 = mainpart.substring(part, part+part);
					 part3 = mainpart.substring(part+part, part+part+part);	
				}
			}
			catch(Exception e){System.out.print(e);}
			
			try
			{ 
				/* First Chunk */
				Connection c1 = DB.getconnection1();
				PreparedStatement ps1 = c1.prepareStatement("insert into chunk1(FID,DATA,CHUNK) values(?,?,?)");
				ps1.setString(1, ide);
				ps1.setString(2, part1);
				ps1.setString(3, "STORAGE3");
				//Updating third encrypted Part in storage 1...
				PreparedStatement psu1 = c1.prepareStatement("update chunk1 set SDATA=(?) where FID='"+ide+"'");
				psu1.setString(1, mainpart.substring(part+part, part+part+part));
				
				/* Second Chunk */
				Connection c2 = DB.getconnection2();
				PreparedStatement ps2 = c2.prepareStatement("insert into chunk2(FID,DATA,CHUNK) values(?,?,?)");
				ps2.setString(1, ide);
				ps2.setString(2, part2);
				ps2.setString(3, "STORAGE1");
				//Updating first encrypted Part in storage 2...				
				PreparedStatement psu2 = c2.prepareStatement("update chunk2 set SDATA=(?) where FID='"+ide+"'");
				psu2.setString(1, mainpart.substring(0, part));
				
				/* Third Chunk */
				Connection c3 =DB.getconnection3();
				PreparedStatement ps3 = c3.prepareStatement("insert into chunk3(FID,DATA,CHUNK) values(?,?,?)");
				ps3.setString(1, ide);
				ps3.setString(2, part3);
				ps3.setString(3, "STORAGE2");
				//Updating second encrypted Part in storage 3...				
				PreparedStatement psu3 = c3.prepareStatement("update chunk3 set SDATA=(?) where FID='"+ide+"'");
				psu3.setString(1,mainpart.substring(part, part+part));
				
				
				int i1 =	ps1.executeUpdate();
				int i2 =	ps2.executeUpdate();
				int i3 =	ps3.executeUpdate();
				int i4 =    psu1.executeUpdate();
				int i5 =    psu2.executeUpdate();
				int i6 =    psu3.executeUpdate();


				if((x1>0)&&(i1>0)&&(i2>0)&&(i3>0)&&(i4>0)&&(i5>0)&&(i6>0))
				{
					%>
					<script>
					alert("File Encrypted and Ready to Upload");
					window.location="OwnerView.jsp";
					</script>
					<%
				}
				else
				{
					%>
					<script>
					alert("Try again");
					window.location="OwnerUpload.jsp";
					</script>
					<% 
				}
				
					
				
			}
			catch(Exception e) {System.out.println(e);}
		} 
		catch (Exception e) {System.out.println(e.getMessage());}	
		 %>
		 
