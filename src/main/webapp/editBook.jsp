<%@ page import="entity.Book, dao.BookDao" %>
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
    <jsp:useBean id="book" class="entity.Book" scope="session"/>
    <jsp:setProperty name="book" property="*" />

    <div class="container mt-3">
        <!-- Form for updating or adding book details -->
        <h2>Add or Update Book Details</h2>
        <form action="saveBook.jsp" method="POST">
            <div class="mb-3 mt-3">
                <label for="bookId">Book ID</label>
                <input type="text" class="form-control" id="bookId" placeholder="Enter Book ID" name="bookId" value="<%= book.getBookId() %>">
            </div>
            <div class="mb-3 mt-3">
                <label for="bookName">Book Name</label>
                <input type="text" class="form-control" id="bookName" placeholder="Enter Book Name" name="bookName" value="<%= book.getBookName() %>">
            </div>
            <div class="mb-3 mt-3">
                <label for="bookPrice">Book Price</label>
                <input type="text" class="form-control" id="bookPrice" placeholder="Enter Book Price" name="bookPrice" value="<%= book.getBookPrice() %>">
            </div>

            <button type="submit" class="btn btn-primary">Save Book</button>
        </form>
    </div>

</body>
</html>
