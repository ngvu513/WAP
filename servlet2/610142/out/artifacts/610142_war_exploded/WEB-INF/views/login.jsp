<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <style>
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;
            background-color: #f5f5f5;
        }
    </style>
</head>

<body>

<div class="container">
    <form action="/login.do" method="post">
        <p>
            <font color="red">${errorMessage}</font>
        </p>
        <div class="form-group">
            <label for="name">Name</label>
            <input value="${userName}" type="text" class="form-control" id="name" name="name" aria-describedby="name" placeholder="Enter name">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" aria-describedby="password" placeholder="Enter password">
        </div>
        <div class="form-group">

            <label><input type="checkbox" name="rememberMe" <c:if test="${rememberMe == '1'}">checked="checked"</c:if> />Remeber Me !</label>
<%--            <input type="checkbox" name="stable" <%--%>
<%--                if ("1".equals(action.get("rememberMe"))) {--%>
<%--                    out.print("checked=\"checked\"");--%>
<%--                } %>/>--%>
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
</div>

<footer class="footer">
    <div></div>
</footer>
</body>

</html>