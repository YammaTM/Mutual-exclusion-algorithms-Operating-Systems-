flag = [0 0];
flag_a = 1;
flag_l = length(flag);

while(flag_a<flag_l)
    fprintf('Processo Atual: %d\n',flag_a)
    flag(flag_a)=1; %o processo atual(de prioridade) sendo executado recebe o valor 1
    disp('Iniciando processo')
    fprintf('Stack Flag\n')
    fprintf('%d ',flag)
    fprintf('\n')
    for i = 1:flag_l
        flag(i)=0; %inicializar a lista
    end
    att(flag_a) %sa�da mostrando a posi��o do processo atual
    controle = input('Deseja adicionar um novo processo?\nSim[s]\nNao[n]\n','s');
    if strcmp(controle,'s')
            n= input('Numero de processos?\n')
            add(1:n) = 0;
            flag = [flag add];%concatena��o da nova lista(inicialmente vazia) com a lista original
            flag_l = flag_l+n;%incremento da vari�vel que armazena o tamanho da lista, somada ao n�mero de novos processos;
            flag_a = flag_a+1;%o processo de maior prioridade pula para a pr�xima posi��o
    end
end
            
    