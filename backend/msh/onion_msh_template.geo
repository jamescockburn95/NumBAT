// Template mesh geometry file for multiple concentric circular inclusions.

// Force Gmsh to use legacy msh file format v2
Mesh.MshFileVersion = 2.2;

d = 1; // grating period
d_in_nm = 2000;
dy_in_nm = 2000;
dy = dy_in_nm/d_in_nm;
a1 = 100;
a2 = 100;
a3 = 100;
a4 = 100;
a5 = 100;
a6 = 100;
a7 = 100;
a8 = 100;
a9 = 100;
a10 = 100;
a11 = 100;
a12 = 100;
a13 = 100;
a14 = 100;
a15 = 100;
rad1 = (a1/(2*d_in_nm))*d;
rad2 = ((a1+a2)/(2*d_in_nm))*d;
rad3 = ((a1+a2+a3)/(2*d_in_nm))*d;
rad4 = ((a1+a2+a3+a4)/(2*d_in_nm))*d;
rad5 = ((a1+a2+a3+a4+a5)/(2*d_in_nm))*d;
rad6 = ((a1+a2+a3+a4+a5+a6)/(2*d_in_nm))*d;
rad7 = ((a1+a2+a3+a4+a5+a6+a7)/(2*d_in_nm))*d;
rad8 = ((a1+a2+a3+a4+a5+a6+a7+a8)/(2*d_in_nm))*d;
rad9 = ((a1+a2+a3+a4+a5+a6+a7+a8+a9)/(2*d_in_nm))*d;
rad10 = ((a1+a2+a3+a4+a5+a6+a7+a8+a9+a10)/(2*d_in_nm))*d;
rad11 = ((a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11)/(2*d_in_nm))*d;
rad12 = ((a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)/(2*d_in_nm))*d;
rad13 = ((a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13)/(2*d_in_nm))*d;
rad14 = ((a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14)/(2*d_in_nm))*d;
rad15 = ((a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14+a15)/(2*d_in_nm))*d;
lc = 0.1; 
lc_refine_1 = lc/1; // on cylinder surfaces
lc_refine_2 = lc/1; // cylinder1 centres

hy = dy; // Thickness: square profile => hy=d
hx = d;

x0 = -dy/2;
y0 = dy/2;

//Box part a 
Point(1) = {x0,     y0,    0, lc};
Point(2) = {x0,     y0-hy, 0, lc};
Point(3) = {x0+hx,  y0-hy, 0, lc};
Point(4) = {x0+hx,  y0,    0, lc};

//Box part b 
Point(10) = {x0+hx/2, y0,      0, lc};     // N
Point(11) = {x0,      y0-hy/2, 0, lc};     // W
Point(12) = {x0+hx/2, y0-hy,   0, lc};     // S
Point(13) = {x0+hx,   y0-hy/2, 0, lc};     // E 

// Circle 1 vertices
Point(5) = {x0+hx/2,      y0-hy/2,      0, lc_refine_2};   // Center
Point(6) = {x0+hx/2,      y0-hy/2+rad1, 0, lc_refine_2};   // N
Point(7) = {x0+hx/2-rad1, y0-hy/2,      0, lc_refine_2};   // W
Point(8) = {x0+hx/2,      y0-hy/2-rad1, 0, lc_refine_2};   // S
Point(9) = {x0+hx/2+rad1, y0-hy/2,      0, lc_refine_2};   // E

// Circle 2 vertices
Point(26) = {x0+hx/2,      y0-hy/2+rad2, 0, lc_refine_2};   // N
Point(27) = {x0+hx/2-rad2, y0-hy/2,      0, lc_refine_2};   // W
Point(28) = {x0+hx/2,      y0-hy/2-rad2, 0, lc_refine_2};   // S
Point(29) = {x0+hx/2+rad2, y0-hy/2,      0, lc_refine_2};   // E

// Circle 3 vertices
Point(36) = {x0+hx/2,      y0-hy/2+rad3, 0, lc_refine_2};   // N
Point(37) = {x0+hx/2-rad3, y0-hy/2,      0, lc_refine_2};   // W
Point(38) = {x0+hx/2,      y0-hy/2-rad3, 0, lc_refine_2};   // S
Point(39) = {x0+hx/2+rad3, y0-hy/2,      0, lc_refine_2};   // E

