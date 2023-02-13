prompt = "Insert User ID (1 to 943): ";
valid_user_id = 0;

while valid_user_id == 0
    id = input(prompt, "s");
    id = str2double(id);
    
    if ((id < 1 || id > 943) || isnan(id))
        fprintf ("o user não existe\n");
    else
        valid_user_id = 1;
    end
end

% menu %

cab = "\n MENU \n1 - Your Movies\n2 - Films from most similar user\n3 - Search Title" + ...
    "\n4 - Find most similar films\n5 - Estimate the number of films from a year\n6 - Exit\nSelect choice:"

while true
    option = input(cab, "s");
    option = str2double(option);
    
    if isnan(option)
        fprintf ("a opção não existe\n");
    else
        switch option
            case 1
                my_movies(...);
            case 2
                similar_user(...);
            case 3
                search(...);
            case 4
                similar_films(...);
            case 5
                num_films_year(...);
            case 6
                fprintf("exit");
                return;
            otherwise
                fprintf ("a opção não existe\n");
        end
    end
end

funcion my_movies(...)
    fprintf("\n MY MOVIES \n");
    
    
end


