function [out] = DBPSKMod(input,init)

Modulator = modem.dpskmod('M', 2, 'InitialPhase', init,'InputType','Bit');
out = modulate(Modulator,input);

end