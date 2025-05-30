<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management System</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8fafc;
            padding: 30px;
            color: #333;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
            overflow: hidden;
        }

        .header {
            background-color: #2563eb;
            color: white;
            padding: 40px 20px;
            text-align: center;
        }

        .header h1 {
            font-size: 2.2rem;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 1rem;
            opacity: 0.9;
        }

        .content {
            padding: 30px;
        }

        .modules-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .module-card {
            background-color: #f1f5f9;
            padding: 25px;
            border-radius: 10px;
            border: 1px solid #e2e8f0;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .module-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
        }

        .module-header {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-bottom: 20px;
        }

        .module-icon {
            background-color: #e0f2fe;
            color: #0284c7;
            width: 45px;
            height: 45px;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
        }

        .module-title {
            font-size: 1.3rem;
            font-weight: 600;
        }

        .action-list {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .action-btn {
            display: flex;
            align-items: center;
            gap: 10px;
            background-color: white;
            border: 1px solid #d1d5db;
            padding: 12px 16px;
            border-radius: 8px;
            text-decoration: none;
            color: #374151;
            font-weight: 500;
            transition: background-color 0.3s, color 0.3s;
        }

        .action-btn:hover {
            background-color: #e0f2fe;
            color: #1e40af;
        }

        .footer {
            text-align: center;
            padding: 20px;
            font-size: 0.9rem;
            background-color: #f1f5f9;
            color: #64748b;
        }

        @media (max-width: 600px) {
            .header h1 {
                font-size: 1.6rem;
            }

            .content {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header class="header">
            <h1>Hotel Management System</h1>
            <p>"Smart control for seamless hotel operations"</p>
        </header>

        <div class="content">
            <div class="modules-grid">
                <!-- Reservations Module -->
                <div class="module-card">
                    <div class="module-header">
                        <div class="module-icon">
                            <i class="fas fa-door-open"></i>
                        </div>
                        <h2 class="module-title">Reservations</h2>
                    </div>
                    <div class="action-list">
                        <a href="reservationadd.jsp" class="action-btn">
                            <i class="fas fa-plus"></i> Add New Reservation
                        </a>
                        <a href="reservationupdate.jsp" class="action-btn">
                            <i class="fas fa-edit"></i> Update Reservation
                        </a>
                        <a href="reservationdelete.jsp" class="action-btn">
                            <i class="fas fa-times"></i> Cancel Reservation
                        </a>
                        <a href="displayReservations" class="action-btn">
                            <i class="fas fa-list"></i> View All Reservations
                        </a>
                    </div>
                </div>

                <!-- Reports Module -->
                <div class="module-card">
                    <div class="module-header">
                        <div class="module-icon" style="background-color:#ede9fe; color:#7c3aed;">
                            <i class="fas fa-clipboard-list"></i>
                        </div>
                        <h2 class="module-title">Reports</h2>
                    </div>
                    <div class="action-list">
                        <a href="reportCriteria" class="action-btn">
                            <i class="fas fa-file-alt"></i> Generate Reports
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer">
            &copy; <script>document.write(new Date().getFullYear())</script> Hotel Management System by raghavendrapk. All rights reserved.
        </footer>
    </div>
</body>
</html>