// Circle 4 vertices
Point(46) = {x0+hx/2,      y0-hy/2+rad4, 0, lc_refine_2};   // N
Point(47) = {x0+hx/2-rad4, y0-hy/2,      0, lc_refine_2};   // W
Point(48) = {x0+hx/2,      y0-hy/2-rad4, 0, lc_refine_2};   // S
Point(49) = {x0+hx/2+rad4, y0-hy/2,      0, lc_refine_2};   // E

// Circle 5 vertices
Point(56) = {x0+hx/2,      y0-hy/2+rad5, 0, lc_refine_2};   // N
Point(57) = {x0+hx/2-rad5, y0-hy/2,      0, lc_refine_2};   // W
Point(58) = {x0+hx/2,      y0-hy/2-rad5, 0, lc_refine_2};   // S
Point(59) = {x0+hx/2+rad5, y0-hy/2,      0, lc_refine_2};   // E

// Circle 6 vertices
Point(66) = {x0+hx/2,      y0-hy/2+rad6, 0, lc_refine_2};   // N
Point(67) = {x0+hx/2-rad6, y0-hy/2,      0, lc_refine_2};   // W
Point(68) = {x0+hx/2,      y0-hy/2-rad6, 0, lc_refine_2};   // S
Point(69) = {x0+hx/2+rad6, y0-hy/2,      0, lc_refine_2};   // E

// Circle 7 vertices
Point(76) = {x0+hx/2,      y0-hy/2+rad7, 0, lc_refine_2};   // N
Point(77) = {x0+hx/2-rad7, y0-hy/2,      0, lc_refine_2};   // W
Point(78) = {x0+hx/2,      y0-hy/2-rad7, 0, lc_refine_2};   // S
Point(79) = {x0+hx/2+rad7, y0-hy/2,      0, lc_refine_2};   // E

// Circle 8 vertices
Point(86) = {x0+hx/2,      y0-hy/2+rad8, 0, lc_refine_2};   // N
Point(87) = {x0+hx/2-rad8, y0-hy/2,      0, lc_refine_2};   // W
Point(88) = {x0+hx/2,      y0-hy/2-rad8, 0, lc_refine_2};   // S
Point(89) = {x0+hx/2+rad8, y0-hy/2,      0, lc_refine_2};   // E

// Circle 9 vertices
Point(96) = {x0+hx/2,      y0-hy/2+rad9, 0, lc_refine_2};   // N
Point(97) = {x0+hx/2-rad9, y0-hy/2,      0, lc_refine_2};   // W
Point(98) = {x0+hx/2,      y0-hy/2-rad9, 0, lc_refine_2};   // S
Point(99) = {x0+hx/2+rad9, y0-hy/2,      0, lc_refine_2};   // E

// Circle 10 vertices
Point(106) = {x0+hx/2,       y0-hy/2+rad10, 0, lc_refine_2};   // N
Point(107) = {x0+hx/2-rad10, y0-hy/2,      0, lc_refine_2};   // W
Point(108) = {x0+hx/2,       y0-hy/2-rad10, 0, lc_refine_2};   // S
Point(109) = {x0+hx/2+rad10, y0-hy/2,      0, lc_refine_2};   // E

// Circle 11 vertices
Point(116) = {x0+hx/2,       y0-hy/2+rad11, 0, lc_refine_2};   // N
Point(117) = {x0+hx/2-rad11, y0-hy/2,      0, lc_refine_2};   // W
Point(118) = {x0+hx/2,       y0-hy/2-rad11, 0, lc_refine_2};   // S
Point(119) = {x0+hx/2+rad11, y0-hy/2,      0, lc_refine_2};   // E

// Circle 12 vertices
Point(126) = {x0+hx/2,       y0-hy/2+rad12, 0, lc_refine_2};   // N
Point(127) = {x0+hx/2-rad12, y0-hy/2,      0, lc_refine_2};   // W
Point(128) = {x0+hx/2,       y0-hy/2-rad12, 0, lc_refine_2};   // S
Point(129) = {x0+hx/2+rad12, y0-hy/2,      0, lc_refine_2};   // E

// Circle 13 vertices
Point(136) = {x0+hx/2,       y0-hy/2+rad13, 0, lc_refine_2};   // N
Point(137) = {x0+hx/2-rad13, y0-hy/2,      0, lc_refine_2};   // W
Point(138) = {x0+hx/2,       y0-hy/2-rad13, 0, lc_refine_2};   // S
Point(139) = {x0+hx/2+rad13, y0-hy/2,      0, lc_refine_2};   // E

