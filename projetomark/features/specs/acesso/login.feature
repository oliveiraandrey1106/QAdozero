# language: pt
Funcionalidade: Autenticação

	Contexto: Home
		Dado que acesse o sistema
	
        @entrar @logout
        Cenário: Login
            Quando fazer login com "oliveiraandrey1106@gmail.com" e "123456"
            Então deverá exibir a mensagem de boas vindas "Olá, Andrey"

        @entrar
        Esquema do Cenário: Login exception
            Quando fazer login com "<email>" e "<senha>"
            Então deverá exibir a mensagem de alerta "<saida>"

            Exemplos:
            | email                          | senha  | saida                       |
            | oliveiraandrey1106@gmail.com   | asd123 | Senha inválida.             |
            | teste@teste.com        |123456 | Usuário não cadastrado.              |
            |                                | 123456 | Email incorreto ou ausente. |
            | teste@steste.com       |       | Senha ausente.                       |
