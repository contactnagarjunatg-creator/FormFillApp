<!DOCTYPE html>
<html>
<head>
    <title>Simple Registration Form</title>

    <style>
        body{
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .container{
            width: 350px;
            background: white;
            padding: 25px;
            margin: 80px auto;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }

        h2{
            text-align: center;
            color: #333;
        }

        input, select{
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button{
            width: 100%;
            padding: 10px;
            background: blue;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        button:hover{
            background: darkblue;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Student Registration Form</h2>

    <form>

        <input type="text" placeholder="Enter Full Name" required>

        <input type="email" placeholder="Enter Email" required>

        <input type="tel" placeholder="Enter Mobile Number" required>

        <select required>
            <option value="">Select Course</option>
            <option>AWS DevOps</option>
            <option>Linux</option>
            <option>Docker</option>
            <option>Kubernetes</option>
        </select>

        <input type="password" placeholder="Enter Password" required>

        <button type="submit">Register</button>

    </form>

</div>

</body>
</html>
