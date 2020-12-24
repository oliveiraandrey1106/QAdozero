class LoginPage
    include Capybara::DSL

    def login_path
        visit "/login"
    end

    def painel
		find("#task-board")
	end

	def logar(email, senha)
		find("#login_email").set email
        find("input[name=password]").set senha
        find("button[id*=btnLogin]").click
    end
    
    def alerta
        find(".alert-login")
    end
    
end