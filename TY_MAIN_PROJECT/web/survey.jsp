<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Feedback Form</title>
        <link rel="stylesheet" href="survey.css">
        <style>
            /* Sidebar styling */
    .sidebar {
        width: 250px;
        background-color: #6A1B9A;
        color: white;
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    /* Profile image inside sidebar */
    .profile img {
        width: 125px;
        height: 125px;
        border-radius: 50%;
        margin-bottom: 10px;
    }

    /* Profile name styling */
    .profile h2 {
        text-align: center;
        font-size: 18px;
        margin: 0;
    }

    /* Sidebar navigation list styling */
    nav ul {
        list-style-type: none;
        padding: 0;
        width: 100%;
    }

    nav ul li {
        width: 100%;
        margin: 10px 0;
    }

    /* Sidebar navigation links styling */
    nav ul li a {
        text-decoration: none;
        color: white;
        display: block;
        padding: 10px;
        background-color: #8E24AA;
        text-align: center;
        border-radius: 5px;
    }

    nav ul li a:hover {
        background-color: #9C27B0;
    }

        </style>
    </head>
    <body>
        <!-- Sidebar -->
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
                    <!--<li><a href="survey.jsp">survey</a></li>-->
                </ul>
            </nav>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <h1>Please give your answer by circling the grade on the scale:</h1>
                <div class="rating-scale">
                    <span class="strongly-agree">Strongly Agree 5</span>
                    <span class="agree">Agree 4</span>
                    <span class="neutral">Neutral 3</span>
                    <span class="disagree">Disagree 2</span>
                    <span class="strongly-disagree">Strongly Disagree 1</span>
                </div>
            </div>

            <!-- Feedback Form -->
            <div class="feedback-form">
                <h2>Give Your Survey</h2>
                <form action="SubmitSurveyServlet" method="post">
    
                    

                    <h3>   I. Admission process: </h3>
                    <p>1.   Availability of all necessary Information on the website:</p>
                    <div class="rating-options">
                        <label><input type="radio" name="course_material11" value="5"> 5</label>
                        <label><input type="radio" name="course_material11" value="4"> 4</label>
                        <label><input type="radio" name="course_material11" value="3"> 3</label>
                        <label><input type="radio" name="course_material11" value="2"> 2</label>
                        <label><input type="radio" name="course_material11" value="1"> 1</label>
                    </div>
                     <p>2. Courtesy of Staff Members.:</p>
                    <div class="rating-options">
                        <label><input type="radio" name="course_material12" value="5"> 5</label>
                        <label><input type="radio" name="course_material12" value="4"> 4</label>
                        <label><input type="radio" name="course_material12" value="3"> 3</label>
                        <label><input type="radio" name="course_material12" value="2"> 2</label>
                        <label><input type="radio" name="course_material12" value="1"> 1</label>
                    </div> 
                    <p>3.   Functioning of the Admission Process:</p>
                    <div class="rating-options">
                        <label><input type="radio" name="course_material13" value="5"> 5</label>
                        <label><input type="radio" name="course_material13" value="4"> 4</label>
                        <label><input type="radio" name="course_material13" value="3"> 3</label>
                        <label><input type="radio" name="course_material13" value="2"> 2</label>
                        <label><input type="radio" name="course_material13" value="1"> 1</label>
                    </div>

                    <h3>II.  PROGRAM / COURSES ADMINISTRATION: </h3>
                    <p>1.   Completion of syllabus on time.</p>
                    <div class="rating-options">
                        <label><input type="radio" name="class_teaching14" value="5"> 5</label>
                        <label><input type="radio" name="class_teaching14" value="4"> 4</label>
                        <label><input type="radio" name="class_teaching14" value="3"> 3</label>
                        <label><input type="radio" name="class_teaching14" value="2"> 2</label>
                        <label><input type="radio" name="class_teaching14" value="1"> 1</label>
                    </div>
                    <p>2.	Online Teaching Methodology adaptation.</p>
                    <div class="rating-options">
                        <label><input type="radio" name="class_teaching1" value="5"> 5</label>
                        <label><input type="radio" name="class_teaching1" value="4"> 4</label>
                        <label><input type="radio" name="class_teaching1" value="3"> 3</label>
                        <label><input type="radio" name="class_teaching1" value="2"> 2</label>
                        <label><input type="radio" name="class_teaching1" value="1"> 1</label>
                    </div><p>3. Semester End Examination Process</p>
                    <div class="rating-options">
                        <label><input type="radio" name="class_teaching2" value="5"> 5</label>
                        <label><input type="radio" name="class_teaching2" value="4"> 4</label>
                        <label><input type="radio" name="class_teaching2" value="3"> 3</label>
                        <label><input type="radio" name="class_teaching2" value="2"> 2</label>
                        <label><input type="radio" name="class_teaching2" value="1"> 1</label>
                    </div>

                    <h3>III.    Resources Availability at College Campus: </h3>
                    <p>1. Availability of Books/ Journals and Library.</p>
                    <div class="rating-options">
                        <label><input type="radio" name="class_teaching3" value="5"> 5</label>
                        <label><input type="radio" name="class_teaching3" value="4"> 4</label>
                        <label><input type="radio" name="class_teaching3" value="3"> 3</label>
                        <label><input type="radio" name="class_teaching3" value="2"> 2</label>
                        <label><input type="radio" name="class_teaching3" value="1"> 1</label>
                    </div>
                    <p>2.   Completion of syllabus on time.</p>
                    <div class="rating-options">
                        <label><input type="radio" name="class_teaching5" value="5"> 5</label>
                        <label><input type="radio" name="class_teaching5" value="4"> 4</label>
                        <label><input type="radio" name="class_teaching5" value="3"> 3</label>
                        <label><input type="radio" name="class_teaching5" value="2"> 2</label>
                        <label><input type="radio" name="class_teaching5" value="1"> 1</label>
                    </div>
                    <p>3.    Availability of parking facility.</p>
                    <div class="rating-options">
                        <label><input type="radio" name="class_teaching9" value="5"> 5</label>
                        <label><input type="radio" name="class_teaching9" value="4"> 4</label>
                        <label><input type="radio" name="class_teaching9" value="3"> 3</label>
                        <label><input type="radio" name="class_teaching9" value="2"> 2</label>
                        <label><input type="radio" name="class_teaching9" value="1"> 1</label>
                    </div>
                    <p>4.  	Availability of Sports Facilities.</p>
                    <div class="rating-options">
                        <label><input type="radio" name="class_teaching8" value="5"> 5</label>
                        <label><input type="radio" name="class_teaching8" value="4"> 4</label>
                        <label><input type="radio" name="class_teaching8" value="3"> 3</label>
                        <label><input type="radio" name="class_teaching8" value="2"> 2</label>
                        <label><input type="radio" name="class_teaching8" value="1"> 1</label>
                    </div>
                    <p>5.	Washroom & water facilities.</p>
                    <div class="rating-options">
                        <label><input type="radio" name="class_teaching0" value="5"> 5</label>
                        <label><input type="radio" name="class_teaching0" value="4"> 4</label>
                        <label><input type="radio" name="class_teaching0" value="3"> 3</label>
                        <label><input type="radio" name="class_teaching0" value="2"> 2</label>
                        <label><input type="radio" name="class_teaching0" value="1"> 1</label>
                    </div>



                    <!-- More questions can be added similarly -->

                    <button type="submit">Submit Feedback</button>
                </form>
            </div>
        </div>
    </body>
    </html>