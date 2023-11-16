function orban_ode15 ( )

%*****************************************************************************80
%
%% orban_ode15() tests orban_ode using ode15().
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
  fprintf ( 1, '\n' );
  fprintf ( 1, 'orban_ode15:\n' );
  fprintf ( 1, '  Test orban_ode using ode15.\n' );

  [ t0, y0, tstop ] = orban_parameters ( );
  tspan = [ t0 tstop ];
  [ t, y ] = ode15s ( @(x,y) orban_deriv(x, y), tspan, y0,...
  odeset('RelTol',1e-4,'AbsTol',1e-10,'OutputFcn',@odeplot,...
  'InitialStep',7e-10));

  csvwrite("concs.csv", y)
  csvwrite("times.csv", t)

  n = size ( t, 1 );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Number of variable size steps = %d\n', n );

##  figure ( 1 );
##  clf ( );
##  plot ( t, y(:,1), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c1(t)) -->' );
##  title ( 'c1(t)): ode15' );
##  filename = 'orban_ode15_c1.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##  figure ( 2 );
##  clf ( );
##  plot ( t, y(:,15), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c2(t)) -->' );
##  title ( 'c2(t)): ode15' );
##  filename = 'orban_ode15_c2.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##  figure ( 3 );
##  clf ( );
##  plot ( t, y(:,3), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c3(t)) -->' );
##  title ( 'c3(t)): ode15' );
##  filename = 'orban_ode15_c3.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##    figure ( 4 );
##  clf ( );
##  plot ( t, y(:,4), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c4(t)) -->' );
##  title ( 'c4(t)): ode15' );
##  filename = 'orban_ode15_c4.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##    figure ( 5 );
##  clf ( );
##  plot ( t, y(:,5), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c5(t)) -->' );
##  title ( 'c5(t)): ode15' );
##  filename = 'orban_ode15_c5.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##    figure ( 6 );
##  clf ( );
##  plot ( t, y(:,6), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c6(t)) -->' );
##  title ( 'c6(t)): ode15' );
##  filename = 'orban_ode15_c6.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##    figure ( 7 );
##  clf ( );
##  plot ( t, y(:,7), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c7(t)) -->' );
##  title ( 'c7(t)): ode15' );
##  filename = 'orban_ode15_c7.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##  figure ( 8 );
##  clf ( );
##  plot ( t, y(:,8), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c8(t)) -->' );
##  title ( 'c8(t)): ode15' );
##  filename = 'orban_ode15_c8.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##   figure ( 9 );
##  clf ( );
##  plot ( t, y(:,9), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c9(t)) -->' );
##  title ( 'c9(t)): ode15' );
##  filename = 'orban_ode15_c9.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##  figure ( 10 );
##  clf ( );
##  plot ( t, y(:,10), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c10(t)) -->' );
##  title ( 'c10(t)): ode15' );
##  filename = 'orban_ode15_c10.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##  figure ( 11 );
##  clf ( );
##  plot ( t, y(:,11), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c11(t)) -->' );
##  title ( 'c11(t)): ode15' );
##  filename = 'orban_ode15_c11.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##  figure ( 12 );
##  clf ( );
##  plot ( t, y(:,12), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c12(t)) -->' );
##  title ( 'c12(t)): ode15' );
##  filename = 'orban_ode15_c12.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##  figure ( 13 );
##  clf ( );
##  plot ( t, y(:,13), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c13(t)) -->' );
##  title ( 'c13(t)): ode15' );
##  filename = 'orban_ode15_c13.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##  figure ( 14 );
##  clf ( );
##  plot ( t, y(:,14), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c14(t)) -->' );
##  title ( 'c14(t)): ode15' );
##  filename = 'orban_ode15_c14.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
##
##  figure ( 15 );
##  clf ( );
##  plot ( t, y(:,15), 'b-', 'linewidth', 2 );
##  grid ( 'on' );
##  xlabel ( '<-- Time -->' );
##  ylabel ( '<-- c15(t)) -->' );
##  title ( 'c15(t)): ode15' );
##  filename = 'orban_ode15_c15.png';
##  print ( '-dpng', filename );
##  fprintf ( 1, '  Graphics saved in "%s"\n', filename );

  return
end

