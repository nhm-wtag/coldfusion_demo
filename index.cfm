<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to ColdFusion</title>
</head>
<body>
    
            <!--- tag based approach --->
    <cfset name = "John Doe">
    <cfoutput>Welcome, #name# <br></cfoutput>


            <!--- script based approch --->
    <cfscript>
        name = "Johns Doe";
        writeOutput("Welcome, " & name & "!");
    </cfscript>
    
</body>
</html>
