function [out] = DQPSKDemod(input,init)

Demodulator = modem.dpskdemod('M', 4, 'InitialPhase', init,'OutputType','Bit');
out = demodulate(Demodulator,input);

end

