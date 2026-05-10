<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DevOps Registration Portal</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Verdana, sans-serif;
}

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:#0f172a;
    overflow:hidden;
}

/* Animated Background */

.background{
    position:absolute;
    width:100%;
    height:100%;
    overflow:hidden;
}

.background span{
    position:absolute;
    display:block;
    width:25px;
    height:25px;
    background:rgba(0,255,255,0.2);
    animation:animate 20s linear infinite;
    bottom:-150px;
    border-radius:50%;
}

.background span:nth-child(1){
    left:10%;
    width:80px;
    height:80px;
    animation-duration:18s;
}

.background span:nth-child(2){
    left:25%;
    width:40px;
    height:40px;
    animation-duration:12s;
}

.background span:nth-child(3){
    left:40%;
    width:60px;
    height:60px;
    animation-duration:20s;
}

.background span:nth-child(4){
    left:60%;
    width:20px;
    height:20px;
    animation-duration:10s;
}

.background span:nth-child(5){
    left:75%;
    width:100px;
    height:100px;
    animation-duration:22s;
}

.background span:nth-child(6){
    left:90%;
    width:50px;
    height:50px;
    animation-duration:15s;
}

@keyframes animate{
    0%{
        transform:translateY(0) rotate(0deg);
        opacity:1;
    }
    100%{
        transform:translateY(-1000px) rotate(720deg);
        opacity:0;
    }
}

/* Main Card */

.container{
    position:relative;
    width:850px;
    height:540px;
    display:flex;
    border-radius:25px;
    overflow:hidden;
    box-shadow:0 10px 40px rgba(0,0,0,0.5);
    z-index:1;
}

/* Left Side */

.left-panel{
    width:45%;
    background:linear-gradient(to bottom right,#06b6d4,#2563eb);
    color:white;
    padding:60px 40px;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.left-panel h1{
    font-size:42px;
    margin-bottom:20px;
}

.left-panel p{
    font-size:16px;
    line-height:28px;
}

/* Right Side */

.right-panel{
    width:55%;
    background:white;
    padding:40px;
}

.right-panel h2{
    text-align:center;
    margin-bottom:30px;
    color:#1e293b;
    font-size:32px;
}

/* Input */

.input-box{
    margin-bottom:18px;
}

.input-box input,
.input-box select{
    width:100%;
    padding:14px;
    border:1px solid #cbd5e1;
    border-radius:10px;
    outline:none;
    font-size:15px;
    transition:0.3s;
}

.input-box input:focus,
.input-box select:focus{
    border-color:#2563eb;
    box-shadow:0 0 10px rgba(37,99,235,0.4);
}

/* Button */

.registerbtn{
    width:100%;
    padding:15px;
    border:none;
    border-radius:12px;
    background:linear-gradient(to right,#06b6d4,#2563eb);
    color:white;
    font-size:18px;
    cursor:pointer;
    transition:0.4s;
    margin-top:10px;
}

.registerbtn:hover{
    transform:scale(1.03);
    background:linear-gradient(to right,#2563eb,#06b6d4);
}

/* Bottom Text */

.bottom-text{
    text-align:center;
    margin-top:18px;
    color:#555;
}

.bottom-text a{
    color:#2563eb;
    text-decoration:none;
    font-weight:bold;
}

.bottom-text a:hover{
    text-decoration:underline;
}

</style>

</head>

<body>

<div class="background">
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
</div>

<div class="container">

    <!-- LEFT PANEL -->

    <div class="left-panel">

        <h1>🚀 DevOps Portal</h1>

        <p>
            Welcome to Saidemy Professional Registration System.
            Learn AWS, Docker, Kubernetes, Linux, Jenkins,
            Terraform, and Real-Time DevOps Projects.
        </p>

    </div>

    <!-- RIGHT PANEL -->

    <div class="right-panel">

        <h2>Student Registration</h2>

        <form action="register.jsp">

            <div class="input-box">
                <input type="text" placeholder="Full Name" required>
            </div>

            <div class="input-box">
                <input type="email" placeholder="Email Address" required>
            </div>

            <div class="input-box">
                <input type="tel" placeholder="Mobile Number" required>
            </div>

            <div class="input-box">
                <select required>
                    <option value="">Select Course</option>
                    <option>AWS DevOps</option>
                    <option>Linux Administration</option>
                    <option>Docker & Kubernetes</option>
                    <option>Terraform</option>
                </select>
            </div>

            <div class="input-box">
                <input type="password" placeholder="Password" required>
            </div>

            <div class="input-box">
                <input type="password" placeholder="Confirm Password" required>
            </div>

            <button type="submit" class="registerbtn">
                Create Account
            </button>

            <div class="bottom-text">
                Already Registered?
                <a href="#">Login Here</a>
            </div>

        </form>

    </div>

</div>

</body>
</html>
