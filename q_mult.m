%% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %% 
% Title: q_mult                                                           %
% Description: Receive two 4x1 quaterions and compute the product.        %
%                                                                         %
% Input: Two 4x1 quaternions defined by [3x1 vector, 1x1 scalar]          %
% Output: 4x1 quaternion defined by [3x1 vector, 1x1 scalar]              % 
%                                                                         %
% Developed by: ASEL Lab, WVU                                             % 
%                                                                         %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

function [ Qout ] = q_mult( Qa, Qb )

Qav=[Qa(1);Qa(2);Qa(3);];
Qas=Qa(4);
Qbv=[Qb(1);Qb(2);Qb(3)];
Qbs=Qb(4);

Qout=[Qas*Qbv+Qbs*Qav-cross(Qav,Qbv) ; Qas*Qbs-Qav'*Qbv];

end

