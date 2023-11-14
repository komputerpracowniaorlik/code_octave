function [t0, y0, tstop ] = oregonator_parameters ( )

  persistent t0_default;
  persistent y0_default;
  persistent tstop_default;
%
%  Initialize defaults.
%

    t0_default = 0.0;
  
    y0_default = [ 0.417,1e-8,0.025,1e-8,...
    1e-8,1e-8,1e-8,1e-8,1e-8,...
    1e-8,1e-8,1e-8,1e-8,1e-8,0.00008 ];
  
    tstop_default = 1800.0;

%  Return values.
%

  t0 = t0_default;
  y0 = y0_default;
  tstop = tstop_default;
  
  return
end

