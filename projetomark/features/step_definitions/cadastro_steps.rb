require "faker"

Dado("que esteja no formulário de cadastro") do
    @cadastro_page.cadastro_path
end

Dado("inserir os dados {string} e {string} e {string}") do |nome, email, senha|
    @nome = nome
    @email = Faker::Lorem.characters(number: 4) + email
    @senha = senha
end

Dado("que inserir os dados {string} e {string} e {string}") do |nome, email, senha|
    @nome = nome
    @email = email
    @senha = senha
end

Quando("realizar cadastro") do
    @cadastro_page.cadastrar(@nome, @email, @senha)
end

Então("exibir a mensagem de boas vindas {string}") do |mensagem|
    expect(@tarefas_page.painel).to have_content mensagem
end

Então("exibir a mensagem de erro {string}") do |mensagem|
    expect(@cadastro_page.alerta).to have_content mensagem
end
