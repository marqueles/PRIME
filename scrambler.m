function [output] = scrambler(input)
    pref = [0,0,0,0,1,1,1,0,1,1,1,1,0,0,1,0,1,1,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,1,0,0,1,1,0,0,0,1,0,1,1,1,0,1,0,1,1,0,1,1,0,0,0,0,0,1,1,0,0,1,1,0,1,0,1,0,0,1,1,1,0,0,1,1,1,1,0,1,1,0,1,0,0,0,0,1,0,1,0,1,0,1,1,1,1,1,0,1,0,0,1,0,1,0,0,0,1,1,0,1,1,1,0,0,0,1,1,1,1,1,1,1];
    input = input(:).';

    for a = 1:floor(length(input)/127)
        output((a-1)*127+1 : a*127) = input((a-1)*127+1 : a*127).*pref;
    end

    if mod(length(input),127)~=0
        output(length(input)-mod(length(input),127)+1 : length(input)) = input(length(input)-mod(length(input),127)+1 : length(input)).*pref(1 : mod(length(input),127));
    end
    
end

