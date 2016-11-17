function [ A_lift_co ] = get_liftC( velocity_y,velocity_x, time_seq,density, mass )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
acceler = (velocity_y(2:end) - velocity_y(1:end-1))./...
                (time_seq(2:end) - time_seq(1:end-1));
            
A_lift_co =2*mass*(acceler - 9.81)./ ( density * ...
                    velocity_x(1:end-1).* velocity_x(1:end-1) );

%lift_co = lift_co0 + lift_coa * att_angle ;
%lift_co = A_lift_co/ Area'


end

