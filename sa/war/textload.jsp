<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.io.*, java.sql.*" errorPage=""%>
<%
	String fileName = "text.txt";
	InputStream ins = new FileInputStream(fileName);
	try {
		if (ins == null) {
			response.setStatus(response.SC_NOT_FOUND);
		} else {
			BufferedReader br = new BufferedReader(
					(new InputStreamReader(ins)));
			String data;
			while ((data = br.readLine()) != null) {
				out.print(data);
			}
		}
	} catch (IOException e) {
		out.println(e.getMessage());
	}
%>