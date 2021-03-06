function [ ydata ] = DistortPoints( x, xdata)
%UNDISTORTPOINT Summary of this function goes here
%   Detailed explanation goes here
% 
% (C) 2015 Shengzhe Li <lishengzhe@gmail.com>
% 
% This code is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License version 2 as
% published by the Free Software Foundation.

kd1=x(1);
kd2=x(2);
xu = xdata(:,:,1);
yu = xdata(:,:,2);

rs = xu.^2+yu.^2;
xd = xu.*(1+kd1.*rs+kd2.*rs.^2);
yd = yu.*(1+ku1.*rs+ku2.*rs.^2);

ydata(:,:,1)=xd;
ydata(:,:,2)=yd;

end

