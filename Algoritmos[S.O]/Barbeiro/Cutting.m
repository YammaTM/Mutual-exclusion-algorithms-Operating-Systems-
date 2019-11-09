classdef Cutting
    properties
        name = input('Digite o nome do Barbeiro\n','s');
        sleeping = input('[1] para Dormindo e [0] para Acordado\n');
    end
    
    methods      
        function awake(obj)
            obj.sleeping = 0 %barbeiro está acordado
        end
        
        function sleep(obj)
            obj.sleeping = 1 %barbeiro está dormindo
        end
    end
end
