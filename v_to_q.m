%% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %% 
% Title: v_to_q                                                           %
% Description: Receive a 3x1 rotation vector of Euler angles and convert  %
%              it to a 4x1 quaternion                                     %
%                                                                         %
% Input: 3x1 Rotation vector in radians                                   %
% Output: 4x1 quaternion defined by [3x1 vector, 1x1 scalar]              % 
%                                                                         %
% Developed by: ASEL Lab, WVU                                             % 
%                                                                         %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

function [q]  = v_to_q(V)

theta=norm(V);
etheta(:,1) = V/theta;
qv = (sin(theta/2)*etheta); %Quaternion Vector
qs = cos(theta/2); %Quaternion Scalar
q = [qv(1);qv(2);qv(3);qs];% 4x1 quaternion

end