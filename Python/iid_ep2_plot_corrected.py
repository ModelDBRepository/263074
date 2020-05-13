"""
В средине нашей жизненной дороги,
Объятый сном, я в темный лес вступил,
Путь истинный утратив в час тревоги.
Ах! тяжело сказать, как страшен был
Сей лес, столь дикий, столь густой и лютый,
Что в мыслях он мой страх возобновил.
"""
import pylab as pl
import numpy as np


def VK(Kconc):
    return 26.6 * np.log(Kconc / 130.)


def u_over_gL(K, v, x):
    eta = np.random.normal(0, 1)
    vkk = VK(K)
    return g_K * (vkk - vkk0) + G_syn * v * (x - 0.5) + sigma * eta / np.sqrt(dt) / np.sqrt(1000)


def dots(states):
    # K, Na, x, V, U, v, Ipm, u = states
    K, Na, x, V, U, y = states
    dotK = (Kbath - K) / tau_K - 2 * gamma * Ipi + deltaK * vi
    dotNa = (Na_0 - Na) / tau_Na - 3 * Ipi + deltaNa * vi
    dotV = (ui - V) / tau_m
    dotx = (1 - x) / tau_x - deltax * x * vi
    dotU = 1000 * ((gU / CU) * (U - U1) * (U - U2) + gL * ui / CU)
    doty = .03 * ((U + 60.) - y)  # not used
    return np.array([dotK, dotNa, dotx, dotV, dotU, doty])


def v(V):
    scc = 2. / (1 + np.exp(2 * (Vth - V) / K_v)) - 1
    psc = np.clip(scc, a_min=0, a_max=None)
    return vmax * psc


def I_pump(K, Na):
    return rho / ((1 + np.exp(3.5 - K)) * (1 + np.exp((25 - Na) / 3)))


# in ms
tau_K = 100  # s
tau_Na = 20  # s
tau_m = 0.01  # s
tau_x = 2  # s

deltaK = 0.02
deltaNa = 0.03
deltax = 0.01
rho = 0.2
gamma = 10.

# input terms devided by gL
sigma = 25.
G_syn = 5.  # 5.*gL
g_K = 0.5
K_0 = 3.
# V
Kbath1 = 3
Kbath2 = 8.5
Na_0 = 10.
vmax = 100
Vth = 25.
K_v = 20.

gL = 1  # from their mathematica notebook
# parameters of the observer:
gU = 0.4
CU = 200.
Uth = 25.
Vr = -50.
U1 = -60.
U2 = -40.
U_0 = -70.

Ur = Vr
## x0 not given
V_0 = 0
x_0 = 1.
v_0 = 1
Ip_0 = 0
vkk0 = VK(K_0)
# K_Na_x_V_v_U

dt = 0.01  # resolution in second
u_0 = u_over_gL(K_0, v_0, x_0)

tt = 300.  # duration in second
lngth = int(tt / dt)
xax = np.arange(0, tt, dt)

y_0 = 0.  # recovery

# np.random.seed(124)

arbig = np.zeros((lngth, 9))
# states0 = 
arbig[0] = [K_0, Na_0, x_0, V_0, U_0, y_0, v_0, Ip_0, u_0]
Ki, Nai, xi, Vi, Ui, yi, vi, Ipi, ui = arbig[0]

for ii, it in enumerate(xax[1:], 1):  # range(1,lngth):
    if it <= 50:
        Kbath = Kbath1
    else:
        Kbath = Kbath2
    state = dots(arbig[ii - 1, :6])
    Ki, Nai, xi, Vi, Ui, yi = arbig[ii - 1, :6] + dt * state

    Ipi = I_pump(Ki, Nai)
    vi = v(Vi)
    ui = u_over_gL(Ki, vi, xi)

    # if Vi>Vth:
    # 	Vi = Vr
    if Ui > Vth:
        Ui = Vr
        yi = yi + 150.
    arbig[ii] = [Ki, Nai, xi, Vi, Ui, yi, vi, Ipi, ui]

KK, NNa, xx, VV, UU, yy, vv, II, uu = arbig.T

pl.close('all')
pl.figure(figsize=(10, 7))

ax = pl.subplot(421)
pl.plot(xax, vv, 'k')
pl.ylabel(r'$v (Hz)$')
# pl.xticks(xa)
pl.locator_params(axis='x', nbins=4)

pl.subplot(423, sharex=ax)
pl.plot(xax, VV, 'r')
pl.ylabel(r'$V(mV)$')

pl.subplot(425, sharex=ax)
pl.plot(xax, xx, color=(0.5, 0., 0.5))
pl.ylabel(r'$x^D$')

pl.subplot(427, sharex=ax)
pl.plot(xax, KK)
pl.plot(xax, NNa, 'r')
pl.ylabel(r'$[K]$, $[Na]$ (mM)')
pl.legend(['K', 'Na'], frameon=False, loc='best')

pl.subplot(422)
# pl.plot(xax[2000:3000], UU[2000:3000], 'k')
pl.plot(xax, UU, 'k')
pl.ylabel(r'$U (mV)$')

bgin = int(212. / dt)
endd = int(223. / dt)
axx = pl.subplot(424)
pl.plot(xax[bgin:endd], UU[bgin:endd], 'k')
pl.ylabel(r'$U (mV)$')
pl.xlim(bgin - 1, endd + 1)

ax1 = pl.subplot(426, sharex=axx)
pl.plot(xax[bgin:endd], KK[bgin:endd], label='K')
pl.plot(xax[bgin:endd], NNa[bgin:endd], 'r', label='Na')
pl.ylabel(r'conc. $(mM)$')
# pl.legend(frameon=False, loc='best')

ax2 = ax1.twinx()
pl.plot(xax[bgin:endd], II[bgin:endd], \
        color=np.array([210, 105, 30]) / 255., label='Ip')
# pl.legend(frameon=False, loc='best')
pl.ylabel(r'$I_{pump}$ $(mM/s)$')
pl.ylim(0.01, 0.1)

pl.subplot(428, sharex=ax)
pl.plot(xax, uu)
pl.ylabel(r'$u/g_L$')

pl.tight_layout()
pl.show()

# MATLAB
# C=100; vr=-60; vt=-40; k=0.7;
# a=0.03; b=-2; c=-50; d=100;
# vpeak=35;
# % parameters used for RS
# % neocortical pyramidal neurons
# % spike cutoff
# T=1000; tau=1;
# n=round(T/tau);
# v=vr*ones(1,n);  u=0*v;
# I=[zeros(1,0.1*n),70*ones(1,0.9*n)];% pulse of input DC current
# for i=1:n-1                         % forward Euler method
#     v(i+1)=v(i)+tau*(k*(v(i)-vr)*(v(i)-vt)-u(i)+I(i))/C;
#     u(i+1)=u(i)+tau*a*(b*(v(i)-vr)-u(i));
#     if v(i+1)>=vpeak
#         v(i)=vpeak;
# v(i+1)=c;
#         u(i+1)=u(i+1)+d;
#     end;
# end;
# plot(tau*(1:n), v);
# % a spike is fired!
# % padding the spike amplitude
# % membrane voltage reset
# % recovery variable update
# % plot the result
