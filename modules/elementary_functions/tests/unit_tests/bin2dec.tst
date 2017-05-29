// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// unit tests for bin2dec function
// =============================================================================

// Test 1
// =============================================================================

if bin2dec("0")  <> 0 then pause,end
if bin2dec("1")  <> 1 then pause,end
if bin2dec("10") <> 2 then pause,end
if bin2dec("11") <> 3 then pause,end

// Test 2
// =============================================================================

A = [  1  ;  2   ;  3   ;  4    ];
B = [ "1" ; "10" ; "11" ; "100" ];
if bin2dec(B) <> A then pause,end

// Test 3
// =============================================================================

A = floor(rand(2500,1) * 10^9);
if or(bin2dec(dec2bin(A)) <> A ) then pause,end

// Test 4
// =============================================================================

if bin2dec("0000 0000 0000 0000 0000 0000 0000 0000 0000 0000") <> 0          then pause,end
if bin2dec("0000 0000 0000 0000 0000 0000 0000 0000 0000 0001") <> 1          then pause,end
if bin2dec("0000 0000 0000 0000 0000 0000 0000 0000 0000 0010") <> 2          then pause,end
if bin2dec("0000 0000 0000 0000 0000 0000 0000 0000 0000 0011") <> 3          then pause,end
if bin2dec("0000 0000 0000 0000 0000 0000 0000 0000 0000 0100") <> 4          then pause,end
if bin2dec("0000 0000 0000 0000 0000 0000 0000 0000 0000 1111") <> 15         then pause,end
if bin2dec("0000 0000 0000 1111 1111 1111 1111 1111 1111 1111") <> (2^28 - 1) then pause,end
if bin2dec("0000 0000 1111 1111 1111 1111 1111 1111 1111 1111") <> (2^32 - 1) then pause,end
if bin2dec("0000 1111 1111 1111 1111 1111 1111 1111 1111 1111") <> (2^36 - 1) then pause,end
if bin2dec("1111 1111 1111 1111 1111 1111 1111 1111 1111 1111") <> (2^40 - 1) then pause,end

if bin2dec("11                             11 111  1 11 11      1111 1111 1111 1  111 111  1 1111 111  1") <> (2^40 - 1) then pause,end

// Test 5
// =============================================================================

A = [ ..
	231182702;  ..
	91182318;   ..
	4015675;    ..
	103469440;  ..
	38160154;   ..
	5926345;    ..
	106352457;  ..
	129526140;  ..
	77733857;   ..
	307019415;  ..
	325159604;  ..
	74997112;   ..
	329150370;  ..
	120058826;  ..
	276133766;  ..
	166805311;  ..
	135308674;  ..
	44432964;   ..
	318580811;  ..
	304075057;  ..
	317228585;  ..
	370115756;  ..
	251079869;  ..
	306988091;  ..
	291994029;  ..
	298214476;  ..
	63452173;   ..
	182258337;  ..
	179243138;  ..
	331007368;  ..
	236765958;  ..
	37796336;   ..
	49560181;   ..
	240781634;  ..
	141265776;  ..
	87720335;   ..
	246707979;  ..
	247618234;  ..
	217246475;  ..
	324441837;  ..
	182008144;  ..
	169776575;  ..
	26809444;   ..
	138529010;  ..
	289835401;  ..
	302943211;  ..
	305334321;  ..
	52514571;   ..
	347376176;  ..
	251285628;  ..
	356589628;  ..
	291975257;  ..
	248771880;  ..
	235039993;  ..
	226333843;  ..
	168136404;  ..
	160624964;  ..
	289786017;  ..
	350394742;  ..
	339868103;  ..
	248163880;  ..
	214531196;  ..
	5034934;    ..
	297724062;  ..
	82683325;   ..
	146300711;  ..
	12814892;   ..
	329391305;  ..
	21289441;   ..
	230061368;  ..
	281203637;  ..
	203297586;  ..
	27208439;   ..
	308013082;  ..
	341826596;  ..
	317043840;  ..
	238326789;  ..
	274531413;  ..
	369558412;  ..
	213073461;  ..
	153187537;  ..
	353518535;  ..
	132419213;  ..
	29329912;   ..
	215929023;  ..
	358753056;  ..
	197466317;  ..
	3924483;    ..
	275909568;  ..
	175231554;  ..
	343792587;  ..
	151443944;  ..
	17133246;   ..
	348827522;  ..
	76538501;   ..
	99816571;   ..
	122498729;  ..
	89353393;   ..
	56578372;   ..
	143788170;  ..
];

