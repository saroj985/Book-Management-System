<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
</head>
<body>
    <%@ page import="entity.Book, dao.BookDao" %>
    <jsp:useBean id="book" class="entity.Book" scope="session"/>
    <jsp:setProperty name="book" property="*" />
    <div class="container mt-3">
    <%
        Integer bookId = book.getBookId();
        boolean isUpdate = bookId != null && bookId > 0; // Check if the book is being updated
        BookDao.saveOrUpdateBook(book);

        if (isUpdate) {
            out.println("<p class=\"h2 text-success\">Book updated successfully</p>");
        } else {
            out.println("<p class=\"h2 text-success\">Book added successfully</p>");
        }
    %>
    <ul class="nav">
        <li class="nav-item">
            <a class="btn btn-danger mt-2" href="addBook.jsp">Add A New Book</a>
        </li>
        <li class="nav-item">
            <a class="btn btn-success mt-2 ms-4" href="displayBooks.jsp">Display Books</a>
        </li>
    </ul>
</body>
</html>

