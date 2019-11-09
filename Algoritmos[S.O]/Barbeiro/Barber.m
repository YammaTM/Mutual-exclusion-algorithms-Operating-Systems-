barber = Cutting; %instanciação de barber como objeto da classe Cutting
n_ch = input('Insira o numero de cadeiras\n');
ch(1:n_ch)= 0; %inicializar a lista de cadeiras
n_cl = input('Insira o numero de clientes\n');
ch = B_VCA(ch,n_ch,n_cl) %utilizar a função B_VCA para preencher as cadeiras com os clientes
barber.awake();

while length(ch(ch==1))>0
    att(length(ch(ch==1)));%saída na tela mostrando o processo(cliente) que está em prioridade
    a = length(ch(ch==1)); %armazenamento da variável a para adaptar o código ao matlab
    if a<2
        disp('op1')
        ch(1)=0;%exclusão do primeiro elemento da lista
    else
        disp('op2')
        ch(length(ch(ch==1)))=0;%exclusão da cadeira ocupada que está mais à direita da lista
    end
    disp(ch)
    new_clientes = input('Insira o numero de clientes que entraram\n');
    ch = B_VCA(ch,n_ch,new_clientes);%nova atualização da lista de cadeiras com os novos clientes
    disp(ch)
end
barber.sleep();

