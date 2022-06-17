

echo on

cvx_begin
   variable x       % caps
   variable y       %barrels

   maximize( 8* x + 20*y ) % max profit
   subject to
      x+2*y <=40;
      x+y >=21;
      x>=y;
      x>=0;
      y>=0;
cvx_end

echo off


figure(1)
ln=plot( x,  8* x + 20*y);
% xlabel( 'x' );
% ylabel( 'y' );bn.LineWidth = 2;
ln.Color = [0 0.5 0.5];
ln.Marker = '*';
ln.MarkerEdgeColor = 'b';
hold on;
bn=plot( y,  8* x + 20*y);
xlabel( 'Caps(b), Barrels(r)' );
ylabel( 'PROFIT' );
grid
disp( 'Done. (Check out the graph!)' );
bn.LineWidth = 2;
bn.Color = [0 0.5 0.5];
bn.Marker = '*';
bn.MarkerEdgeColor = 'r';

% cvx_quiet(s_quiet);
% cvx_pause(s_pause);