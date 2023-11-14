function oregonator_ode_test ( )

%*****************************************************************************80
%
%% oregonator_ode_test() solves the oregonator ODE.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    23 April 2021
%
%  Author:
%
%    John Burkardt
%
  addpath ( '../oregonator_ode' );

  timestamp ( );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'oregonator_ode_test():\n' );
  fprintf ( 1, '  MATLAB/Octave version %s\n', version ( ) );
  fprintf ( 1, '  Solve the Oregonator ODE.\n' );

  [t0, y0, tstop ] = oregonator_parameters ( );

##  fprintf ( 1, '\n' );
##  fprintf ( 1, '  Parameter values:\n' );
##  fprintf ( 1, '    t0    = %g\n', t0 );
##  fprintf ( 1, '    y0    = (%g,%g,%g)\n', y0 );
##  fprintf ( 1, '    tstop = %g\n', tstop );

  oregonator_ode23 ( );
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'oregonator_ode_test():\n' );
  fprintf ( 1, '  Normal end of execution.\n' );
  fprintf ( 1, '\n' );
  timestamp ( );

  rmpath ( '../oregonator_ode' );

  return
end
function timestamp ( )

%*****************************************************************************80
%
%% timestamp() prints the current YMDHMS date as a timestamp.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 February 2003
%
%  Author:
%
%    John Burkardt
%
  t = now;
  c = datevec ( t );
  s = datestr ( c, 0 );
  fprintf ( 1, '%s\n', s );

  return
end

