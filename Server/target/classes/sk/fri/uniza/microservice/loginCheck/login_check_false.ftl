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
        <h1>Oh no! Wrong username or password :(</h1>
        <p class="thick">Please, go back and try again.</p>

        <form method="GET" action="/login">
            <input type="submit" class="button button1" value="BACK" />
        </form>
    </body>

</html>
