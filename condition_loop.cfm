<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to ColdFusion</title>
</head>
<body>
    
                <strong style="margin-left:500px"> Tag based approach <br></strong>
    <cfset numbers = [1,2,3,4,5]>
    <cfloop array="#numbers#" index="num">
        <cfif num MOD 2 EQ 0>
            <cfoutput>#num# is Even<br></cfoutput>
        <cfelse>
            <cfoutput>#num# is Odd<br></cfoutput>
        </cfif>
    </cfloop> 

    <br><br>

                <strong style="margin-left:500px"> Script based approach <br></strong>
    <cfscript>
        numbers="1,2,3,4,5".listToArray(",");
        for(num in numbers){
            if(num%2==0) {
                writeOutput(num & "is Even <br>");
            } else {
                writeOutput(num & " is Odd<br>");
            }
        }
    </cfscript>
     
</body>
</html>
