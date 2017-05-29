% Test file for function all()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = all([]);
% TEST 2
res2 = all(m2sciUnknownType([]));
% TEST 3
res3 = all(m2sciUnknownDims([]));
% TEST 4
res4 = all([1]);
% TEST 5
res5 = all([1,2,3]);
% TEST 6
res6 = all([1;2;3]);
% TEST 7
res7 = all([1,2,3;4,5,6]);
% TEST 8
res8 = all(m2sciUnknownType([1]));
% TEST 9
res9 = all(m2sciUnknownType([1,2,3]));
% TEST 10
res10 = all(m2sciUnknownType([1;2;3]));
% TEST 11
res11 = all(m2sciUnknownType([1,2,3;4,5,6]));
% TEST 12
res12 = all(m2sciUnknownDims([1]));
% TEST 13
res13 = all(m2sciUnknownDims([1,2,3]));
% TEST 14
res14 = all(m2sciUnknownDims([1;2;3]));
% TEST 15
res15 = all(m2sciUnknownDims([1,2,3;4,5,6]));
% TEST 16
res16 = all([i]);
% TEST 17
res17 = all([i,2i,3i]);
% TEST 18
res18 = all([i;2i;3i]);
% TEST 19
res19 = all([i,2i,3i;4i,5i,6i]);
% TEST 20
res20 = all(m2sciUnknownType([i]));
% TEST 21
res21 = all(m2sciUnknownType([i,2i,3i]));
% TEST 22
res22 = all(m2sciUnknownType([i;2i;3i]));
% TEST 23
res23 = all(m2sciUnknownType([i,2i,3i;4i,5i,6i]));
% TEST 24
res24 = all(m2sciUnknownDims([i]));
% TEST 25
res25 = all(m2sciUnknownDims([i,2i,3i]));
% TEST 26
res26 = all(m2sciUnknownDims([i;2i;3i]));
% TEST 27
res27 = all(m2sciUnknownDims([i,2i,3i;4i,5i,6i]));
% TEST 28
res28 = all(['s']);
% TEST 29
res29 = all(['str1']);
% TEST 30
res30 = all(['str1','str2','str3']);
% TEST 31
res31 = all(['str1';'str2';'str3']);
% TEST 32
res32 = all(['str1','str2','str3';'str4','str5','str6']);
% TEST 33
res33 = all(m2sciUnknownType(['s']));
% TEST 34
res34 = all(m2sciUnknownType(['str1']));
% TEST 35
res35 = all(m2sciUnknownType(['str1','str2','str3']));
% TEST 36
res36 = all(m2sciUnknownType(['str1';'str2';'str3']));
% TEST 37
res37 = all(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']));
% TEST 38
res38 = all(m2sciUnknownDims(['s']));
% TEST 39
res39 = all(m2sciUnknownDims(['str1']));
% TEST 40
res40 = all(m2sciUnknownDims(['str1','str2','str3']));
% TEST 41
res41 = all(m2sciUnknownDims(['str1';'str2';'str3']));
% TEST 42
res42 = all(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']));
% TEST 43
res43 = all([[1]==[1]]);
% TEST 44
res44 = all([[1,2,3]==[1,0,3]]);
% TEST 45
res45 = all([[1;2;3]==[1;0;3]]);
% TEST 46
res46 = all([[1,2,3;4,5,6]==[1,0,3;4,5,0]]);
% TEST 47
res47 = all(m2sciUnknownType([[1]==[1]]));
% TEST 48
res48 = all(m2sciUnknownType([[1,2,3]==[1,0,3]]));
% TEST 49
res49 = all(m2sciUnknownType([[1;2;3]==[1;0;3]]));
% TEST 50
res50 = all(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]));
% TEST 51
res51 = all(m2sciUnknownDims([[1]==[1]]));
% TEST 52
res52 = all(m2sciUnknownDims([[1,2,3]==[1,0,3]]));
% TEST 53
res53 = all(m2sciUnknownDims([[1;2;3]==[1;0;3]]));
% TEST 54
res54 = all(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]));
% TEST 55
res55 = all([],1);
% TEST 56
res56 = all(m2sciUnknownType([]),1);
% TEST 57
res57 = all(m2sciUnknownDims([]),1);
% TEST 58
res58 = all([1],1);
% TEST 59
res59 = all([1,2,3],1);
% TEST 60
res60 = all([1;2;3],1);
% TEST 61
res61 = all([1,2,3;4,5,6],1);
% TEST 62
res62 = all(m2sciUnknownType([1]),1);
% TEST 63
res63 = all(m2sciUnknownType([1,2,3]),1);
% TEST 64
res64 = all(m2sciUnknownType([1;2;3]),1);
% TEST 65
res65 = all(m2sciUnknownType([1,2,3;4,5,6]),1);
% TEST 66
res66 = all(m2sciUnknownDims([1]),1);
% TEST 67
res67 = all(m2sciUnknownDims([1,2,3]),1);
% TEST 68
res68 = all(m2sciUnknownDims([1;2;3]),1);
% TEST 69
res69 = all(m2sciUnknownDims([1,2,3;4,5,6]),1);
% TEST 70
res70 = all([i],1);
% TEST 71
res71 = all([i,2i,3i],1);
% TEST 72
res72 = all([i;2i;3i],1);
% TEST 73
res73 = all([i,2i,3i;4i,5i,6i],1);
% TEST 74
res74 = all(m2sciUnknownType([i]),1);
% TEST 75
res75 = all(m2sciUnknownType([i,2i,3i]),1);
% TEST 76
res76 = all(m2sciUnknownType([i;2i;3i]),1);
% TEST 77
res77 = all(m2sciUnknownType([i,2i,3i;4i,5i,6i]),1);
% TEST 78
res78 = all(m2sciUnknownDims([i]),1);
% TEST 79
res79 = all(m2sciUnknownDims([i,2i,3i]),1);
% TEST 80
res80 = all(m2sciUnknownDims([i;2i;3i]),1);
% TEST 81
res81 = all(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),1);
% TEST 82
res82 = all(['s'],1);
% TEST 83
res83 = all(['str1'],1);
% TEST 84
res84 = all(['str1','str2','str3'],1);
% TEST 85
res85 = all(['str1';'str2';'str3'],1);
% TEST 86
res86 = all(['str1','str2','str3';'str4','str5','str6'],1);
% TEST 87
res87 = all(m2sciUnknownType(['s']),1);
% TEST 88
res88 = all(m2sciUnknownType(['str1']),1);
% TEST 89
res89 = all(m2sciUnknownType(['str1','str2','str3']),1);
% TEST 90
res90 = all(m2sciUnknownType(['str1';'str2';'str3']),1);
% TEST 91
res91 = all(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),1);
% TEST 92
res92 = all(m2sciUnknownDims(['s']),1);
% TEST 93
res93 = all(m2sciUnknownDims(['str1']),1);
% TEST 94
res94 = all(m2sciUnknownDims(['str1','str2','str3']),1);
% TEST 95
res95 = all(m2sciUnknownDims(['str1';'str2';'str3']),1);
% TEST 96
res96 = all(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),1);
% TEST 97
res97 = all([[1]==[1]],1);
% TEST 98
res98 = all([[1,2,3]==[1,0,3]],1);
% TEST 99
res99 = all([[1;2;3]==[1;0;3]],1);
% TEST 100
res100 = all([[1,2,3;4,5,6]==[1,0,3;4,5,0]],1);
% TEST 101
res101 = all(m2sciUnknownType([[1]==[1]]),1);
% TEST 102
res102 = all(m2sciUnknownType([[1,2,3]==[1,0,3]]),1);
% TEST 103
res103 = all(m2sciUnknownType([[1;2;3]==[1;0;3]]),1);
% TEST 104
res104 = all(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),1);
% TEST 105
res105 = all(m2sciUnknownDims([[1]==[1]]),1);
% TEST 106
res106 = all(m2sciUnknownDims([[1,2,3]==[1,0,3]]),1);
% TEST 107
res107 = all(m2sciUnknownDims([[1;2;3]==[1;0;3]]),1);
% TEST 108
res108 = all(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),1);
% TEST 109
res109 = all([],2);
% TEST 110
res110 = all(m2sciUnknownType([]),2);
% TEST 111
res111 = all(m2sciUnknownDims([]),2);
% TEST 112
res112 = all([1],2);
% TEST 113
res113 = all([1,2,3],2);
% TEST 114
res114 = all([1;2;3],2);
% TEST 115
res115 = all([1,2,3;4,5,6],2);
% TEST 116
res116 = all(m2sciUnknownType([1]),2);
% TEST 117
res117 = all(m2sciUnknownType([1,2,3]),2);
% TEST 118
res118 = all(m2sciUnknownType([1;2;3]),2);
% TEST 119
res119 = all(m2sciUnknownType([1,2,3;4,5,6]),2);
% TEST 120
res120 = all(m2sciUnknownDims([1]),2);
% TEST 121
res121 = all(m2sciUnknownDims([1,2,3]),2);
% TEST 122
res122 = all(m2sciUnknownDims([1;2;3]),2);
% TEST 123
res123 = all(m2sciUnknownDims([1,2,3;4,5,6]),2);
% TEST 124
res124 = all([i],2);
% TEST 125
res125 = all([i,2i,3i],2);
% TEST 126
res126 = all([i;2i;3i],2);
% TEST 127
res127 = all([i,2i,3i;4i,5i,6i],2);
% TEST 128
res128 = all(m2sciUnknownType([i]),2);
% TEST 129
res129 = all(m2sciUnknownType([i,2i,3i]),2);
% TEST 130
res130 = all(m2sciUnknownType([i;2i;3i]),2);
% TEST 131
res131 = all(m2sciUnknownType([i,2i,3i;4i,5i,6i]),2);
% TEST 132
res132 = all(m2sciUnknownDims([i]),2);
% TEST 133
res133 = all(m2sciUnknownDims([i,2i,3i]),2);
% TEST 134
res134 = all(m2sciUnknownDims([i;2i;3i]),2);
% TEST 135
res135 = all(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),2);
% TEST 136
res136 = all(['s'],2);
% TEST 137
res137 = all(['str1'],2);
% TEST 138
res138 = all(['str1','str2','str3'],2);
% TEST 139
res139 = all(['str1';'str2';'str3'],2);
% TEST 140
res140 = all(['str1','str2','str3';'str4','str5','str6'],2);
% TEST 141
res141 = all(m2sciUnknownType(['s']),2);
% TEST 142
res142 = all(m2sciUnknownType(['str1']),2);
% TEST 143
res143 = all(m2sciUnknownType(['str1','str2','str3']),2);
% TEST 144
res144 = all(m2sciUnknownType(['str1';'str2';'str3']),2);
% TEST 145
res145 = all(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),2);
% TEST 146
res146 = all(m2sciUnknownDims(['s']),2);
% TEST 147
res147 = all(m2sciUnknownDims(['str1']),2);
% TEST 148
res148 = all(m2sciUnknownDims(['str1','str2','str3']),2);
% TEST 149
res149 = all(m2sciUnknownDims(['str1';'str2';'str3']),2);
% TEST 150
res150 = all(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),2);
% TEST 151
res151 = all([[1]==[1]],2);
% TEST 152
res152 = all([[1,2,3]==[1,0,3]],2);
% TEST 153
res153 = all([[1;2;3]==[1;0;3]],2);
% TEST 154
res154 = all([[1,2,3;4,5,6]==[1,0,3;4,5,0]],2);
% TEST 155
res155 = all(m2sciUnknownType([[1]==[1]]),2);
% TEST 156
res156 = all(m2sciUnknownType([[1,2,3]==[1,0,3]]),2);
% TEST 157
res157 = all(m2sciUnknownType([[1;2;3]==[1;0;3]]),2);
% TEST 158
res158 = all(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),2);
% TEST 159
res159 = all(m2sciUnknownDims([[1]==[1]]),2);
% TEST 160
res160 = all(m2sciUnknownDims([[1,2,3]==[1,0,3]]),2);
% TEST 161
res161 = all(m2sciUnknownDims([[1;2;3]==[1;0;3]]),2);
% TEST 162
res162 = all(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),2);
% TEST 163
res163 = all([],3);
% TEST 164
res164 = all(m2sciUnknownType([]),3);
% TEST 165
res165 = all(m2sciUnknownDims([]),3);
% TEST 166
res166 = all([1],3);
% TEST 167
res167 = all([1,2,3],3);
% TEST 168
res168 = all([1;2;3],3);
% TEST 169
res169 = all([1,2,3;4,5,6],3);
% TEST 170
res170 = all(m2sciUnknownType([1]),3);
% TEST 171
res171 = all(m2sciUnknownType([1,2,3]),3);
% TEST 172
res172 = all(m2sciUnknownType([1;2;3]),3);
% TEST 173
res173 = all(m2sciUnknownType([1,2,3;4,5,6]),3);
% TEST 174
res174 = all(m2sciUnknownDims([1]),3);
% TEST 175
res175 = all(m2sciUnknownDims([1,2,3]),3);
% TEST 176
res176 = all(m2sciUnknownDims([1;2;3]),3);
% TEST 177
res177 = all(m2sciUnknownDims([1,2,3;4,5,6]),3);
% TEST 178
res178 = all([i],3);
% TEST 179
res179 = all([i,2i,3i],3);
% TEST 180
res180 = all([i;2i;3i],3);
% TEST 181
res181 = all([i,2i,3i;4i,5i,6i],3);
% TEST 182
res182 = all(m2sciUnknownType([i]),3);
% TEST 183
res183 = all(m2sciUnknownType([i,2i,3i]),3);
% TEST 184
res184 = all(m2sciUnknownType([i;2i;3i]),3);
% TEST 185
res185 = all(m2sciUnknownType([i,2i,3i;4i,5i,6i]),3);
% TEST 186
res186 = all(m2sciUnknownDims([i]),3);
% TEST 187
res187 = all(m2sciUnknownDims([i,2i,3i]),3);
% TEST 188
res188 = all(m2sciUnknownDims([i;2i;3i]),3);
% TEST 189
res189 = all(m2sciUnknownDims([i,2i,3i;4i,5i,6i]),3);
% TEST 190
res190 = all(['s'],3);
% TEST 191
res191 = all(['str1'],3);
% TEST 192
res192 = all(['str1','str2','str3'],3);
% TEST 193
res193 = all(['str1';'str2';'str3'],3);
% TEST 194
res194 = all(['str1','str2','str3';'str4','str5','str6'],3);
% TEST 195
res195 = all(m2sciUnknownType(['s']),3);
% TEST 196
res196 = all(m2sciUnknownType(['str1']),3);
% TEST 197
res197 = all(m2sciUnknownType(['str1','str2','str3']),3);
% TEST 198
res198 = all(m2sciUnknownType(['str1';'str2';'str3']),3);
% TEST 199
res199 = all(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),3);
% TEST 200
res200 = all(m2sciUnknownDims(['s']),3);
% TEST 201
res201 = all(m2sciUnknownDims(['str1']),3);
% TEST 202
res202 = all(m2sciUnknownDims(['str1','str2','str3']),3);
% TEST 203
res203 = all(m2sciUnknownDims(['str1';'str2';'str3']),3);
% TEST 204
res204 = all(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),3);
% TEST 205
res205 = all([[1]==[1]],3);
% TEST 206
res206 = all([[1,2,3]==[1,0,3]],3);
% TEST 207
res207 = all([[1;2;3]==[1;0;3]],3);
% TEST 208
res208 = all([[1,2,3;4,5,6]==[1,0,3;4,5,0]],3);
% TEST 209
res209 = all(m2sciUnknownType([[1]==[1]]),3);
% TEST 210
res210 = all(m2sciUnknownType([[1,2,3]==[1,0,3]]),3);
% TEST 211
res211 = all(m2sciUnknownType([[1;2;3]==[1;0;3]]),3);
% TEST 212
res212 = all(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),3);
% TEST 213
res213 = all(m2sciUnknownDims([[1]==[1]]),3);
% TEST 214
res214 = all(m2sciUnknownDims([[1,2,3]==[1,0,3]]),3);
% TEST 215
res215 = all(m2sciUnknownDims([[1;2;3]==[1;0;3]]),3);
% TEST 216
res216 = all(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]),3);