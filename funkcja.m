function [ E ] = funkcja( pid )
%%PARAMETRY  SILNIKA
    J = 0.01;
    b = 0.1;
    K = 0.01;
    R = 1;
    L = 0.5;
%%NASTAWY PID
    Kp=pid(1);
    Kd=pid(2);
    Ki=pid(3);
%%KRYTERIUM JAKO�CI WZGL�DEM UCHYBU
    model = 'PIDsimulink';
    options = simset('SrcWorkspace','current');
    sim(model,[],options);
    E = max(V);

end

