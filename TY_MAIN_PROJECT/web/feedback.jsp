<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Visualization</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            font-family: Arial, sans-serif;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <h1 style="text-align:center;">Feedback Visualization</h1>
    <table>
        <thead>
            <tr>
                <th>Necessary Information</th>
                <th>Staff Members</th>
                <th>Admission Process</th>
                <th>Completion of Syllabus</th>
                <th>Teaching Methodology</th>
                <th>Examination Process</th>
                <th>Journals & Library</th>
                <th>Parking Facility</th>
                <th>Sports Facilities</th>
                <th>Washroom Water</th>
                <th>Syllabus on Time</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Database connection parameters
                String dbURL = "jdbc:mysql://localhost:3306/student";
                String user = "root";
                String pass = "dhiraj@2005";

                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    // Load MySQL JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish connection
                    conn = DriverManager.getConnection(dbURL, user, pass);

                    // Execute SQL query to fetch data
                    String query = "SELECT * FROM feedback";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(query);

                    // Display data in the table
                    while(rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getString("necessary_Information") %></td>
                            <td><%= rs.getString("Staff_Members") %></td>
                            <td><%= rs.getString("Admission_Process") %></td>
                            <td><%= rs.getString("Completion_of_syllabus") %></td>
                            <td><%= rs.getString("Teaching_Methodology1") %></td>
                            <td><%= rs.getString("Examination_Process") %></td>
                            <td><%= rs.getString("Journals_and_Library") %></td>
                            <td><%= rs.getString("parking_facility") %></td>
                            <td><%= rs.getString("Sports_Facilities") %></td>
                            <td><%= rs.getString("Washroom_water") %></td>
                            <td><%= rs.getString("syllabus_on_time") %></td>
                        </tr>
            <%
                    }
                } catch (ClassNotFoundException e) {
                    out.println("<tr><td colspan='11'>Database driver not found: " + e.getMessage() + "</td></tr>");
                } catch (SQLException e) {
                    out.println("<tr><td colspan='11'>Error fetching data: " + e.getMessage() + "</td></tr>");
                } finally {
                    // Close resources
                    if(rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if(stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if(conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
        </tbody>
    </table>
</body>
</html>
