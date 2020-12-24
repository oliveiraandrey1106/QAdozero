class CadastroPage
    include Capybara::DSL

    def cadastro_path
        visit "/register"
    end

    def cadastrar(nome, email, senha)
        find("#register_name").set nome
		find("#register_email").set email
        find("#register_password").set senha
        find(".btn-accent").click
    end
    
    def alerta
        find(".alert-message")
    end
    
end