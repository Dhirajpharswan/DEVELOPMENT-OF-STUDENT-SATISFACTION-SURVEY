<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Survey Submitted</title>
</head>
<body>

<h1>Thank you for completing the survey!</h1>

<%
// Fetch form data safely
String necessary_Information = request.getParameter("course_material11");
String Staff_Members = request.getParameter("course_material12");
String Admission_Process = request.getParameter("course_material13");
String Completion_of_syllabus = request.getParameter("class_teaching14");
String Teaching_Methodology1 = request.getParameter("class_teaching1");
String Examination_Process = request.getParameter("class_teaching2");
String Journals_and_Library = request.getParameter("class_teaching3");
String parking_facility = request.getParameter("class_teaching5");
String Sports_Facilities = request.getParameter("class_teaching9");
String Washroom_water = request.getParameter("class_teaching8");
String syllabus_on_time = request.getParameter("class_teaching0");

Connection conn = null;
PreparedStatement ps = null;

try {
    // Load the MySQL JDBC driver (use the updated one)
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Establish connection to the database
    String dbURL = "jdbc:mysql://localhost:3306/student";
    String user = "root";
    String pass = "root";
    conn = DriverManager.getConnection(dbURL, user, pass);

    // SQL query to insert form data into the database
    String query = "INSERT INTO feedback (necessary_Information, Staff_Members, Admission_Process, Completion_of_syllabus, Teaching_Methodology1, Examination_Process, Journals_and_Library, syllabus_on_time, parking_facility, Sports_Facilities, Washroom_water) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    ps = conn.prepareStatement(query);
    ps.setString(1, necessary_Information);
    ps.setString(2, Staff_Members);
    ps.setString(3, Admission_Process);
    ps.setString(4, Completion_of_syllabus);
    ps.setString(5, Teaching_Methodology1);
    ps.setString(6, Examination_Process);
    ps.setString(7, Journals_and_Library);
    ps.setString(8, syllabus_on_time);
    ps.setString(9, parking_facility);
    ps.setString(10, Sports_Facilities);
    ps.setString(11, Washroom_water);

    // Execute the update
    int result = ps.executeUpdate();

    if(result > 0) {
        out.println("<p>Survey submitted successfully!</p>");
    } else {
        out.println("<p>Error in submitting survey. Please try again.</p>");
    }
} catch (ClassNotFoundException e) {
    out.println("<p>Database driver not found: " + e.getMessage() + "</p>");
    e.printStackTrace();
} catch (SQLException e) {
    out.println("<p>Error connecting to the database: " + e.getMessage() + "</p>");
    e.printStackTrace();
} finally {
    try {
        if(ps != null) ps.close();
        if(conn != null) conn.close();
    } catch (SQLException e) {
        out.println("<p>Error closing resources: " + e.getMessage() + "</p>");
        e.printStackTrace();
    }
}
%>

</body>
</html>
    