function [ E ] = funkcja( pid )
    J = 0.01;
    b = 0.1;
    K = 0.01;
    R = 1;
    L = 0.5;
    Kp=pid(1);
    Kd=pid(2);
    Ki=pid(3); 
    model = 'PIDsimulink';
    options = simset('SrcWorkspace','current');
    sim(model,[],options);
    E = max(V);

end

