# Colormaps_MATLAB
A set of colormaps (in csv format) that can be used in MATLAB. Colormaps such as 'plasma', and 'inferno' are included which are not currently available in MATLAB's builtin colormaps.

The csv files contain rgb values of the colormaps. 

# Use
Copy the csv data file of the colormap in local folder. In the MATLAB code, import the csv file in a matrix. Then use colormap() command after your plot command. Example:
```
c_map = csvread('inferno_colormap.csv');
...              % your code           
...
contourf(....)   % plotting, contourf, surf etc.
colormap(c_map)  
```
# Sample output
<p float="left">
<img src="https://github.com/zaman13/Colormaps_MATLAB/blob/master/colormap_sample.png" alt="alt text" width="400">
  <img src="https://github.com/zaman13/Colormaps_MATLAB/blob/master/colormap_sample2.png" alt="alt text" width="400">


# References
1. Moreland colormap: http://www.kennethmoreland.com/color-maps/ColorMapsExpanded.pdf
2. Turbo colormap: https://ai.googleblog.com/2019/08/turbo-improved-rainbow-colormap-for.html
3. https://github.com/jgreitemann/colormap
