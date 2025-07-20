<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet, java.sql.DriverManager, java.sql.SQLException, java.util.HashMap, java.util.Map" %> 

<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Charts</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 20px auto;
        }
        h1, h2 {
            text-align: center;
            color: #343a40;
        }
        .table-container {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
            text-align: left;
            background: #fff;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }
        table th {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }
        table tbody tr:hover {
            background-color: #f1f1f1;
            transition: 0.3s;
        }
        .chart-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            margin: 20px auto;
        }
        .chart-box {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        canvas {
            width: 400px !important;
            height: 300px !important;
        }
    </style>
</head>
<body>
    <h1>Feedback Charts</h1>

    <div class="container">
        <div class="table-container">
            <h2>Feedback by Program and Semester</h2>
            <table>
                <thead>
                    <tr>
                        <th>Program</th>
                        <th>Semester</th>
                        <th>Number of Students</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        try {
                            String dbURL = "jdbc:mysql://localhost:3306/student";
                            String user = "root";
                            String pass = "dhiraj@2005";
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            conn = DriverManager.getConnection(dbURL, user, pass);
                            String query = "SELECT program, semester, COUNT(*) AS student_count FROM registration GROUP BY program, semester";
                            stmt = conn.createStatement();
                            rs = stmt.executeQuery(query);
                            while (rs.next()) {
                                String program = rs.getString("program");
                                int semester = rs.getInt("semester");
                                int studentCount = rs.getInt("student_count");
                    %>
                    <tr>
                        <td><%= program %></td>
                        <td><%= semester %></td>
                        <td><%= studentCount %></td>
                    </tr>
                    <% 
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
                            if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
                            if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
                        }
                    %>
                </tbody>
            </table>
        </div>

        <div class="chart-container">
            <% 
                try {
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "dhiraj@2005");
                    String feedbackQuery = "SELECT necessary_Information, Staff_Members, Admission_Process, Completion_of_syllabus, Teaching_Methodology1, Examination_Process, Journals_and_Library, syllabus_on_time, parking_facility, Sports_Facilities, Washroom_water FROM feedback";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(feedbackQuery);

                    String[] questionLabels = {
                        "Availability of necessary Information",
                        "Courtesy of Staff Members",
                        "Admission Process",
                        "Completion of Syllabus",
                        "Teaching Methodology",
                        "Examination Process",
                        "Journals and Library",
                        "Syllabus on Time",
                        "Parking Facility",
                        "Sports Facilities",
                        "Washroom & Water"
                    };

                    int totalResponses = 0;
                    Map<String, int[]>  
                    categoryCounts = new HashMap<>();
                    String[] categories = {"poor", "satisfactory", "good", "very good", "excellent"};
                    
                    for (String label : questionLabels) {
                        categoryCounts.put(label, new int[5]);
                    }

                    while (rs.next()) {
                        totalResponses++;
                        for (int i = 0; i < questionLabels.length; i++) {
                            int rating = rs.getInt(i + 1);
                            if (rating >= 1 && rating <= 5) {
                                categoryCounts.get(questionLabels[i])[rating - 1]++;
                            }
                        }
                    }

                    for (int i = 0; i < questionLabels.length; i++) {
                        out.println("<div class='chart-box'>");
                        out.println("<h3>" + questionLabels[i] + "</h3>");
                        out.println("<canvas id='chart" + i + "'></canvas>");
                        out.println("</div>");
                        out.println("<script>");
                        out.println("const ctx" + i + " = document.getElementById('chart" + i + "').getContext('2d');");
                        out.println("new Chart(ctx" + i + ", { type: 'bar', data: { labels: ['Poor', 'Satisfactory', 'Good', 'Very Good', 'Excellent'], datasets: [{ label: 'Responses', data: [");
                        for (int j = 0; j < 5; j++) {
                            double percentage = (totalResponses > 0) ? ((double) categoryCounts.get(questionLabels[i])[j] / totalResponses) * 100 : 0;
                            out.print(String.format("%.2f", percentage));
                            if (j < 4) out.print(", ");
                        }
                        out.println("], backgroundColor: 'rgba(54, 162, 235, 0.5)', borderColor: 'rgba(54, 162, 235, 1)', borderWidth: 1 }]}, options: { scales: { y: { beginAtZero: true, max: 100 } } }});");
                        out.println("</script>");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </div>
    </div>
</body>
</html>