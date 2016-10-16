function [E] = funkcja(pid)
    x = 1.0/11.2 ;
    x1 = 1.0/(0.01*1000*4.19*1000.0);
    x2 = 0.0333*0.001*1000*4.19*1000.0;

    Kp=pid(1);
    Kd=pid(3);
    Ki=pid(2); 
    model = 'PIDpodgrzewacz';
    options = simset('SrcWorkspace','current');
    sim(model,[],options);
    E = max(V);
end