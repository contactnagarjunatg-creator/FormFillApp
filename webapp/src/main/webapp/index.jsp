<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Saidemy DevOps Registration</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: Arial, Helvetica, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background: linear-gradient(135deg,#1e3c72,#2a5298,#6dd5ed);
    background-size:400% 400%;
    animation: gradientBG 10s ease infinite;
}

@keyframes gradientBG{
    0%{
        background-position:0% 50%;
    }
    50%{
        background-position:100% 50%;
    }
    100%{
        background-position:0% 50%;
    }
}

.container{
    width:420px;
    background: rgba(255,255,255,0.15);
    backdrop-filter: blur(12px);
    border-radius:20px;
    padding:40px;
    box-shadow:0 8px 32px rgba(0,0,0,0.3);
    color:white;
}

.container h1{
    text-align:center;
    margin-bottom:10px;
    font-size:32px;
    color:#fff;
}

.container p{
    text-align:center;
    margin-bottom:25px;
    color:#f1f1f1;
    font-size:14px;
}

label{
    font-weight:bold;
    display:block;
    margin-top:15px;
    margin-bottom:6px;
}

input{
    width:100%;
    padding:14px;
    border:none;
    border-radius:10px;
    outline:none;
    font-size:15px;
    background:rgba(255,255,255,0.85);
    transition:0.3s;
}

input:focus{
    transform:scale(1.03);
    box-shadow:0 0 10px #00f7ff;
}

.registerbtn{
    width:100%;
    padding:15px;
    margin-top:25px;
    border:none;
    border-radius:12px;
    background: linear-gradient(to right,#ff512f,#dd2476);
    color:white;
    font-size:18px;
    font-weight:bold;
    cursor:pointer;
    transition:0.4s;
}

.registerbtn:hover{
    background: linear-gradient(to right,#00c6ff,#0072ff);
    transform:translateY(-3px);
}

.signin{
    text-align:center;
    margin-top:20px;
}

.signin a{
    color:#ffe600;
    text-decoration:none;
    font-weight:bold;
}

.signin a:hover{
    text-decoration:underline;
}

hr{
    border:1px solid rgba(255,255,255,0.3);
    margin-bottom:20px;
}

</style>
</head>

<body>

<form action="register.jsp">

<div class="container">

    <h1>Welcome!!</h1>

    <p>Saidemy DevOps Student Registration Form</p>

    <hr>

    <label for="fullname">Full Name</label>
    <input type="text" placeholder="Enter Full Name" name="fullname" id="fullname" required>

    <label for="email">Email Address</label>
    <input type="email" placeholder="Enter Email" name="email" id="email" required>

    <label for="phone">Mobile Number</label>
    <input type="tel" placeholder="Enter Mobile Number" name="phone" id="phone" required>

    <label for="course">Course Name</label>
    <input type="text" placeholder="Enter Course Name" name="course" id="course" required>

    <label for="psw">Password</label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

    <label for="psw-repeat">Repeat Password</label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

    <button type="submit" class="registerbtn">Register Now</button>

    <div class="signin">
        <p>Already have an account?
        <a href="#">Sign In</a></p>
    </div>

</div>

</form>

</body>
</html>
