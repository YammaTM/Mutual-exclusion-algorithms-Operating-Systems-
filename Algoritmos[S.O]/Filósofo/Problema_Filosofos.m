
classdef Problema_Filosofos
    properties
        id %lista que representa os filósofos e seus respectivos índices
    end
    
    methods
        function eat(obj,a,b)
            left = obj.id(a) %variavel que representa a mão esquerda do filósofo
            right = mod(obj.id(a),(length(b)))+1 %variável que representa a mão direita do filósofo
            
            fprintf('Filosofo %d pegando garfos\n',obj.id(a)); %filósofo em questão
            pause(1);
            
            b(left) = 1; %mão esquerda do filósofo toma o garfo na posição 'left', deixando-o indisponível
            b(right) = 1;%mão direita do filósofo toma o garfo na posição 'right', deixando-o indisponível
            fprintf('Garfos:\n %d \n',b)
            
            fprintf('Filosofo %d esta comendo\n',obj.id(a));
            pause(1);
            
            b(left) = 0; %garfo na posição 'left' é liberado
            b(right) = 0;%garfo na posição 'right' é liberado
            fprintf('Garfos:\n %d \n',b)
            
            fprintf('Filosofo %d esta liberando os garfos\n',obj.id(a));
            pause(1);
        end
        
        function think(obj,a)
            fprintf('Silencio, o Filosofo %d esta pensando\n',obj.id(a));
        end
        
        function exist(obj,a,b) %processo que efetua o ato de pensar e comer do filósofo
            while 1
                think(obj,a);
                eat(obj,a,b);
            end
        end   
    end
end


