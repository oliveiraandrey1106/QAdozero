#language: pt
Funcionalidade: Acessar perfil

	@perfil @logout
	Esquema do Cenário: Atualizar perfil
		Dado que esteja autenticado com "<email>" e "<senha>"
		Quando acessar o perfil
		E completar cadastro com "<empresa>" e "<cargo>"
		Então deverá exibir a mensagem de atualização cadastral:
        """
        Perfil atualizado com sucesso.
        """
        
			Exemplos:
				| email                        | senha  | empresa   | cargo      |
                | oliveiraandrey1106@gmail.com | 123456 | Linkedin  | QA         |
                | teste@teste.com              | 123456 | Yahoo     | Developer  |
                | teste@teste.com              | 123456 | Microsoft | CEO        |
                | teste@teste.com              | 123456 | Google    | CTO        |
                | teste@teste.com              | 123456 | Facebook  | Estagiario |
                