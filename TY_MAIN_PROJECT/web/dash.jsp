<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="dash.css">
</head>
<body>
    
    <div class="sidebar">
        <div class="profile">
            <img src="tcscpic.jpeg" alt="Profile Picture">
            <h2>Hello <%= session.getAttribute("username") != null ? session.getAttribute("username") : "Student" %></h2>
        </div>
        <nav>
            <ul>
                <li><a href="dashboard.jsp">Dashboard</a></li>
                <li><a href="dash.jsp">View/Edit Profile</a></li>
                <li><a href="#">Update Password</a></li>
                <li><a href="survey.jsp">survey</a></li>
            </ul>
        </nav>
    </div>

    <div class="main-content">
        <div class="edit-profile">
            <h2>Edit Profile</h2>
            <form action="DashboardServlet" method="post">
                 <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="Email Address" required>
                </div>
                <div class="form-group">
                    <label for="mobileNumber">Mobile Number</label>
                    <input type="tel" id="mobileNumber" name="mobileNumber" placeholder="Mobile Number" required>
                </div>
                <div class="form-group">
                    <label for="program">Program</label>
                    <input type="text" id="program" name="program" placeholder="Program" required>
                </div>
                <div class="form-group">
                    <label for="semester">Semester</label>
                    <input type="text" id="semester" name="semester" placeholder="Semester" required>
                </div>
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <input type="text" id="gender" name="gender" placeholder="Gender" required>
                </div>
                <div class="form-group">
                    <label for="dob">Date of Birth</label>
                    <input type="date" id="dob" name="dob" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                </div>
                <input type="submit" value="Update  Profile">
                <input type="reset" value="reset">
            </form>
        </div>
        <div class="profile-image">
            <!-- <img src="profile.jpg" alt="Profile Picture"> -->
            <!-- <label for="profileImage">Change the profile image</label> -->
            <!-- <input type="file" id="profileImage"> -->
        </div>
    </div>
    
</body>
</html>
