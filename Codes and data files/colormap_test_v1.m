% Mohammad Asif Zaman
% April 8, 2020
% csv colormap files and how to used them in MATLAB
% References:
%            1. http://www.kennethmoreland.com/color-advice/
%            2. https://ai.googleblog.com/2019/08/turbo-improved-rainbow-colormap-for.html


clear all;
close all;
clc; clf;

% Read RGB colormap data from csv file
c_map1 = csvread('turbo_colormap.csv');
c_map2 = csvread('inferno_colormap.csv');
c_map3 = csvread('plasma_colormap.csv');
c_map4 = csvread('moreland_colormap.csv');
c_map5 = csvread('blackbody_colormap.csv');
c_map6 = csvread('viridis_colormap.csv');
c_map7 = csvread('bentcoolwarm_colormap.csv');
c_map8 = csvread('kindlmann_colormap.csv');
% Define a test field



% Space variables
Nt = 40;
xL = -3;  xU = 3;
yL = -3;  yU = 3;

x = linspace(xL,xU,Nt);
y = linspace(yL,yU,Nt);

[X,Y] = meshgrid(x,y);

% 2D function to plot
V = peaks(X,Y);


% Plotting (colormap 1 to 4)
ax(1) = subplot(221);contourf(X,Y,V,40,'linestyle','none'); colorbar; title('Turbo'); xlabel('x'); ylabel('y');
colormap(ax(1),c_map1);
ax(2) = subplot(222);contourf(X,Y,V,40,'linestyle','none'); colorbar; title('Inferno'); xlabel('x'); ylabel('y');
colormap(ax(2),c_map2);
ax(3) = subplot(223);contourf(X,Y,V,40,'linestyle','none'); colorbar; title('Plasma'); xlabel('x'); ylabel('y');
colormap(ax(3),c_map3);
ax(4) = subplot(224);contourf(X,Y,V,40,'linestyle','none'); colorbar; title('Smooth cool-warm (Moreland)'); xlabel('x'); ylabel('y');
colormap(ax(4),c_map4);



% Plotting (colormap 5 to 8)
figure,
ax(1) = subplot(221);contourf(X,Y,V,40,'linestyle','none'); colorbar; title('Blackbody'); xlabel('x'); ylabel('y');
colormap(ax(1),c_map5);
ax(2) = subplot(222);contourf(X,Y,V,40,'linestyle','none'); colorbar; title('Viridis'); xlabel('x'); ylabel('y');
colormap(ax(2),c_map6);
ax(3) = subplot(223);contourf(X,Y,V,40,'linestyle','none'); colorbar; title('Bent cool-warm'); xlabel('x'); ylabel('y');
colormap(ax(3),c_map7);
ax(4) = subplot(224);contourf(X,Y,V,40,'linestyle','none'); colorbar; title('Kindlmann'); xlabel('x'); ylabel('y');
colormap(ax(4),c_map8);
