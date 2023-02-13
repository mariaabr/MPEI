function hashgg = string2hash( er, ty, ui)
    


    switch(type,
        case 'dgb2'
            hash = 5381*ones(size(str,1),1);
            for i=1:size(str,2)
                hash = mod(hash * 33 + str(:,i), 2^32-1);
            end
         case 'sdbm'
            hash = zeros(size(str,1),1);
            for i=1:size(str,2)
                hash = mod(hash * 33 + str(:,i), 2^32-1);
            end
         
end