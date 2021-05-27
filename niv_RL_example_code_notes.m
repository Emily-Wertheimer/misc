% data of bandit task = choices, outcomes, & RTs
% learn values for options + choose based on values 

v = [0,0,0] 

for t=1:numTrials % make a choice based on current values
    
    % update based on outcome of this trial
    PE(trial) = outcomes(t) - v(choices(t)); % prediction error = outcomes of trial - value of choices on trial
    v(choices(t)) = v(choices(t)) + alpha*PE;% alpha = learning rate (between 0 and 1)
end

% soft max rule: more likely to choose option with higher value, but not
% definitely