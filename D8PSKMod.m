function [out] = D8PSKMod(input,init)

Modulator = modem.dpskmod('M', 8, 'InitialPhase', init,'InputType','Bit');
out = modulate(Modulator,input);

end