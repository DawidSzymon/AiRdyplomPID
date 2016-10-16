function [E] = wirnik1(pid)
    Rw=2;
    Lw=2;
    ke=1;
    J=0.1;
    B=0.5;
    km=0.1;
    Kp=pid(1);
    Kd=pid(3);
    Ki=pid(2); 
    model = 'PIDwirnik';
    options = simset('SrcWorkspace','current');
    sim(model,[],options);
    E = max(V1);
end
