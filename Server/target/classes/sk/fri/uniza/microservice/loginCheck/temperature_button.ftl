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

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
        <script>
        $(document).ready(function(){
            $(frmGetById.txtGetId).keyup(function(){
                $(frmGetById).get(0).setAttribute('action', '/temperature/'+$(frmGetById.txtGetId).val());
            });
        });
        </script>

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
        <script>
        $(document).ready(function(){
            $(frmDelete.txtDelete).keyup(function(){
                $(frmDelete).get(0).setAttribute('action', '/temperature/'+$(frmDelete.txtDelete).val());
            });
        });
        </script>
    </head>

    <body>
        <h1>Temperature sensor.</h1>

        <form id="frmGet" method="GET" action="/temperature">
            <input type="submit" class="button button1" id="subGet" value="GET" />
        </form>

        <form id="frmPost" method="POST" action="/temperature">
            <input type="submit" class="button button1" id="subPost" value="POST" />
            <input type="hidden" name="postId" value="0">
            <input type="text" name="postContent" id="txtPost" placeholder="Enter content" required />
        </form>

        <form id="frmGetById" method="GET" action="">
            <input type="submit" class="button button1" id="subGetId" value="GET by ID" />
            <input type="text" pattern="^[1-9][0-9]*$" id="txtGetId" placeholder="Enter ID number" required />
        </form>

        <form id="frmDelete" method="POST" action="">
            <input type="submit" class="button button1" id="subDeleteId" value="DELETE by ID" />
            <input type="text" pattern="^[1-9][0-9]*$" id="txtDelete" placeholder="Enter ID number" required />
        </form>

        <form id="frmPut" method="POST" action="/temperature">
            <input type="submit" class="button button1" id="subPut" value="PUT" />
            <input type="text" name="postId" pattern="^[1-9][0-9]*$" id="txtPutId" placeholder="Enter ID number" required />
            <input type="text" name="postContent" id="txtPutContent" placeholder="Enter content" required />
        </form>

        <form method="GET" action="/login_check">
            <input type="submit" class="button button1" value="BACK" />
        </form>
    </body>

</html>