// Circle 14 vertices
Point(146) = {x0+hx/2,       y0-hy/2+rad14, 0, lc_refine_2};   // N
Point(147) = {x0+hx/2-rad14, y0-hy/2,      0, lc_refine_2};   // W
Point(148) = {x0+hx/2,       y0-hy/2-rad14, 0, lc_refine_2};   // S
Point(149) = {x0+hx/2+rad14, y0-hy/2,      0, lc_refine_2};   // E

// Circle 15 vertices
Point(156) = {x0+hx/2,       y0-hy/2+rad15, 0, lc_refine_2};   // N
Point(157) = {x0+hx/2-rad15, y0-hy/2,      0, lc_refine_2};   // W
Point(158) = {x0+hx/2,       y0-hy/2-rad15, 0, lc_refine_2};   // S
Point(159) = {x0+hx/2+rad15, y0-hy/2,      0, lc_refine_2};   // E


Line(1) = {1,10};
Line(2) = {10,4};
Line(3) = {2,12};
Line(4) = {12,3};
Line(5) = {1,11};
Line(6) = {11,2};
Line(7) = {4,13};
Line(8) = {13,3};
Line(9) = {11,157};
Line(10) = {7,5};
Line(11) = {5,9};
Line(12) = {159,13};
Line(13) = {10,156};
Line(14) = {6,5};
Line(15) = {5,8};
Line(16) = {158,12};
Line(30) = {7,27};
Line(17) = {157,147};
Line(18) = {137,147};
Line(19) = {137,127};
Line(20) = {117,127};
Line(21) = {117,107};
Line(22) = {97,107};
Line(23) = {97,87};
Line(24) = {77,87};
Line(25) = {77,67};
Line(26) = {57,67};
Line(27) = {57,47};
Line(28) = {37,47};
Line(29) = {37,27};
Line(36) = {6,26};
Line(37) = {156,146};
Line(38) = {136,146};
Line(39) = {136,126};
Line(40) = {116,126};
Line(41) = {116,106};
Line(42) = {96,106};
Line(43) = {96,86};
Line(44) = {76,86};
Line(45) = {76,66};
Line(46) = {56,66};
Line(47) = {56,46};
Line(48) = {36,46};
Line(49) = {36,26};
Line(56) = {8,28};
Line(57) = {158,148};
Line(58) = {138,148};
Line(59) = {138,128};
Line(60) = {118,128};
Line(61) = {118,108};
Line(62) = {98,108};
Line(63) = {98,88};
Line(64) = {78,88};
Line(65) = {78,68};
Line(66) = {58,68};
Line(67) = {58,48};
Line(68) = {38,48};
Line(69) = {38,28};
Line(76) = {9,29};
Line(77) = {159,149};
Line(78) = {139,149};
Line(79) = {139,129};
Line(80) = {119,129};
Line(81) = {119,109};
Line(82) = {99,109};
Line(83) = {99,89};
Line(84) = {79,89};
Line(85) = {79,69};
Line(86) = {59,69};
Line(87) = {59,49};
Line(88) = {39,49};
Line(89) = {39,29};

Physical Line(1) = {1,2};
Physical Line(2) = {3,4};
Physical Line(3) = {5,6};
Physical Line(4) = {7,8};

