function [out] = D8PSKDemod(input,init)

Demodulator = modem.dpskdemod('M', 8, 'InitialPhase', init,'OutputType','Bit');
out = demodulate(Demodulator,input);

end

