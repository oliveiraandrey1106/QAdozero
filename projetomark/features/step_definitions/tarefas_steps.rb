Dado("que o nome da tarefa é {string}") do |nome_tarefa|
	@nome_tarefa = nome_tarefa
	@dao.remover_tarefas(@nome_tarefa, @usuario[:email])
end

Dado("a data de finalização será {string}") do |data_finalizacao|
	@data_tarefa = data_finalizacao
end

Dado("criar as tags para esta tarefa com:") do |tags|
	@tags = tags.hashes
end

Dado("a tarefa já foi cadastrada") do
	steps %(
	Quando fizer o cadastro desta tarefa 
	)
end

Quando("fizer o cadastro desta tarefa") do
	@tarefas_page.cadastrar(@nome_tarefa, @data_tarefa)
end

Então("esta tarefa deverá exibir o status {string}") do |status_tarefa|
	task = @tarefas_page.buscar_tr(@nome_tarefa)
	expect(task).to have_content status_tarefa
end

Então("deve exibir a seguinte mensagem {string}") do |mensagem_alerta|
	expect(@tarefas_page.alerta).to eql mensagem_alerta
end

Então("deve haver somente {int} tarefa com o nome cadastrado") do |quantidade|
	res = @dao.buscar_tarefa(@nome_tarefa, @usuario[:email])
	expect(res.count).to eql quantidade
end