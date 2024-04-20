<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Universal Arcade</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div class="container">
    <input type="text" id="searchInput" placeholder="Enter your search query">
    <button id="searchButton">Search</button>
    <div id="results"></div>
  </div>
  <script src="script.js"></script>
</body>
</html>

body {
  font-family: Arial, sans-serif;
}

.container {
  max-width: 600px;
  margin: 50px auto;
  text-align: center;
}

input[type="text"] {
  width: 70%;
  padding: 10px;
  margin-right: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

button {
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

button:hover {
  background-color: #0056b3;
}

#results {
  margin-top: 20px;
}
document.getElementById('searchButton').addEventListener('click', function() {
  var query = document.getElementById('searchInput').value;
  var encodedQuery = encodeURIComponent(query);
  var searchUrl = 'https://www.example.com/search?q=' + encodedQuery; // Replace with your search URL
  window.location.href = searchUrl;
});