B = [ ..
	"1101110001111001000101101110"; ..
	"101011011110101010011101110"; ..
	"1111010100011000111011"; ..
	"110001010101101000110000000"; ..
	"10010001100100011100011010"; ..
	"10110100110110111001001"; ..
	"110010101101100111101001001"; ..
	"111101110000110100101111100"; ..
	"100101000100001111111100001"; ..
	"10010010011001011111010010111"; ..
	"10011011000011000101010110100"; ..
	"100011110000101110101111000"; ..
	"10011100111100110111110100010"; ..
	"111001001111111001111001010"; ..
	"10000011101010111011110000110"; ..
	"1001111100010011111100111111"; ..
	"1000000100001010010110000010"; ..
	"10101001011111111001000100"; ..
	"10010111111010010100001001011"; ..
	"10010000111111101000100110001"; ..
	"10010111010001000011000101001"; ..
	"10110000011111000010010101100"; ..
	"1110111101110010110010111101"; ..
	"10010010011000100010000111011"; ..
	"10001011001110111100110101101"; ..
	"10001110001100110010001001100"; ..
	"11110010000011010000001101"; ..
	"1010110111010000101010100001"; ..
	"1010101011110000100010000010"; ..
	"10011101110101100010110001000"; ..
	"1110000111001100001100000110"; ..
	"10010000001011100111110000"; ..
	"10111101000011101001110101"; ..
	"1110010110100000100101000010"; ..
	"1000011010111000101101110000"; ..
	"101001110101000000110001111"; ..
	"1110101101000111011100001011"; ..
	"1110110000100101101010111010"; ..
	"1100111100101110101100001011"; ..
	"10011010101101001011011101101"; ..
	"1010110110010011100101010000"; ..
	"1010000111101001010110111111"; ..
	"1100110010001010001100100"; ..
	"1000010000011100100011110010"; ..
	"10001010001101000100110001001"; ..
	"10010000011101000101111101011"; ..
	"10010001100110000100000110001"; ..
	"11001000010100111100001011"; ..
	"10100101101001000101000110000"; ..
	"1110111110100101000001111100"; ..
	"10101010000010010000000111100"; ..
	"10001011001110011000001011001"; ..
	"1110110100111111010100101000"; ..
	"1110000000100110110011111001"; ..
	"1101011111011001010010010011"; ..
	"1010000001011000111011010100"; ..
	"1001100100101111000101000100"; ..
	"10001010001011100100010100001"; ..
	"10100111000101001100101110110"; ..
	"10100010000011111100111000111"; ..
	"1110110010101010111000101000"; ..
	"1100110010010111110001111100"; ..
	"10011001101001110110110"; ..
	"10001101111101110100010011110"; ..
	"100111011011010010110111101"; ..
	"1000101110000101111100100111"; ..
	"110000111000101000101100"; ..
	"10011101000100001110011001001"; ..
	"1010001001101100111100001"; ..
	"1101101101100111010100111000"; ..
	"10000110000101101001110110101"; ..
	"1100000111100001001100110010"; ..
	"1100111110010101011110111"; ..
	"10010010110111110100000011010"; ..
	"10100010111111101110000100100"; ..
	"10010111001011011010010000000"; ..
	"1110001101001001010000000101"; ..
	"10000010111010000010001010101"; ..
	"10110000001110000001110001100"; ..
	"1100101100110011111000110101"; ..
	"1001001000010111010011010001"; ..
	"10101000100100100001111000111"; ..
	"111111001001000111010001101"; ..
	"1101111111000100111111000"; ..
	"1100110111101101000010111111"; ..
	"10101011000100010001100100000"; ..
	"1011110001010001100011001101"; ..
	"1110111110001000000011"; ..
	"10000011100100000101111000000"; ..
	"1010011100011101001001000010"; ..
	"10100011111011101101111001011"; ..
	"1001000001101101100111101000"; ..
	"1000001010110111010111110"; ..
	"10100110010101010111110000010"; ..
	"100100011111110001010000101"; ..
	"101111100110001010001111011"; ..
	"111010011010010111010101001"; ..
	"101010100110110110010110001"; ..
	"11010111110101000101000100"; ..
	"1000100100100000100010001010"; ..
];

if or(bin2dec(B)<>A) then pause,end