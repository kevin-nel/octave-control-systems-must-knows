# partial fraction expansion
b = [1,1,1]; #numerator (coefficients of s terms, in decending powers)
a = [1,-5,8,-4]; #denominator, same as above
[r,p,k,e]=residue(b,a)

# example
# partial fraction expansion
#
#               32
#  y1:  -------------------
#       s^3 + 12 s^2 + 32 s
#
b=[32];
a=[1,12,32,0];
[r,p,k,e]=residue(b,a)

# bode plots
pkg load control
s=tf('s');
g=32/(s^3+12*s^2+32*s) # same as above

bode(g);

# system responses
step(g)
impulse(g)

#pole zero plot
pzmap(g)

# feedback (openloop to closed loop)
pkg load control
s = tf('s');
g_0 = 32 / (s^3 + 12*s^2 + 32*s)
g_f = 1 # unity feedback (this can also be a function)
g_c = feedback(g_o, g_f)

# root locus
rlocus(g_c)

# interactive root locus plot
rlocusx(g_c) # allows you to click on a point and get the gain and other useful information

# nyquist plot
nyquist(g_c)

# creating a time vector
t0 = 0;
t_end = 10;
n = 250;
t = linspace(t0,t_end,n);'

# or
t = 0:250:10;

# matrix utilities
# m*m idenity matrix
I = eye(m);
