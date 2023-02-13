% alinea b)

T = [0      0.3     0       1/3     0      0
     1/3    0       1/2     0       0.45   0
     1/3    0.3     0       1/3     0      0
     1/3    0       1/2     0       0.45   0
     0      0.3     0       1/3     0      0
     0      0.1     0       0       0      0]


% alinea c)

dig = [ "1" "3" "5" "7" "9" "FIM"];

rdi = randi(5);
statec = crawl(T,rdi,6);

for i = 1:length(statec)
    if statec(i) == 6
        break;
    end

    fprintf(dig(statec(i)));
end

fprintf("\n");

% alinea d)

N = 1e6;
arr = cell(1,N);

for i = 1:N
    rdi = randi(5);
    stated = crawl(T,rdi,6);

    arr{i} = stated;
end

% alinea e)

counte = 0;

for i = 1:N
    statee = crawl(T,rdi,6);
    if length(statee) == 6
        if (statee(1) == 5 && statee(2) == 4 && statee(3) == 1 && statee(4) == 3 && statee(5) == 2 && statee(6) == 6)
            counte = counte + 1;
        end
    end
end

probSimulacaoe = counte/N

% alinea g)

countg = 0;
comprimento = 0;

for i = 1:1000000
    stateg = crawl(T,rdi,6);
    if (stateg(1) == 4)
        countg = countg + 1;
        comprimento = comprimento + (length(stateg)-1); % length(stateg)-1 porque conta com o "FIM"
    end
end

media1T = comprimento/countg

function [state] = crawl(H, first, last)
     % the sequence of states will be saved in the vector "state"
     % initially, the vector contains only the initial state:
     state = [first];
     % keep moving from state to state until state "last" is reached:
     while (1)
          state(end+1) = nextState(H, state(end));
          if ismember(state(end), last) % verifies if state(end) is absorving
              break;
          end
     end
end

% Returning the next state
% Inputs:
% H - state transition matrix
% currentState - current state
function state = nextState(H, currentState)
     % find the probabilities of reaching all states starting at the current one:
     probVector = H(:,currentState)';  % probVector is a row vector 
     n = length(probVector);  %n is the number of states
     % generate the next state randomly according to probabilities probVector:
     state = discrete_rnd(1:n, probVector);
end

% Generate randomly the next state.
% Inputs:
% states = vector with state values
% probVector = probability vector 
function state = discrete_rnd(states, probVector)
     U=rand();
     i = 1 + sum(U > cumsum(probVector));
     state= states(i);
end