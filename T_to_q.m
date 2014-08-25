%% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %% 
% Title: T_to_q                                                           %
% Description: Receive a 3x3 rotation matrix and convert it to a 4x1      %
%              quaternion.                                                %
%                                                                         %
% Input: 3x3 Rotation matrix                                              %
% Output: 4x1 quaternion defined by [3x1 vector, 1x1 scalar]              % 
%                                                                         %
% Developed by: ASEL Lab, WVU                                             % 
%                                                                         %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

function [ q ] = T_to_q( T)

Qs = .5*(sqrt(T(1,1)+T(2,2)+T(3,3)+1));

Qv1 = (T(3,2) - T(2,3))/(-4*Qs);
Qv2 = (T(1,3) - T(3,1))/(-4*Qs);
Qv3 = (T(2,1) - T(1,2))/(-4*Qs);

q = [Qv1 ; Qv2 ; Qv3 ; Qs];

end

