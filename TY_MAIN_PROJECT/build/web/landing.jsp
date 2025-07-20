<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Satisfaction Survey</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }
        .navbar {
            background-color: #6a0dad;
        }
        .navbar-brand {
            font-weight: bold;
            color: white;
        }
        .hero-section {
            height: 100vh;
            background: linear-gradient(to right, rgba(106, 13, 173, 0.8), rgba(251, 255, 0, 0.7)), url('survey-bg.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        .hero-section h1 {
            font-size: 3.5rem;
            font-weight: bold;
        }
        .hero-section p {
            font-size: 1.2rem;
            margin-top: 15px;
        }
        .hero-section .btn {
            background-color: yellow;
            color: black;
            font-size: 1.2rem;
            padding: 12px 30px;
            margin-top: 20px;
        }
        .features {
            padding: 50px 0;
        }
        .feature-box {
            text-align: center;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
            background: white;
        }
        .testimonials {
            background-color: #f8f9fa;
            padding: 50px 0;
        }
        .testimonial-box {
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            background: white;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
        }
        .footer {
            background-color: #6a0dad;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Student Satisfaction Survey</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#features">Why Take Survey?</a></li>
                    <li class="nav-item"><a class="nav-link" href="survey.jsp">Take Survey</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <h1>Welcome to the Student Satisfaction Survey</h1>
            <p>Help us improve the quality of education by sharing your experience.</p>
            <a href="survey.jsp" class="btn btn-lg">Take the Survey Now</a>
        </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="features container">
        <div class="row text-center">
            <div class="col-md-4">
                <div class="feature-box">
                    <img src="https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/000000/external-feedback-communication-flaticons-lineal-color-flat-icons-2.png"/>
                    <h4>Easy Feedback</h4>
                    <p>Submit your feedback in just a few clicks.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <img src="https://img.icons8.com/external-wanicon-lineal-color-wanicon/64/000000/external-education-back-to-school-wanicon-lineal-color-wanicon.png"/>
                    <h4>Improve Education</h4>
                    <p>Your feedback helps in making improvements to education quality.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feature-box">
                    <img src="https://img.icons8.com/external-justicon-lineal-color-justicon/64/000000/external-anonymous-privacy-justicon-lineal-color-justicon.png"/>
                    <h4>100% Anonymous</h4>
                    <p>Your responses remain confidential and secure.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials">
        <div class="container">
            <h2 class="text-center mb-4">What Students Say</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="testimonial-box">
                        <p>"This survey really helped our college to understand student issues."</p>
                        <h5>- John Doe</h5>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial-box">
                        <p>"Very simple and easy to fill out. Takes just 5 minutes!"</p>
                        <h5>- Sarah Lee</h5>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="testimonial-box">
                        <p>"I love that my feedback is actually considered for improvements."</p>
                        <h5>- Mike Johnson</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>© 2025 Student Satisfaction Survey | Contact: support@survey.com</p>
    </footer>

</body>
</html>
