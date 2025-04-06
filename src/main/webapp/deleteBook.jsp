<%@ page import="entity.Book, dao.BookDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <div class="container mt-3">
    <%
        String bookId = request.getParameter("bookId");
        if (bookId != null && !bookId.isEmpty()) {
            int id = Integer.parseInt(bookId);
            boolean isDeleted = BookDao.deleteBook(id);
            if (isDeleted) {
                out.println("<h3 class='text-danger'>Book deleted successfully</h3>");
            } else {
                out.println("<h3 class='text-danger'>Book not found or delete failed</h3>");
            }
        } else {
            out.println("<p class='text-warning'>Invalid Book ID.</p>");
        }
    %>
    <a href="displayBooks.jsp" class="btn btn-success mt-3">Back to Book List</a>
    </div>
</body>
</html>
