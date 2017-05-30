<html>

    <head>
        <style>
            body {
                color: #004C4C;
                background-image: url('https://image.ibb.co/c2K0Qv/dark.png'); 
                background-repeat: no-repeat;
                background-size: 100% 100%;
            }
            html {
                height: 100%
            }

            h1 {
                color: #004C4C;
            } 

            .button {
                background-color: #018B8B;
                border: none;
                color: white;
                padding: 0.5px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 0px 0px;
                cursor: pointer;
            }
            .button1 {
                background-color: #E7E172; 
                color: #004C4C; 
                border: 2px solid #018B8B;
            }
            .button1:hover {
                background-color: #018B8B;
                color: white;
            }
        </style>
    </head>

    <body>
        <h1>Sorry, but required content by ID ${getById} in Temperature table does not exist!</h1>

        <form method="POST" action="/login_check">
            <input type="submit" class="button button1" value="BACK" />
            <input type="hidden" name="id" value="1">
        </form>
    </body>

</html>

