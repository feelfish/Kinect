function [ A_drag_co ] = get_dragC( velocity_x,time_seq, density, mass)
%GET_DRAGD Summary of this function goes here
%   Detailed explanation goes here
acceler = (velocity_x(2:end) - velocity_x(1:end-1))./...
                (time_seq(2:end) - time_seq(1:end-1));

A_drag_co =2*mass*acceler ./ ( density * ...
                    velocity_x(1:end-1).* velocity_x(1:end-1) );

%drag_co = drag_co0 + drag_coa * (att_angle - att_angle0)^2 ;
%drag_co = A_drag_co/ Area;


end

