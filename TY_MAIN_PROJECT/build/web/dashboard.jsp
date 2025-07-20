<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashb.css">
</head>
<body>
    <div class="sidebar">
        <div class="profile">
            <img src="tcscpic.jpeg" alt="Profile Picture">
            <h2>Hello, <%= session.getAttribute("username") != null ? session.getAttribute("username") : "Student" %></h2>
        </div>
        <nav>
            <ul>
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="dash.jsp">View/Edit Profile</a></li>
                <li><a href="#">Update Password</a></li>
                <li><a href="survey.jsp">Survey</a></li>
                <li><a href="login.html">Back to Login</a></li>
            </ul>
        </nav>
    </div>

    <div class="main-content">
        <div class="header">
            <h1>Hello, <%= session.getAttribute("username") != null ? session.getAttribute("username") : "Student" %></h1>
            <p>Welcome to your dashboard</p>
        </div>
    </div>
</body>
</html>
