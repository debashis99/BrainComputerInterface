file='Book1.xlsx';
on2=featuresig(filtone,'one');
tw2=featuresig(filttwo,'one');
th2=featuresig(filtthree,'one');
fo2=featuresig(filtfour,'one');
fi2=featuresig(filtfive,'one');
si2=featuresig(filtsix,'one');
se2=featuresig(filtseven,'one');
ei2=featuresig(filteight,'one');
ni2=featuresig(filtnine,'one');
ze2=featuresig(filtzero,'one');

A2=featuresig(filtA,'three');
B2=featuresig(filtB,'four');
C2=featuresig(filtC,'four');
D2=featuresig(filtD,'three');
E2=featuresig(filtE,'two');
F2=featuresig(filtF,'three');
G2=featuresig(filtG,'three');
H2=featuresig(filtH,'three');
I2=featuresig(filtI,'two');
J2=featuresig(filtJ,'three');
K2=featuresig(filtK,'three');
L2=featuresig(filtL,'three');
M2=featuresig(filtM,'four');
N2=featuresig(filtN,'four');
O2=featuresig(filtO,'two');
P2=featuresig(filtP,'two');
Q2=featuresig(filtQ,'two');
R2=featuresig(filtR,'two');
S2=featuresig(filtS,'three');
T2=featuresig(filtT,'two');
U2=featuresig(filtU,'two');
V2=featuresig(filtV,'four');
W2=featuresig(filtW,'two');
X2=featuresig(filtX,'four');
Y2=featuresig(filtY,'two');
Z2=featuresig(filtZ,'four');

back2=featuresig(filtback,'four');
space2=featuresig(filtspace,'three');
comma2=featuresig(filtcomma,'four');
dot2=featuresig(filtdot,'four');
x=[on2;fo2;se2;ze2;E2;Y2;O2;S2;G2;K2;Z2;V2;M2;back2;th2;si2;ni2;W2;T2;I2;A2;F2;J2;space2;C2;N2;dot2;tw2;fi2;ei2;Q2;R2;U2;P2;D2;H2;L2;X2;B2;comma2];
%xlswrite(file,x);