<%-- 
    Document   : index
    Created on : 15 de out. de 2023, 19:42:25
    Author     : Sanches
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dados do JSON</title>
</head>
<body>
    <jsp:include page="WEB-INF/jspf/header.jspf" />
    
    <h2>Dados do JSON:</h2>
    <div id="json-data"></div>

    <script src="https://cdn.jsdelivr.net/npm/alpinejs@2.8.2/dist/alpine.js" integrity="sha384-mXZg75aDv6vgzLN6AglydmU53JfEnY5p4F9cgFk4lJawg9oyEaV2mpa6jCiSFqkzy" crossorigin="anonymous"></script>
    <script>
        fetch('gustavo.json')
            .then(response => response.json())
            .then(data => {
                document.getElementById('json-data').innerHTML = JSON.stringify(data, null, 2);
            });
    </script>
</body>
</html>