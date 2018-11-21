function [out] = DQPSKMod(input,init)

Modulator = modem.dpskmod('M', 4, 'InitialPhase', init,'InputType','Bit');
out = modulate(Modulator,input);

end