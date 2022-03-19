model lab6_1

parameter Real a = 0.01;//коэф.заболеваемости
parameter Real b = 0.02;//коэф.выздоровления
parameter Real N = 11200;//числ.популяции
parameter Real I0 = 230;//кол-во инфицированных
parameter Real R0 = 45;//кол-во здоровых
parameter Real S0 = N - I0 - R0;//кол-во восприимч.

Real I(start=I0);
Real R(start=R0);
Real S(start=S0);

equation

der(S) = 0;
der(I) = -b*I;
der(R) = b*I;

end lab6_1;
