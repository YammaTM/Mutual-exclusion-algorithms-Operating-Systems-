function y = B_VCA(ch,n_ch,n_cl)
if n_cl+length(ch(ch==1))>n_ch
    fprintf('%d client deixou o sagu�o\n',n_cl+length(ch(ch==1))-n_ch) %c�lculo do n�mero de clientes que deixaram a barbearia
    a = length(ch(ch==1));%utiliza��o de vari�vel para adaptar o c�digo ao MATLAB
    if a==0
        ch(1:n_ch)=1; %todas as cadeiras ser�o preenchidas(adquirir�o o valor 1)
        y = ch;
    else
        ch(length(ch(ch==1)):n_ch)=1; %todas as cadeiras ser�o preenchidas(adquirir�o o valor 1)
        y = ch;
    end
    
else
    a = length(ch(ch==1)); %utiliza��o de vari�vel para adaptar o c�digo ao MATLAB
    if a==0
        ch(1:(n_cl+length(ch(ch==1))))=1; %preenchimento de cadeiras at� a soma do n�mero de clientes com o n�mero de cadeiras ocupadas
        y = ch;
    else
        ch(length(ch(ch==1)):(n_cl+length(ch(ch==1))))=1; %preenchimento de cadeiras at� a soma do n�mero de clientes com o n�mero de cadeiras ocupadas
        y = ch;
    end
end
end
