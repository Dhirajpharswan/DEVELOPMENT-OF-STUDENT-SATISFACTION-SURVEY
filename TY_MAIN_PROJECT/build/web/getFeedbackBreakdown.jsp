<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Breakdown</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        table {
            width: 50%;
            margin: 20px auto;
            border-collapse: collapse;
            font-size: 18px;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        table th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
    <h2>Rating Breakdown for <%= request.getParameter("category") %></h2>
    <table>
        <thead>
            <tr>
                <th>Rating</th>
                <th>Count</th>
            </tr>
        </thead>
        <tbody>
            <%
                String category = request.getParameter("category");
                String column = category.replace(" ", "_");

                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "dhiraj@2005");
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery("SELECT " + column + ", COUNT(*) AS count FROM feedback GROUP BY " + column + " ORDER BY " + column);

                    while (rs.next()) {
                        int rating = rs.getInt(1);
                        int count = rs.getInt(2);
            %>
            <tr>
                <td><%= rating %></td>
                <td><%= count %></td>
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
</body>
</html>
