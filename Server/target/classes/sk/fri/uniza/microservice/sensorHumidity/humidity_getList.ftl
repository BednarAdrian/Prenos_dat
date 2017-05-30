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
                background-color: #50C3FC;
                color: white;
            }

            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #8FCEEF;
                text-align: center;
                padding: 8px;
            }

            tr:nth-child(odd) {
                background-color: #50C3FC;
            }


            #table-scroll {
                height:350px;
                overflow:auto;  
                margin-top:20px;
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
        <h1>Humidity GET all.</h1>

        <div id="table-scroll">
            <table>
                <tr>
                  <th>ID</th>
                  <th>Content</th>
                </tr>
                <#list humidityList as itemFromHumidityList>
                    <tr>
                      <td><p class="thick">${itemFromHumidityList.id}</p></td>
                      <td><p class="thick">${itemFromHumidityList.content}</p></td>
                    </tr>
                </#list>
            </table>
        </div>

        <br />

        <form method="POST" action="/login_check">
            <input type="submit" class="button button1" value="BACK" />
            <input type="hidden" name="id" value="2">
        </form>
    </body>

</html>

