flag = [0 0 0 0 0];
int16(100.*rand(1,1));%numero aleatorio entre 0 e 100

for p = 1:length(flag)
	flag(p) = int16(100.*rand(1,1)); %preenchimento da lista com numeros aleatorios entre 0 e 100
end

while length(flag)
	disp('Iniciando processo')
	fprintf('Stack Flag\n')
    fprintf('%d ',flag)
    fprintf('\n')
	fprintf('Indice do Processo atual: %d\n', find(flag == min(flag))) %encontrar o processo de maior prioridade(menor valor)
	att(find(flag == min(flag))) %printar o processo de prioridade a ser executado
	flag(find(flag == min(flag))) = []; %excluir o processo de prioridade após sua execução
	controle = input('Deseja adicionar um novo processo?\nSim[s]\nNao[n]\n','s');
	if strcmp(controle,'s')
               	n= input('Numero de processos?\n')
		for p = 1:n
			flag(length(flag)+1) = int16(100.*rand(1,1)); %preenchimento da lista com a quantidade de novos processos informada
        end
    end
end
