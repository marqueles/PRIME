function [out] = DBPSKDemod(input,init)

Demodulator = modem.dpskdemod('M', 2, 'InitialPhase', init,'OutputType','Bit');
out = demodulate(Demodulator,input);

end