Ellipsis(201) = {9,5,6,6};
Ellipsis(202) = {6,5,7,7};
Ellipsis(203) = {7,5,8,8};
Ellipsis(204) = {8,5,9,9};
Ellipsis(205) = {29,5,26,26};
Ellipsis(206) = {26,5,27,27};
Ellipsis(207) = {27,5,28,28};
Ellipsis(208) = {28,5,29,29};
Ellipsis(301) = {39,5,36,36};
Ellipsis(302) = {36,5,37,37};
Ellipsis(303) = {37,5,38,38};
Ellipsis(304) = {38,5,39,39};
Ellipsis(305) = {49,5,46,46};
Ellipsis(306) = {46,5,47,47};
Ellipsis(307) = {47,5,48,48};
Ellipsis(308) = {48,5,49,49};
Ellipsis(401) = {59,5,56,56};
Ellipsis(402) = {56,5,57,57};
Ellipsis(403) = {57,5,58,58};
Ellipsis(404) = {58,5,59,59};
Ellipsis(405) = {69,5,66,66};
Ellipsis(406) = {66,5,67,67};
Ellipsis(407) = {67,5,68,68};
Ellipsis(408) = {68,5,69,69};
Ellipsis(501) = {79,5,76,76};
Ellipsis(502) = {76,5,77,77};
Ellipsis(503) = {77,5,78,78};
Ellipsis(504) = {78,5,79,79};
Ellipsis(505) = {89,5,86,86};
Ellipsis(506) = {86,5,87,87};
Ellipsis(507) = {87,5,88,88};
Ellipsis(508) = {88,5,89,89};
Ellipsis(601) = {99,5,96,96};
Ellipsis(602) = {96,5,97,97};
Ellipsis(603) = {97,5,98,98};
Ellipsis(604) = {98,5,99,99};
Ellipsis(605) = {109,5,106,106};
Ellipsis(606) = {106,5,107,107};
Ellipsis(607) = {107,5,108,108};
Ellipsis(608) = {108,5,109,109};
Ellipsis(701) = {119,5,116,116};
Ellipsis(702) = {116,5,117,117};
Ellipsis(703) = {117,5,118,118};
Ellipsis(704) = {118,5,119,119};
Ellipsis(705) = {129,5,126,126};
Ellipsis(706) = {126,5,127,127};
Ellipsis(707) = {127,5,128,128};
Ellipsis(708) = {128,5,129,129};
Ellipsis(801) = {139,5,136,136};
Ellipsis(802) = {136,5,137,137};
Ellipsis(803) = {137,5,138,138};
Ellipsis(804) = {138,5,139,139};
Ellipsis(805) = {149,5,146,146};
Ellipsis(806) = {146,5,147,147};
Ellipsis(807) = {147,5,148,148};
Ellipsis(808) = {148,5,149,149};
Ellipsis(901) = {159,5,156,156};
Ellipsis(902) = {156,5,157,157};
Ellipsis(903) = {157,5,158,158};
Ellipsis(904) = {158,5,159,159};

