%% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %% 
% Title: q_to_v                                                           %
% Description: Receive a 4x1 quaternion and convert it to a 3x1 rotattion %
%              vector of Euler angles.                                    %
%                                                                         %
% Input: 4x1 quaternion defined by [3x1 vector, 1x1 scalar]               %
% Output: 3x1 Rotation vector in radians                                  % 
%                                                                         %
% Developed by: ASEL Lab, WVU                                             % 
%                                                                         %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

function [ v ] = q_to_v( q )

Qv = [q(1); q(2); q(3)];
Qs = q(4,1);

%% Radians
Qnorm=norm(Qv);

theta=2*atan2(Qnorm,Qs);
etheta=Qv/Qnorm;

v = theta*etheta;


end

