<html>

    <head>
        <style>
            body {
                color: maroon;
                background-image: url('https://image.ibb.co/dFrrXa/mountain.png'); 
                background-repeat: no-repeat;
                background-size: 100% 100%;
            }
            html {
                height: 100%
            }

            h1 {
                color: maroon;
            } 

            .button {
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 1em 0px;
                cursor: pointer;
            }
            .button1 {
                background-color: white; 
                color: maroon; 
                border: 2px solid #4CAF50;
            }
            .button1:hover {
                background-color: #4CAF50;
                color: white;
            }

            p {
                display: block;
                -webkit-margin-before: 1em;
                -webkit-margin-after: 0em;
                -webkit-margin-start: 0px;
                -webkit-margin-end: 0px;
            }
            p.thick {
                font-weight: bold;
            }
        </style>
    </head>

    <body>
        <h1>Please login.</h1>

        <form method="POST" action="/login_check">
            <p class="thick">Username:</p> <input type="text" name="name" id="name" placeholder="Enter username" required><br>
            <p class="thick">Password:</p> <input type="password" name="password" id="password" placeholder="Enter password" required><br>
            <input type="hidden" name="id" value="0">
            <input type="submit" class="button button1" value="Login">
        </form>
    </body>

</html>