function [out] = Convolutional_enconder(in)
%Variable seting
code_generator_1 = [1 1 1 1 0 0 1];
code_generator_2 = [1 0 1 1 0 1 1];
initial_state = [0 0 0 0 0 0];
flush_bits = [0 0 0 0 0 0];
state = initial_state;
out = zeros(1,length(in)*2+6);

%Generate the output stream
for i = 1:length(in)
    %Set the data in the registers and initial bit
    data = [in(i) state];
    %Calculate outputs of code generators
    out1 = mod(sum(code_generator_1.*data),2);
    out2 = mod(sum(code_generator_2.*data),2);
    %Set outputs in the output stream
    out(2*(i-1)+1:2*(i-1)+2) = [out1 out2];
    %Set next state
    state = data(1:end-1);
end

%Flush the registers
for i = 1:length(flush_bits)
    %Set the data in the registers and initial bit
    data = [flush_bits(i) state];
    %Calculate outputs of code generators
    out1 = mod(sum(code_generator_1.*data),2);
    out2 = mod(sum(code_generator_2.*data),2);
    %Set outputs in the output stream
    out(2*(i-1)+1+(2*length(in)):2*(i-1)+2+(2*length(in))) = [out1 out2];
    %Set next state
    state = data(1:end-1);
    
end

end

