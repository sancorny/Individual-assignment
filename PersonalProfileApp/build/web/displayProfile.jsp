<%@ page contentType="text/html" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Profile</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial;
            background: linear-gradient(135deg, #a8e6cf, #dcedc1);
            margin: 0;
            padding: 0;
        }

        .card {
            width: 50%;
            margin: 60px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 18px rgba(0,0,0,0.15);
            animation: fadeIn 0.7s ease-in-out;
        }

        h2 {
            text-align: center;
            color: black;
            margin-bottom: 20px;
            font-size: 28px;
        }

        p {
            font-size: 17px;
            padding: 10px 0;
            border-bottom: 1px solid #e0e0e0;
        }

        p b {
            color: #1b5e20;
        }

        .back-btn {
            display: block;
            width: 200px;
            margin: 25px auto 0;
            padding: 12px;
            text-align: center;
            background: #4caf50;
            color: white;
            font-size: 16px;
            text-decoration: none;
            border-radius: 10px;
            transition: 0.3s;
        }

        .back-btn:hover {
            background: #388e3c;
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>

<div class="card">
    <h2>Your Personal Profile</h2>

    <p><b>Name:</b> ${name}</p>
    <p><b>Student ID:</b> ${studentId}</p>
    <p><b>Program:</b> ${program}</p>
    <p><b>Email:</b> ${email}</p>
    <p><b>Hobbies:</b> ${hobbies}</p>
    <p><b>About Me:</b> ${intro}</p>

    <!-- Back button -->
    <a href="profile_form.html" class="back-btn">Back to Form</a>
</div>

</body>
</html>
