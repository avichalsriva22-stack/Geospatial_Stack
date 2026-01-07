% MATLAB Script to Plot Spectral Reflectance of Fine Snow

% Clear workspace and command window
clear; clc; close all;

% Load the data from a text file
% The file should have two columns: wavelength (micrometers) and reflectance (%)
% Saved data as 'construction_concrete.txt' in the same folder
data = load('Fine_Snow.txt');

% Separate the columns into X and Y
wavelength = data(:,1);  % micrometers
reflectance = data(:,2); % percent

% Plot the spectral curve
figure;
plot(wavelength, reflectance, 'b-', 'LineWidth', 1.5);

% Add labels and title
xlabel('Wavelength (\mum)', 'FontSize', 12);
ylabel('Reflectance (%)', 'FontSize', 12);
title('Spectral Reflectance - Fine Snow', 'FontSize', 14);

% Improve the plot appearance
grid on;
set(gca, 'FontSize', 12);
xlim([min(wavelength) max(wavelength)]);
ylim([0 max(reflectance)+5]);

% Optional: add markers every 50 points for visibility
hold on;
plot(wavelength(1:50:end), reflectance(1:50:end), 'ro', 'MarkerSize', 4);

