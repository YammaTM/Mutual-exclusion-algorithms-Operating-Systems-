classdef Cutting
    properties
        name = input('Digite o nome do Barbeiro\n','s');
        sleeping = input('[1] para Dormindo e [0] para Acordado\n');
    end
    
    methods      
        function awake(obj)
            obj.sleeping = 0 %barbeiro est� acordado
        end
        
        function sleep(obj)
            obj.sleeping = 1 %barbeiro est� dormindo
        end
    end
end
