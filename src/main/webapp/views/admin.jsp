
<%@page import="com.library.model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
th,td{
padding: 15px;
}
 input[type="submit"] {
    width: 25%;
    background-color: black;
    color: #fff;
    padding: 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
  }
  th{
  background-color: black;
  color: white;
  border: none;
  }

</style>
<%
List<Book> bk =(List<Book>)request.getAttribute("data");

%>

<body>
<div align="center" >
<h1>All Books</h1>
<form name="myForm">

<table border="2px"  cellspacing="20px" cellspadding ="5px 5px 5px 5px " >
<thead>
<tr>
<th>Select</th>
<th>Book-ID</th>
<th>Book-Name</th>
<th>Book-Author</th>
<th>Book-Categury</th>
</tr>
</thead>
<% for(Book book : bk){ %>
<tr>
<td><input type="radio" name="bookId" value="<%= book.getBookId()%>" ></td>
<td><%=book.getBookId() %></td>
<td><%=book.getBookName() %></td>
<td><%=book.getBookAuthor()%></td>
<td><%=book.getBookCat()%></td>

</tr>
<%} %>


</table>
<br><br>
<input type="submit" onclick="addBook()" value="ADD" >
<input type="submit" onclick="deleteBook()" value="DELETE" >
</form>
</div>
<script type="text/javascript">
function deleteBood(){
	alert(" Sure To Remove Book ")
	document.myForm.action="delete";
	document.myForm.submit();
}
function addBook(){
	document.myForm.action="add";
	document.myForm.submit();
}



</script>

</body>
</html>