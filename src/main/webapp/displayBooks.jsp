<%@page import="dao.BookDao" %>
<%@page import="entity.Book" %>
<%@page import="java.util.List" %>

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
    <%
        List<Book> bookList = BookDao.listBooks();
    %>
    <div class="container mt-3">
        <!-- Header and Add Book Button -->
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h1>Book List</h1>
            <a class="btn btn-success" href="addBook.jsp">Add a New Book</a>
        </div>

        <!-- Table -->
        <table class="table table-bordered table-hover">
            <thead class="table-success">
                <tr>
                    <th>Book ID</th>
                    <th>Book Name</th>
                    <th>Book Price</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Book book : bookList) {
                %>
                <tr>
                    <td><%= book.getBookId() %></td>
                    <td><%= book.getBookName() %></td>
                    <td><%= book.getBookPrice() %></td>
                    <td>
                        <!-- Delete Button -->
                        <a href="deleteBook.jsp?bookId=<%= book.getBookId() %>"
                           class="btn btn-danger btn-sm">Delete</a>
                    </td>
                    <td>
                        <!-- Edit Button -->
                        <a href="editBook.jsp?bookId=<%= book.getBookId() %>"
                           class="btn btn-primary btn-sm">Edit</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
