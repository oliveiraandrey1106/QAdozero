Dado("que esteja autenticado com {string} e {string}") do |email, senha|
	@login_page.login_path
	@login_page.logar(email,senha)
end

Quando("acessar o perfil") do
	@side.acessa_perfil
end

Quando("completar cadastro com {string} e {string}") do |empresa, cargo|
	@perfil_page.completa_cadastro(empresa, cargo)
end

Então("deverá exibir a mensagem de atualização cadastral:") do |mensagem|
	expect(@perfil_page.alerta).to have_content mensagem
end
