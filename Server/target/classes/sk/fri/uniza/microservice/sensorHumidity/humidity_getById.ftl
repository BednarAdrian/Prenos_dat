<html>

    <head>
        <style>
            body {
                color: #166087;
                background-image: url('https://image.ibb.co/iqKdCa/winter.jpg'); 
                background-repeat: no-repeat;
                background-size: 100% 100%;
            }
            html {
                height: 100%
            }

            h1 {
                color: #166087;
            } 

            .button {
                background-color: #8FCEEF;
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
                color: #166087; 
                border: 2px solid #8FCEEF;
            }
            .button1:hover {
                background-color: #8FCEEF;
                color: white;
            }
        </style>
    </head>

    <body>
        <!--  calls getHumidity().getContent() and sanitizes it -->
        <h1>Humidity by ID ${humidity.id} ==> Content: ${humidity.content?html}.</h1>
        
        <form method="POST" action="/login_check">
            <input type="submit" class="button button1" value="BACK" />
            <input type="hidden" name="id" value="2">
        </form>
    </body>

</html>
