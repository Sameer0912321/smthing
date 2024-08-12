<?php
    include './conn.php';
    session_start();
?>
<?php
    // if(isset($_GET['id'])){
    $name = mysqli_real_escape_string($connection, $_SESSION['name']);
    $query = "SELECT * FROM hiring WHERE fullname = '$name'";
    $res = mysqli_query($connection, $query);
    while ($info = mysqli_fetch_array($res)){
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css">
    <style>
        /* General Styles */
        body {
            font-family: 'Open Sans', sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        h1,
        h2,
        h3 {
            color: orange;
            margin-top: 0;
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


        /* Hiring Details Styles */
        .hiring-details {
            background-color: #fff;
            padding: 40px 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 40px;
        }

        .job-listings {
            display: grid;
            grid-template-columns: 1fr;
            gap: 20px;
        }

        .job-card {
            background-color: #fafafa;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .job-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
        }

        .job-card h3 {
            margin-bottom: 10px;
        }

        /* Hiring Form Styles */
        .hiring-form {
            background-color: #fff;
            padding: 40px 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 40px;
        }

        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 20px;
        }

        .form-group {
            flex: 1;
            min-width: 250px;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 1em;
        }

        .form-group textarea {
            resize: vertical;
        }

        .submit-button {
            background-color: orange;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            font-weight: 600;
            transition: background-color 0.3s;
        }

        .submit-button:hover {
            background-color: rgba(255, 166, 0, 0.822);
        }

        /* Contact Section Styles */
        .contact-section {
            background-color: #fff;
            padding: 40px 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 40px;
            text-align: center;
        }

        .contact-section a {
            color: #000000;
            text-decoration: none;
            font-weight: bold;
        }

        .contact-section a:hover {
            font-weight: bold;
            color: orange;
        }

        .btn {
            display: inline-block;
            background-color: orange;
            color: rgb(255, 255, 255);
            padding: 10px 20px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
            border: none;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        .btn:hover {
            background-color: rgba(255, 166, 0, 0.911);
            transform: scale(1.05);
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

        /* Responsive Styles */
        @media (min-width: 768px) {
            .job-listings {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (min-width: 992px) {
            .form-row {
                flex-wrap: nowrap;
            }
        }
    </style>
</head>
<body>
<header class="header">
        <div class="container">
        <a href="index.php">
        <img src="./brand4.png" alt="Logo" class="logo">

        </a>
        <nav class="navbar">
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="index.php #apply-now">Feedback form</a></li>
                    <li><a href="index.php #contact">Contact Us</a></li>
                </ul>
            </nav>


        </div>
    </header>
<main>
<section>
    <form class="mt-5" style="padding: 0% 10%;" method="post">
        <!-- 2 column grid layout with text inputs for the first and last names -->
        <div class="row mb-4" x>
          <div class="col">
            <div data-mdb-input-init class="form-outline">
              <input type="text" id="form3Example1" class="form-control" value="<?php echo $info[1]?>" />
              <label class="form-label" for="form3Example1">Full name</label>
            </div>
          </div>
          <div class="col">
            <div data-mdb-input-init class="form-outline">
              <input type="text" id="form3Example2" class="form-control" value="<?php echo $info[4]?>" />
              <label class="form-label" for="form3Example2">Address</label>
            </div>
          </div>
        </div>
      
        <!-- Email input -->
        <div data-mdb-input-init class="form-outline mb-4">
          <input type="email" id="form3Example3" class="form-control" value="<?php echo $info[2]?>"  />
          <label class="form-label" for="form3Example3">Email address</label>
        </div>
      
        <!-- Password input -->
        <div data-mdb-input-init class="form-outline mb-4">
          <input type="tel" id="form3Example4" class="form-control" value="<?php echo $info[3]?>" />
          <label class="form-label" for="form3Example4">Phone Number</label>
        </div>
        <div data-mdb-input-init class="form-outline mb-4">
          <input type="text" id="form3Example4" class="form-control" value="<?php echo $info[9]?>" />
          <label class="form-label" for="form3Example4">Skills</label>
        </div>
        <div data-mdb-input-init class="form-outline mb-4">
          <input type="number" id="form3Example4" class="form-control" value="<?php echo $info[10]?>" />
          <label class="form-label" for="form3Example4">Years Of Experience</label>
        </div>
                    
        <!-- Submit button -->
        <button data-mdb-ripple-init type="submit" name='updatebtn' class="btn btn-block mb-4">Update</button>
      
        <!-- Register buttons -->
      </form>
      
</section>
</body>
<?php 
    }
?>
</html>
<?php
        if(isset($_POST['updatebtn'])){
            $name = $_SESSION['name'];
            $email = $_SESSION['email'];
            $skills = $_SESSION['skills'];
            $address = $_SESSION['address'];
            $edu = $_SESSION['edu'];
            $experience = $_SESSION['experience'];
            $phone = $_SESSION['phone'];
            $updateQuery = "UPDATE hiring SET 
            fullname = '$name',
            address = '$address',
            email = '$email',
            edu = '$edu',
            phone = '$phone',
            skills = '$skills',
            experience = '$experience'
            WHERE fullname = '$name'";
            $res = mysqli_query($connection,$updateQuery);
            if($res){
                header('location:./user.php');
            }
            else{
                echo"failed";
            }
    }
      ?>