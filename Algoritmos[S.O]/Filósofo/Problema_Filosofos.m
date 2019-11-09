
classdef Problema_Filosofos
    properties
        id %lista que representa os fil�sofos e seus respectivos �ndices
    end
    
    methods
        function eat(obj,a,b)
            left = obj.id(a) %variavel que representa a m�o esquerda do fil�sofo
            right = mod(obj.id(a),(length(b)))+1 %vari�vel que representa a m�o direita do fil�sofo
            
            fprintf('Filosofo %d pegando garfos\n',obj.id(a)); %fil�sofo em quest�o
            pause(1);
            
            b(left) = 1; %m�o esquerda do fil�sofo toma o garfo na posi��o 'left', deixando-o indispon�vel
            b(right) = 1;%m�o direita do fil�sofo toma o garfo na posi��o 'right', deixando-o indispon�vel
            fprintf('Garfos:\n %d \n',b)
            
            fprintf('Filosofo %d esta comendo\n',obj.id(a));
            pause(1);
            
            b(left) = 0; %garfo na posi��o 'left' � liberado
            b(right) = 0;%garfo na posi��o 'right' � liberado
            fprintf('Garfos:\n %d \n',b)
            
            fprintf('Filosofo %d esta liberando os garfos\n',obj.id(a));
            pause(1);
        end
        
        function think(obj,a)
            fprintf('Silencio, o Filosofo %d esta pensando\n',obj.id(a));
        end
        
        function exist(obj,a,b) %processo que efetua o ato de pensar e comer do fil�sofo
            while 1
                think(obj,a);
                eat(obj,a,b);
            end
        end   
    end
end


