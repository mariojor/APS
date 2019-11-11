<!DOCTYPE html>
<html>  
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>pagina em HTML e ASP</title>  
</head>  

    <div>
        <p>Form teste</p>  
        <form action="index.asp" method="post">
        <div>Nome: </div><input type="text" name="nome"> 
        <div>Endereco: </div><input type="text" name="endereco">
        <input type="submit" value="enviar" />
        </form>

        <%
            dim nome
            dim endereco
            dim testesupremo
            'via get QueryString
            'via post Request
            'via request.form
            nome=Request("nome")
            endereco=Request("endereco")
            If nome<>"" Then
                Response.Write("Oi " & nome & " seu endereço é " & endereco & "!<br>")
            else
                Response.Write("How are you today?")
            End If

            'form só funcionavia post
            response.write "<div>Nome: </div>" & request.form("nome") 
            response.write "<div>Endereço: </div>" & request.form("endereco") 

            'set teste
            'teste = request.servervariables("remote_addr"))
            'response.write "<div>TESTE </div>" & teste 
            
        %>
======================================================
        <div><h3>FOR</h3></div>

        <%  
            response.write "Olá!!! Abaixo uma rotina com o objeto response.write cujo texto varia de acordo com a variável counter"  
            for counter=1 to 5  
            response.write counter & "->"  
            next  
        %>
======================================================
         <div><h3>response.cookies</h3></div>

        <%  
            'o comando time insere o horário atual do servidor  
            response.cookies("aspbrasil")("horariovisita") = time  
        %> 
======================================================
        <div><h3>response.redirect</h3></div>

        <%  
            'A função response.redirect redireciona o browser do cliente para o endereço contido na variável URLnova, no caso, www.aspbrasil.com.br  
            'dim URLnova : URLnova="http://www.aspbrasil.com.br/"  
            'response.redirect(URLnova)  
        %> 
======================================================
        <div><h3>ServerVariables</h3></div>
        <%
            'for each x in Request.ServerVariables
                'response.write(x & "<br>")
            'next
        %>

======================================================
        <div><h3>ServerVariables</h3></div>
        <% 
            response.write(server.scriptTimeOut & "<BR>") 
            Server.ScriptTimeOut = 120 
            response.write(server.ScriptTimeOut & "<br>") 
        %>

======================================================
        <% 
            'os caracteres <, >, e Ü são caracteres especiais. O comando HTMLEncode 
            'assegura que esses códigos serão interpretados de forma correta pelo Browser. 
            response.write(server.HTMLEncode("<<<Olá Mundo>>>")) 
            response.write(server.HTMLEncode("WELCOME TO MÜNCHEN")) 
        %>          

    </div>
</html>  