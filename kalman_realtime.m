function [X,P]=kalman_vel_realtime(X,P,Sdata,dt,Q,R);
    %%% Initialization %%%
    F = [1 dt;0 1];                         % State estimate matrix
    H = [1 0];                              % Observation matrix
    %%% Prediction stage%%%
    XPred = F*X;                            
    PPred = F*P*F' + Q;
    %%% Update stage %%%
    z = Sdata;                              % An actual measurement 
    y = z - H*XPred ;                       % Comparion between measurement and predicted value
    S = H*PPred*H' + R;                     % Covariance matrix Predict
    K = PPred*H'/S;                         % Kalman gain update
    XEst = XPred + K*y;                     % Final estimation
    PEst = (eye(size(X,1)) - K*H)*PPred;    % Covariance matrix update
    %%% Update result %%%
    X = XEst;
    P = PEst;
end