Line Loop(905) = {902, -9, -5, 1, 13};
Plane Surface(906) = {905};
Line Loop(907) = {13, -901, 12, -7, -2};
Plane Surface(908) = {907};
Line Loop(909) = {12, 8, -4, -16, 904};
Plane Surface(910) = {909};
Line Loop(911) = {16, -3, -6, 9, 903};
Plane Surface(912) = {911};
Line Loop(913) = {902, 17, -806, -37};
Plane Surface(914) = {913};
Line Loop(915) = {37, -805, -77, 901};
Plane Surface(916) = {915};
Line Loop(917) = {77, -808, -57, 904};
Plane Surface(918) = {917};
Line Loop(919) = {57, -807, -17, 903};
Plane Surface(920) = {919};
Line Loop(921) = {806, -18, -802, 38};
Plane Surface(922) = {921};
Line Loop(923) = {706, -19, -802, 39};
Plane Surface(924) = {923};
Line Loop(925) = {40, 706, -20, -702};
Plane Surface(926) = {925};
Line Loop(927) = {21, -606, -41, 702};
Plane Surface(928) = {927};
Line Loop(929) = {42, 606, -22, -602};
Plane Surface(930) = {929};
Line Loop(931) = {23, -506, -43, 602};
Plane Surface(932) = {931};
Line Loop(933) = {44, 506, -24, -502};
Plane Surface(934) = {933};
Line Loop(935) = {25, -406, -45, 502};
Plane Surface(936) = {935};
Line Loop(937) = {46, 406, -26, -402};
Plane Surface(938) = {937};
Line Loop(939) = {402, 27, -306, -47};
Plane Surface(940) = {939};
Line Loop(941) = {306, -28, -302, 48};
Plane Surface(942) = {941};
Line Loop(943) = {302, 29, -206, -49};
Plane Surface(944) = {943};
Line Loop(945) = {206, -30, -202, 36};
Plane Surface(946) = {945};
Line Loop(947) = {202, 10, -14};
Plane Surface(948) = {947};
Line Loop(949) = {14, 11, 201};
Plane Surface(950) = {949};
Line Loop(951) = {11, -204, -15};
Plane Surface(952) = {951};
Line Loop(953) = {15, -203, 10};
Plane Surface(954) = {953};
Line Loop(955) = {201, 36, -205, -76};
Plane Surface(956) = {955};
Line Loop(957) = {89, 205, -49, -301};
Plane Surface(958) = {957};
Line Loop(959) = {88, 305, -48, -301};
Plane Surface(960) = {959};
Line Loop(961) = {305, -47, -401, 87};
Plane Surface(962) = {961};
Line Loop(963) = {86, 405, -46, -401};
Plane Surface(964) = {963};
Line Loop(965) = {405, -45, -501, 85};
Plane Surface(966) = {965};
Line Loop(967) = {44, -505, -84, 501};
Plane Surface(968) = {967};
Line Loop(969) = {43, -505, -83, 601};
Plane Surface(970) = {969};
Line Loop(971) = {42, -605, -82, 601};
Plane Surface(972) = {971};
Line Loop(973) = {81, 605, -41, -701};
Plane Surface(974) = {973};
Line Loop(975) = {701, 40, -705, -80};
Line Loop(976) = {38, -805, -78, 801};
Plane Surface(977) = {976};
Line Loop(978) = {801, 39, -705, -79};
Plane Surface(979) = {978};
Plane Surface(980) = {975};
Line Loop(981) = {808, -78, -804, 58};
Plane Surface(982) = {981};
Line Loop(983) = {59, 708, -79, -804};
Plane Surface(984) = {983};
Line Loop(985) = {708, -80, -704, 60};
Plane Surface(986) = {985};
Line Loop(987) = {61, 608, -81, -704};
Line Loop(988) = {204, 76, -208, -56};
Plane Surface(989) = {988};
Line Loop(990) = {56, -207, -30, 203};
Plane Surface(991) = {987};
Line Loop(992) = {82, -608, -62, 604};
Plane Surface(993) = {992};
Line Loop(994) = {604, 83, -508, -63};
Plane Surface(995) = {994};
Line Loop(996) = {64, 508, -84, -504};
Plane Surface(997) = {996};
Line Loop(998) = {85, -408, -65, 504};
Plane Surface(999) = {998};
Line Loop(1000) = {408, -86, -404, 66};
Plane Surface(1001) = {1000};
Line Loop(1002) = {87, -308, -67, 404};
Plane Surface(1003) = {1002};
Line Loop(1004) = {308, -88, -304, 68};
Plane Surface(1005) = {1004};
Line Loop(1006) = {89, -208, -69, 304};
Plane Surface(1007) = {1006};
Plane Surface(1008) = {990};
Line Loop(1009) = {69, -207, -29, 303};
Plane Surface(1010) = {1009};
Line Loop(1011) = {303, 68, -307, -28};
Plane Surface(1032) = {1011};
Line Loop(1012) = {807, -58, -803, 18};
Plane Surface(1013) = {1012};
Line Loop(1014) = {803, 59, -707, -19};
Plane Surface(1015) = {1014};
Line Loop(1016) = {60, -707, -20, 703};
Plane Surface(1017) = {1016};
Line Loop(1018) = {703, 61, -607, -21};
Plane Surface(1019) = {1018};
Line Loop(1020) = {62, -607, -22, 603};
Plane Surface(1021) = {1020};
Line Loop(1022) = {603, 63, -507, -23};
Plane Surface(1023) = {1022};
Line Loop(1024) = {64, -507, -24, 503};
Plane Surface(1025) = {1024};
Line Loop(1026) = {503, 65, -407, -25};
Plane Surface(1027) = {1026};
Line Loop(1028) = {66, -407, -26, 403};
Plane Surface(1029) = {1028};
Line Loop(1030) = {27, 307, -67, -403};
Plane Surface(1031) = {1030};

Physical Surface(1) = {906,908,910,912};      // Outer space, mat_bkg
Physical Surface(2) = {948, 950, 952, 954};   // Center, mat_a, r<rad1
Physical Surface(3) = {946, 956, 989, 1008};  // Ring 1, mat_b, rad1<r<rad2
Physical Surface(4) = {944, 958, 1007, 1010}; // Ring 2, mat_c
Physical Surface(5) = {942, 960, 1005, 1032}; // Ring 3, mat_d
Physical Surface(6) = {1031, 940, 962, 1003}; // Ring 4, mat_e
Physical Surface(7) = {964, 1001, 1029, 938}; // Ring 5, mat_f
Physical Surface(8) = {936, 1027, 999, 966};  // Ring 6, mat_g
Physical Surface(9) = {968, 997, 1025, 934};  // Ring 7, mat_h
Physical Surface(10) = {932, 1023, 995, 970}; // Ring 8, mat_i
Physical Surface(11) = {972, 993, 1021, 930}; // Ring 9, mat_j
Physical Surface(12) = {928, 1019, 991, 974}; // Ring 10, mat_k
Physical Surface(13) = {980, 986, 1017, 926}; // Ring 11, mat_l
Physical Surface(14) = {924, 1015, 984, 979}; // Ring 12, mat_m
Physical Surface(15) = {977, 982, 1013, 922}; // Ring 13, mat_n
Physical Surface(16) = {914, 920, 918, 916};  // Ring 14, mat_o

