

<?php
    include './conn.php';
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgb(255, 180, 40);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

       /* Header Styles */
       .header {
            background-color: #000000;
            color: #fff;
            /* padding: 20px 0; */
            text-align: center;
            position: relative;
            width: 100%;
        }

        .navbar {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
        }

        .navbar ul {
            list-style: none;
            padding: 0;
            display: flex;
            gap: 15px;
            justify-content: center;
            align-items: center;
        }

        .navbar ul li {
            display: inline;
        }

        .navbar ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: 600;
            padding: 5px 10px;
        }

        .navbar ul li a:hover {
            color: orange;
            text-decoration: underline;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .logo {
            display: block;
            margin: 10px auto;
            max-width: 150px;
            height: auto;
        }

        .profile-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .profile-header img {
            border-radius: 50%;
            width: 120px;
            height: 120px;
            object-fit: cover;
        }

        .profile-header h1 {
            margin: 0;
            font-size: 24px;
        }

        .profile-header p {
            margin: 5px 0;
            color: #666;
        }

        .profile-header .btn {
            background-color: #0073b1;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            font-weight: bold;
        }

        .profile-header .btn:hover {
            background-color: #005582;
        }

        .profile-details {
            background: #fff;
            padding: 20px;
            margin-top: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .profile-details h2 {
            margin-top: 0;
        }

        .job-applied {
            margin-top: 20px;
        }

        .job-applied .card {
            background: #fff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .job-applied .card h3 {
            margin-top: 0;
        }

        .job-applied .card p {
            margin: 10px 0;
            color: #666;
        }

        .card-button {
            background-color: black;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }

        .card-button:hover {
            background-color: #000000;
        }


        /* Footer Styles */
        .footer {
            background-color: #000000;
            color: #ffffff;
            text-align: center;
            padding: 10px 0;
        }

        .footer p {
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .profile-header {
                flex-direction: column;
                align-items: flex-start;
            }

            .profile-header img {
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header class="header">
        <div class="container">
<a href="index.php">
    <img src="./brand4.png" alt="Logo" class="logo">

</a>
            <nav class="navbar">
                <ul>
                    <li><a href="index.php #home">Home</a></li>
                    <li><a href="#job">Job Applied</a></li>
                    <li><a href="#info">Info</a></li>
                </ul>
            </nav>


        </div>
    </header>

    <div class="container">
        <div class="profile-header">
           <div id="profile-column" style="display: flex; flex-direction: column;">
            <img src="./doctor.jpg" alt="Profile Picture">
            <br>
            <h1><?php echo $_SESSION['name'] ?></h1>
            <p><?php echo $_SESSION['position'] ?></p>
            <p><?php echo $_SESSION['email'] ?></p>
        </div>
        <br>
            <div style="display:flex;flex-direction:column; width:fit-content; justify-content-space-between">
               <?php echo"
                <a href='editprofile.php' style='margin: 1em;' class='btn mb-5 '>Edit</a>
                ";?>
                <?php echo"
                <a href='logout.php' class='btn mt-5 '>Log Out</a>
                ";?>
            </div>
        </div>

        <div class="profile-details" id="info">
            <h2>Profile Details</h2>
            <p>Address: <?php echo htmlspecialchars($_SESSION['address'])?></p>
            <p>Phone: <?php echo $_SESSION['phone']?></p>
            <p>Skills: <?php echo $_SESSION['position']?></p>
        </div>
        <section class='job-applied' id='job'>
        <h2>Job Applied</h2>

        <?php
$name = mysqli_real_escape_string($connection, $_SESSION['name']);
$query = "SELECT * FROM hiring WHERE fullname = '$name'";
$res = mysqli_query($connection, $query);

if($res && mysqli_num_rows($res) > 0) {
    while($row = mysqli_fetch_assoc($res)){
        echo "
            <div class='card'>
                <h3>{$row['position']}</h3>
                <p><strong>Full Name:</strong> {$row['fullname']}</p>
                <p><strong>Email Address:</strong> {$row['email']}</p>
                <p><strong>Resume:</strong> <a href='{$row['resume']}'>{$row['resume']}</a></p>
                <p><strong>Cover Letter:</strong> {$row['coverletter']}</p>
                <a href='services.php?id={$row['id']}'>
                    <button class='card-button'>View Post</button>
                </a>
            </div>
       ";

    }
} else {
    echo "<section class='job-applied' id='job'>
        <h2>No Jobs Applied</h2>
        <p>You have not applied for any jobs yet.</p>
    </section>";
}
?>
 </section>
    </div>
<!-- Footer Section -->
<footer class="footer">
    <div class="container">
        <p>&copy; 2024 Service Hub. All rights reserved.</p>
    </div>
</footer>

    <script>
        // // Example JavaScript for interactivity
        // document.querySelectorAll('.card-button').forEach(button => {
        //     button.addEventListener('click', function() {
        //         alert('Viewing details for ' + this.previousElementSibling.previousElementSibling.textContent);
        //    

        // JavaScript for smooth scrolling
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();

                const target = document.querySelector(this.getAttribute('href'));
                target.scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });



    </script>
</body>
</html>