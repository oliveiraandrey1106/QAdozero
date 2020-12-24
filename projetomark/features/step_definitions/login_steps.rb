Dado('que acesse o sistema') do
	@login_page.login_path
end

Quando('fazer login com {string} e {string}') do |email, senha|
	@login_page.logar(email, senha)
end

Então('deverá exibir a mensagem de boas vindas {string}') do |mensagem|
	expect(@login_page.painel).to have_content mensagem
end

Então('deverá exibir a mensagem de alerta {string}') do |mensagem|
	expect(@login_page.alerta).to have_content mensagem
end
