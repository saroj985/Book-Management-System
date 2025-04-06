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
        <h2>Add Book Details</h2>
        <form action="saveBook.jsp">
            <div class="mb-3 mt-3">
                <label for="bookId">Book ID</label>
                <input type="text" class="form-control" id="bookId" placeholder="Enter Book ID" name="bookId">
            </div>
            <div class="mb-3 mt-3">
                 <label for="bookName">Book Name</label>
                 <input type="text" class="form-control" id="bookName" placeholder="Enter Book Name" name="bookName">
            </div>
            <div class="mb-3 mt-3">
                  <label for="bookPrice">Book Price</label>
                  <input type="number" step="0.01" class="form-control" id="bookPrice" placeholder="Enter Book Price" name="bookPrice">
            </div>

            <button type="submit" class="btn btn-primary">Save Book</button>
        </form>
    </div>
</body>
</html>