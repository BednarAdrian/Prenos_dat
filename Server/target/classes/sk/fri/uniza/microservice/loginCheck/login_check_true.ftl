<html>

<head>
        <style>
            body {
                color: maroon;
                background-image: url('https://image.ibb.co/f1Lksa/forest.png'); 
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
                background-color: maroon;
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
                border: 2px solid maroon;
            }
            .button1:hover {
                background-color: maroon;
                color: white;
            }

            .button-container form,
            .button-container form div {
                display: inline;
            }

            .button-container button {
                display: inline;
                vertical-align: middle;
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
        <h1>Awww Yeah! Welcome back ${string?html} :)</h1>
        <p class="thick">Please, choose a sensor.</p>
        <div class="button-container">
            <form method="POST" action="/login_check">
                <input type="submit" class="button button1" value="Temperature sensor">
                <input type="hidden" name="id" value="1">
            </form>

            <form method="POST" action="/login_check">
                <input type="submit" class="button button1" value="Humidity sensor">
                <input type="hidden" name="id" value="2">
            </form>
        </div>
    </body>

</html>
