%% testAnswerAnalysis.m


clear;
clf;
clc
% set parameters

timesRun = 100;

guessBetter = 0;
blindBetter = 0;

for i = 1:timesRun
    
    dt = 0.0;
    N = 1000;
    
    blind = [];
    
    ans = randList(N);
    
    guesses = randList(N);
    
    rGuess = 0;
    
    rBlind = 0;
    
    % initializing arrays
    for i = 1:N
        blind = [blind, 1];
    end
    
    % calculations
    
    for i = 1:N
        if blind(i) == ans(i)
            rBlind = rBlind + 1;
        end
        
        if guesses(i) == ans(i)
            rGuess = rGuess + 1;
        end
        
    end
    
    if rGuess > rBlind
        guessBetter = guessBetter + 1;
    else
        blindBetter = blindBetter + 1;
    end
    pause(dt)
    
    
    
    
    % displays
    disp(['percent of guesses correct: ', num2str(rGuess*100/N)]);
    disp(['percent of blinds correct: ', num2str(rBlind*100/N)]);
    
    
end

if guessBetter < blindBetter
    disp('Guesses win');
else
    disp('Blind win');
end
function checks = randList(Nx)
blank = [];

checks = [blank, randi(4,1, Nx)];

end