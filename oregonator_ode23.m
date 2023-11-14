function oregonator_ode23 ( )

%*****************************************************************************80
%
%% oregonator_ode23() tests oregonator_ode using ode23().
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
  fprintf ( 1, 'oregonator_ode23:\n' );
  fprintf ( 1, '  Test oregonator_ode using ode23.\n' );

  [ t0, y0, tstop ] = oregonator_parameters ( );

  f = @ oregonator_deriv;
  tspan = [ t0 tstop ];
  [ t, y ] = ode23s ( f, tspan, y0,...
  odeset('RelTol',1e-3,'AbsTol',1e-10,'OutputFcn',@odeplot,...
  'InitialStep',7e-11));

  n = size ( t, 1 );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Number of variable size steps = %d\n', n );
  
%
%  Plot x.
%
  figure ( 1 );
  clf ( );
  plot ( t, y(:,1), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c1(t)) -->' );
  title ( 'c1(t)): ode23' );
  filename = 'oregonator_ode23_c1.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
%
%  Plot y.
%
  figure ( 2 );
  clf ( );
  plot ( t, y(:,15), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c2(t)) -->' );
  title ( 'c2(t)): ode23' );
  filename = 'oregonator_ode23_c2.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
%
%  Plot z.
%
  figure ( 3 );
  clf ( );
  plot ( t, y(:,3), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c3(t)) -->' );
  title ( 'c3(t)): ode23' );
  filename = 'oregonator_ode23_c3.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
    figure ( 4 );
  clf ( );
  plot ( t, y(:,4), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c4(t)) -->' );
  title ( 'c4(t)): ode23' );
  filename = 'oregonator_ode23_c4.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );

    figure ( 5 );
  clf ( );
  plot ( t, y(:,5), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c5(t)) -->' );
  title ( 'c5(t)): ode23' );
  filename = 'oregonator_ode23_c5.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
    figure ( 6 );
  clf ( );
  plot ( t, y(:,6), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c6(t)) -->' );
  title ( 'c6(t)): ode23' );
  filename = 'oregonator_ode23_c6.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
    figure ( 7 );
  clf ( );
  plot ( t, y(:,7), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c7(t)) -->' );
  title ( 'c7(t)): ode23' );
  filename = 'oregonator_ode23_c7.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
  figure ( 8 );
  clf ( );
  plot ( t, y(:,8), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c8(t)) -->' );
  title ( 'c8(t)): ode23' );
  filename = 'oregonator_ode23_c8.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
   figure ( 9 );
  clf ( );
  plot ( t, y(:,9), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c9(t)) -->' );
  title ( 'c9(t)): ode23' );
  filename = 'oregonator_ode23_c9.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
  figure ( 10 );
  clf ( );
  plot ( t, y(:,10), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c10(t)) -->' );
  title ( 'c10(t)): ode23' );
  filename = 'oregonator_ode23_c10.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
  figure ( 11 );
  clf ( );
  plot ( t, y(:,11), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c11(t)) -->' );
  title ( 'c11(t)): ode23' );
  filename = 'oregonator_ode23_c11.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
  figure ( 12 );
  clf ( );
  plot ( t, y(:,12), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c12(t)) -->' );
  title ( 'c12(t)): ode23' );
  filename = 'oregonator_ode23_c12.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
  figure ( 13 );
  clf ( );
  plot ( t, y(:,13), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c13(t)) -->' );
  title ( 'c13(t)): ode23' );
  filename = 'oregonator_ode23_c13.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
  figure ( 14 );
  clf ( );
  plot ( t, y(:,14), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c14(t)) -->' );
  title ( 'c14(t)): ode23' );
  filename = 'oregonator_ode23_c14.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
  figure ( 15 );
  clf ( );
  plot ( t, y(:,15), 'b-', 'linewidth', 2 );
  grid ( 'on' );
  xlabel ( '<-- Time -->' );
  ylabel ( '<-- c15(t)) -->' );
  title ( 'c15(t)): ode23' );
  filename = 'oregonator_ode23_c15.png';
  print ( '-dpng', filename );
  fprintf ( 1, '  Graphics saved in "%s"\n', filename );
  
  return
end

