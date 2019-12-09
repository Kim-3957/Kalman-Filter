function [result]=kalman_HRC(Mdata,Sdata,Svel,dt,Q,R);
Pos =      Sdata'; 
Vel =      Svel';
True =     Mdata';
XEst = [Pos(1) Vel(1)]'; %% [x v]'
PEst = eye(2);           %% Initial states
time = dt(1,1);
result.XPred=[XEst'];
result.time=[time];
result.XEst=[XEst'];
result.XMes=[XEst'];
result.PEst=[diag(PEst)'];
 H = [1 0;0 1];
for i =2:length(dt)
    time = time + dt(i);
    %%% Prediction stage -Linear stage%%%
    F = [1 dt(i);
         0 1 ];
    XPred = F*XEst;
    %%% Prediction stage -Non Linear stage%%%
    PPred = F*PEst*F' + Q;
    %%% Update stage %%%
    XMes = [Pos(i) Vel(i)]'; % An actual measurement 
    y = XMes - H*XPred ;       % Comparion between measurement and predicted value
    S = H*PPred*H' + R;
    K = PPred*H'/S;
    XEst = XPred + K*y;
    PEst = (eye(size(XEst,1)) - K*H)*PPred;
    %%% Simulation Result %%%
    result.XPred=[result.XPred;XPred'];
    result.time=[result.time; time];
    result.XEst=[result.XEst; XEst'];
    result.XMes=[result.XMes; XMes'];
    result.PEst=[result.PEst; diag(PEst)'];   
end
end
