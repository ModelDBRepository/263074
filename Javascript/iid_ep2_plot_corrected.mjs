function Epileptor(lngth) {


Math.nrand = function() {
        var x1, x2, rad, y1;
        do {
            x1 = 2 * this.random() - 1;
            x2 = 2 * this.random() - 1;
            rad = x1 * x1 + x2 * x2;
        } while(rad >= 1 || rad == 0);
        var c = this.sqrt(-2 * Math.log(rad) / rad);
        return x1 * c;
    };

function VK(Kconc){
    return 26.6 * Math.log(Kconc / 130.)
}

function u_over_gL(K, v, x){
    eta = Math.nrand();//om.normal(0, 1)
    vkk = VK(K);
    return g_K * (vkk - vkk0) + G_syn * v * (x - 0.5) 
          + sigma * eta / Math.sqrt(dt) / Math.sqrt(1000)
}

//**************************************************************** */
function dots(states){
    // K, Na, x, V, U  = states
    K = states[1];
    Na = states[2]; 
    x = states[3]; 
    V = states[4]; 
    U = states[5]; 
    dotK = (Kbath - K) / tau_K - 2 * gamma * Ipi + deltaK * vi;
    dotNa = (Na_0 - Na) / tau_Na - 3 * Ipi + deltaNa * vi;
    dotV = (ui - V) / tau_m;
    dotx = (1 - x) / tau_x - deltax * x * vi;
    dotU = 1000 * ((gU / CU) * (U - U1) * (U - U2) + gL * ui / CU);
    dots[1]=dotK;
    dots[2]=dotNa;
    dots[3]=dotx;
    dots[4]=dotV;
    dots[5]=dotU;
    return dots
}
//**************************************************************** */

function v(V){
    scc = 2. / (1 + Math.exp(2 * (Vth - V) / K_v)) - 1;
    if (scc<0) {scc=0};
    return vmax * scc
}

function I_pump(K, Na){
    return rho / ((1 + Math.exp(3.5 - K)) * (1 + Math.exp((25 - Na) / 3)))
}

// in ms
tau_K = 100;  // s
tau_Na = 20;  // s
tau_m = 0.01;  // s
tau_x = 2;  // s

deltaK = 0.02;
deltaNa = 0.03;
deltax = 0.01;
rho = 0.2;
gamma = 10.0;

// input terms devided by gL
sigma = 25.0;
G_syn = 5.0;  // 5.*gL
g_K = 0.5;
K_0 = 3.0;
// V
Kbath1 = 3;
Kbath2 = 8.5;
Na_0 = 10.0;
vmax = 100;
Vth = 25.0;
K_v = 20.0;

gL = 1;  // from their mathematica notebook
// parameters of the observer:
gU = 0.4;
CU = 200.0;
Uth = 25.0;
Vr = -50.0;
U1 = -60.0;
U2 = -40.0;
U_0 = -70.0;

Ur = Vr;
// x0 not given
V_0 = 0;
x_0 = 1.0;
v_0 = 1;
Ip_0 = 0;
vkk0 = VK(K_0);
// K_Na_x_V_v_U

dt = 0.005;  // resolution in second
u_0 = u_over_gL(K_0, v_0, x_0);
tt = lngth*dt;  // duration in second

var xax =[];
var arbig = [];
var ii; var k;
for (ii=0; ii<=lngth; ii++){
    xax[ii] = dt*ii;
    arbig[ii] = [];
    for (k=1; k<=9; k++){
        arbig[ii][k] = 0;
    }
}

y_0 = 0.0;  // recovery

// Math.random.seed(124)

// states0 = 
arbig[0][1] = K_0;
arbig[0][2] = Na_0;
arbig[0][3] = x_0;
arbig[0][4] = V_0;
arbig[0][5] = U_0;
arbig[0][6] = 0;
arbig[0][7] = v_0;
arbig[0][8] = Ip_0;
arbig[0][9] = u_0;
Ki = arbig[0][1];
Nai = arbig[0][2];
xi = arbig[0][3]; 
Vi = arbig[0][4]; 
Ui = arbig[0][5]; 
time = arbig[0][6]; 
vi = arbig[0][7]; 
Ipi = arbig[0][8]; 
ui = arbig[0][9];

var state=[];
var ii; 
for (ii = 1; ii <= lngth; ii++) {
    time = ii*dt;
    if (time <= 50) { Kbath = Kbath1 }
    else            { Kbath = Kbath2  }
    for (k=1; k<=5; k++){
        state[k] = arbig[ii-1][k];
    }
    //************************************************* */
    var_dots = dots(state);
    //************************************************* */
    Ki = state[1] + dt * var_dots[1];
    Nai = state[2] + dt * var_dots[2];
    xi = state[3] + dt * var_dots[3];
    Vi = state[4] + dt * var_dots[4];
    Ui = state[5] + dt * var_dots[5];
    //************************************************* */
    Ipi = I_pump(Ki, Nai);
    vi = v(Vi);
    ui = u_over_gL(Ki, vi, xi);

    if (Ui > Vth){   Ui = Vr;    }
    arbig[ii][1] = Ki;
    arbig[ii][2] = Nai;
    arbig[ii][3] = xi;
    arbig[ii][4] = Vi;
    arbig[ii][5] = Ui;
    arbig[ii][6] = time;
    arbig[ii][7] = vi;
    arbig[ii][8] = Ipi;
    arbig[ii][9] = ui;
}
return arbig;
}


