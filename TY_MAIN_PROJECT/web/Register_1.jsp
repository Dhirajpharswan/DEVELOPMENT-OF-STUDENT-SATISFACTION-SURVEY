<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- FontAwesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, rgba(106, 13, 173, 0.9), rgba(251, 255, 0, 0.6)), 
                        url('background.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        .form-container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 650px;
        }
        .form-container h2 {
            color: #6a0dad;
            margin-bottom: 20px;
            font-weight: bold;
            text-align: center;
        }
        .form-group {
            position: relative;
            margin-bottom: 15px;
        }
        .form-group i {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: #6a0dad;
        }
        .form-control {
            width: 100%;
            padding: 12px 40px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }
        .form-control:focus {
            outline: none;
            border-color: #6a0dad;
            box-shadow: 0 0 5px rgba(106, 13, 173, 0.5);
        }
        .btn-submit {
            background-color: #6a0dad;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 5px;
            font-size: 1.2rem;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn-submit:hover {
            background-color: #580ba5;
        }
        .form-container p {
            margin-top: 15px;
            font-size: 1rem;
            text-align: center;
        }
        .form-container a {
            text-decoration: none;
            color: #6a0dad;
            font-weight: bold;
        }
        .form-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2><i class="fas fa-user-plus"></i> Registration Form</h2>
        <form action="RegisterServlet" method="post">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <i class="fas fa-user"></i>
                        <input type="text" class="form-control" name="name" placeholder="Full Name" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-envelope"></i>
                        <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-phone"></i>
                        <input type="tel" class="form-control" name="mobileNumber" placeholder="Mobile Number" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-book"></i>
                        <input type="text" class="form-control" name="program" placeholder="Program Enrolled" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <i class="fas fa-graduation-cap"></i>
                        <input type="text" class="form-control" name="semester" placeholder="Current Semester" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-venus-mars"></i>
                        <input type="text" class="form-control" name="gender" placeholder="Gender" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-calendar"></i>
                        <input type="date" class="form-control" name="dob" required>
                    </div>
                    <div class="form-group">
                        <i class="fas fa-lock"></i>
                        <input type="password" class="form-control" name="password" placeholder="Create Password" required>
                    </div>
                </div>
            </div>
            <button type="submit" class="btn-submit">Register</button>
            <p>Already registered? <a href="login.html">LOGIN HERE</a></p>
        </form>
    </div>

</body>
</html>
