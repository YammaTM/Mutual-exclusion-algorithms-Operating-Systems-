function y = B_VCA(ch,n_ch,n_cl)
if n_cl+length(ch(ch==1))>n_ch
    fprintf('%d client deixou o saguão\n',n_cl+length(ch(ch==1))-n_ch) %cálculo do número de clientes que deixaram a barbearia
    a = length(ch(ch==1));%utilização de variável para adaptar o código ao MATLAB
    if a==0
        ch(1:n_ch)=1; %todas as cadeiras serão preenchidas(adquirirão o valor 1)
        y = ch;
    else
        ch(length(ch(ch==1)):n_ch)=1; %todas as cadeiras serão preenchidas(adquirirão o valor 1)
        y = ch;
    end
    
else
    a = length(ch(ch==1)); %utilização de variável para adaptar o código ao MATLAB
    if a==0
        ch(1:(n_cl+length(ch(ch==1))))=1; %preenchimento de cadeiras até a soma do número de clientes com o número de cadeiras ocupadas
        y = ch;
    else
        ch(length(ch(ch==1)):(n_cl+length(ch(ch==1))))=1; %preenchimento de cadeiras até a soma do número de clientes com o número de cadeiras ocupadas
        y = ch;
    end
end
end
