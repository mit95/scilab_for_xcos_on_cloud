// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Serge Steer
// Copyright (C) 2010-2011 - DIGITEO - Michael Baudin
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->


// Maple code used to create reference
// Digits := 40; 
// writeto("tand.ref"); interface(prettyprint = 0); 
// for i from 0 to 360 do if ((i<>90) and (i<>270) ) then print(-180+i, evalf[30](tan(-Pi+i*Pi/180), 30)) end end do; 
// writeto(terminal);
ieee(2);
//used to make following code runnable under Matlab
pi=%pi;
eps=%eps;
Inf=%inf;
NaN=%nan; 

//
x = (-180:180)';
// Remove 90 (index #91) and -90 (index #271), 
// where the value is %nan
x([91 271]) = [];

e=[
0.
0.174550649282175857651288952197e-1
0.349207694917477305004026257737e-1
0.524077792830412040388058244741e-1
0.699268119435104136669210603231e-1
0.874886635259240052220186694350e-1
.105104235265676462511502380140
.122784560902904591134231136053
.140540834702391446838117693433
.158384440324536293838883092694
.176326980708464973471090386869
.194380309137718484243194224977
.212556561670022125259591660570
.230868191125563111748145613474
.249328002843180691624039937805
.267949192431122706472553658494
.286745385758807940042758062732
.305730681458660355734541958996
.324919696232906326155871412215
.344327613289665241957265839384
.363970234266202361351047882776
.383864035035415795971448408105
.404026225835156811322348143579
.424474816209604742023532062943
.445228685308536163922367030644
.466307658154998592830006194801
.487732588565861422773111126616
.509525449494428810513706911251
.531709431661478748075915871842
.554309051452768917820763092337
.577350269189625764509148780503
.600860619027560414878664426354
.624869351909327509780510827950
.649407593197510576982062911310
.674508516842426632142460861996
.700207538209709779458522719443
.726542528005360885895466757481
.753554050102794157073956448623
.781285626506717397062949971961
.809784033195007148036991374238
.839099631177280011763127298122
.869286737816226662200095638705
.900404044297839945120477203883
.932515086137661705612185627428
.965688774807074045958027299699
1.
1.03553031379056950695883255125
1.07236871002468253294602774807
1.11061251482919287014348196417
1.15036840722100955587633102557
1.19175359259420995870530807186
1.23489715653505139855617469537
1.27994163219307878031102984757
1.32704482162041003715947257408
1.37638192047117353820720958191
1.42814800674211450216061848500
1.48256096851274025478715714915
1.53986496381458290482679697261
1.60033452904105035532673308117
1.66427948235051791103049617004
1.73205080756887729352744634151
1.80404775527142393738178474825
1.88072646534633201236083759582
1.96261050550515058230464042622
2.05030384157929621689901107053
2.14450692050955861635626079106
2.24603677390421605416332143840
2.35585236582375283393958666236
2.47508685341629582524001324606
2.60508906469380153625841233646
2.74747741945462227876166402648
2.90421087767582280257932553456
3.07768353717525340257029057602
3.27085261848414086530885625734
3.48741444384090865069622422508
3.73205080756887729352744634156
4.01078093353584471634571512944
4.33147587428415554554616775463
4.70463010947845423358623453738
5.14455401597031013472322071724
5.67128181961770953099441843983
6.31375151467504309897946424494
7.11536972238420874823056614360
8.14434642797459402382566139528
9.51436445422258492968397145491
11.4300523027613430672108555485
14.3006662567119279101280533475
19.0811366877282110634067487325
28.6362532829156035507565093210
57.2899616307594246872781475211
-57.2899616307594246872781475211
-28.6362532829156035507565093210
-19.0811366877282110634067487325
-14.3006662567119279101280533475
-11.4300523027613430672108555485
-9.51436445422258492968397145491
-8.14434642797459402382566139528
-7.11536972238420874823056614360
-6.31375151467504309897946424494
-5.67128181961770953099441843983
-5.14455401597031013472322071724
-4.70463010947845423358623453738
-4.33147587428415554554616775463
-4.01078093353584471634571512944
-3.73205080756887729352744634156
-3.48741444384090865069622422508
-3.27085261848414086530885625734
-3.07768353717525340257029057602
-2.90421087767582280257932553456
-2.74747741945462227876166402648
-2.60508906469380153625841233646
-2.47508685341629582524001324606
-2.35585236582375283393958666236
-2.24603677390421605416332143840
-2.14450692050955861635626079106
-2.05030384157929621689901107053
-1.96261050550515058230464042622
-1.88072646534633201236083759582
-1.80404775527142393738178474825
-1.73205080756887729352744634151
-1.66427948235051791103049617004
-1.60033452904105035532673308117
-1.53986496381458290482679697261
-1.48256096851274025478715714915
-1.42814800674211450216061848500
-1.37638192047117353820720958191
-1.32704482162041003715947257408
-1.27994163219307878031102984757
-1.23489715653505139855617469537
-1.19175359259420995870530807186
-1.15036840722100955587633102557
-1.11061251482919287014348196417
-1.07236871002468253294602774807
-1.03553031379056950695883255125
-1.
-.965688774807074045958027299699
-.932515086137661705612185627428
-.900404044297839945120477203883
-.869286737816226662200095638705
-.839099631177280011763127298122
-.809784033195007148036991374238
-.781285626506717397062949971961
-.753554050102794157073956448623
-.726542528005360885895466757481
-.700207538209709779458522719443
-.674508516842426632142460861996
-.649407593197510576982062911310
-.624869351909327509780510827950
-.600860619027560414878664426354
-.577350269189625764509148780503
-.554309051452768917820763092337
-.531709431661478748075915871842
-.509525449494428810513706911251
-.487732588565861422773111126616
-.466307658154998592830006194801
-.445228685308536163922367030644
-.424474816209604742023532062943
-.404026225835156811322348143579
-.383864035035415795971448408105
-.363970234266202361351047882776
-.344327613289665241957265839384
-.324919696232906326155871412215
-.305730681458660355734541958996
-.286745385758807940042758062732
-.267949192431122706472553658494
-.249328002843180691624039937805
-.230868191125563111748145613474
-.212556561670022125259591660570
-.194380309137718484243194224977
-.176326980708464973471090386869
-.158384440324536293838883092694
-.140540834702391446838117693433
-.122784560902904591134231136053
-.105104235265676462511502380140
-0.874886635259240052220186694350e-1
-0.699268119435104136669210603231e-1
-0.524077792830412040388058244741e-1
-0.349207694917477305004026257737e-1
-0.174550649282175857651288952197e-1
0.
0.174550649282175857651288952197e-1
0.349207694917477305004026257737e-1
0.524077792830412040388058244741e-1
0.699268119435104136669210603231e-1
0.874886635259240052220186694350e-1
.105104235265676462511502380140
.122784560902904591134231136053
.140540834702391446838117693433
.158384440324536293838883092694
.176326980708464973471090386869
.194380309137718484243194224977
.212556561670022125259591660570
.230868191125563111748145613474
.249328002843180691624039937805
.267949192431122706472553658494
.286745385758807940042758062732
.305730681458660355734541958996
.324919696232906326155871412215
.344327613289665241957265839384
.363970234266202361351047882776
.383864035035415795971448408105
.404026225835156811322348143579
.424474816209604742023532062943
.445228685308536163922367030644
.466307658154998592830006194801
.487732588565861422773111126616
.509525449494428810513706911251
.531709431661478748075915871842
.554309051452768917820763092337
.577350269189625764509148780503
.600860619027560414878664426354
.624869351909327509780510827950
.649407593197510576982062911310
.674508516842426632142460861996
.700207538209709779458522719443
.726542528005360885895466757481
.753554050102794157073956448623
.781285626506717397062949971961
.809784033195007148036991374238
.839099631177280011763127298122
.869286737816226662200095638705
.900404044297839945120477203883
.932515086137661705612185627428
.965688774807074045958027299699
1.
1.03553031379056950695883255125
1.07236871002468253294602774807
1.11061251482919287014348196417
1.15036840722100955587633102557
1.19175359259420995870530807186
1.23489715653505139855617469537
1.27994163219307878031102984757
1.32704482162041003715947257408
1.37638192047117353820720958191
1.42814800674211450216061848500
1.48256096851274025478715714915
1.53986496381458290482679697261
1.60033452904105035532673308117
1.66427948235051791103049617004
1.73205080756887729352744634151
1.80404775527142393738178474825
1.88072646534633201236083759582
1.96261050550515058230464042622
2.05030384157929621689901107053
2.14450692050955861635626079106
2.24603677390421605416332143840
2.35585236582375283393958666236
2.47508685341629582524001324606
2.60508906469380153625841233646
2.74747741945462227876166402648
2.90421087767582280257932553456
3.07768353717525340257029057602
3.27085261848414086530885625734
3.48741444384090865069622422508
3.73205080756887729352744634156
4.01078093353584471634571512944
4.33147587428415554554616775463
4.70463010947845423358623453738
5.14455401597031013472322071724
5.67128181961770953099441843983
6.31375151467504309897946424494
7.11536972238420874823056614360
8.14434642797459402382566139528
9.51436445422258492968397145491
11.4300523027613430672108555485
14.3006662567119279101280533475
19.0811366877282110634067487325
28.6362532829156035507565093210
57.2899616307594246872781475211
-57.2899616307594246872781475211
-28.6362532829156035507565093210
-19.0811366877282110634067487325
-14.3006662567119279101280533475
-11.4300523027613430672108555485
-9.51436445422258492968397145491
-8.14434642797459402382566139528
-7.11536972238420874823056614360
-6.31375151467504309897946424494
-5.67128181961770953099441843983
-5.14455401597031013472322071724
-4.70463010947845423358623453738
-4.33147587428415554554616775463
-4.01078093353584471634571512944
-3.73205080756887729352744634156
-3.48741444384090865069622422508
-3.27085261848414086530885625734
-3.07768353717525340257029057602
-2.90421087767582280257932553456
-2.74747741945462227876166402648
-2.60508906469380153625841233646
-2.47508685341629582524001324606
-2.35585236582375283393958666236
-2.24603677390421605416332143840
-2.14450692050955861635626079106
-2.05030384157929621689901107053
-1.96261050550515058230464042622
-1.88072646534633201236083759582
-1.80404775527142393738178474825
-1.73205080756887729352744634151
-1.66427948235051791103049617004
-1.60033452904105035532673308117
-1.53986496381458290482679697261
-1.48256096851274025478715714915
-1.42814800674211450216061848500
-1.37638192047117353820720958191
-1.32704482162041003715947257408
-1.27994163219307878031102984757
-1.23489715653505139855617469537
-1.19175359259420995870530807186
-1.15036840722100955587633102557
-1.11061251482919287014348196417
-1.07236871002468253294602774807
-1.03553031379056950695883255125
-1.
-.965688774807074045958027299699
-.932515086137661705612185627428
-.900404044297839945120477203883
-.869286737816226662200095638705
-.839099631177280011763127298122
-.809784033195007148036991374238
-.781285626506717397062949971961
-.753554050102794157073956448623
-.726542528005360885895466757481
-.700207538209709779458522719443
-.674508516842426632142460861996
-.649407593197510576982062911310
-.624869351909327509780510827950
-.600860619027560414878664426354
-.577350269189625764509148780503
-.554309051452768917820763092337
-.531709431661478748075915871842
-.509525449494428810513706911251
-.487732588565861422773111126616
-.466307658154998592830006194801
-.445228685308536163922367030644
-.424474816209604742023532062943
-.404026225835156811322348143579
-.383864035035415795971448408105
-.363970234266202361351047882776
-.344327613289665241957265839384
-.324919696232906326155871412215
-.305730681458660355734541958996
-.286745385758807940042758062732
-.267949192431122706472553658494
-.249328002843180691624039937805
-.230868191125563111748145613474
-.212556561670022125259591660570
-.194380309137718484243194224977
-.176326980708464973471090386869
-.158384440324536293838883092694
-.140540834702391446838117693433
-.122784560902904591134231136053
-.105104235265676462511502380140
-0.874886635259240052220186694350e-1
-0.699268119435104136669210603231e-1
-0.524077792830412040388058244741e-1
-0.349207694917477305004026257737e-1
-0.174550649282175857651288952197e-1
0.
];
c = tand(x);
assert_checkalmostequal ( c , e , 40 * %eps , [] , "element" );

// Turn a lot around the circle
x1 = x + 2^6*360; 
c = tand(x1);
assert_checkalmostequal ( c , e , 40 * %eps , [] , "element" );
// Turn a lot around the circle, the other side
x2 = x - 2^6*360; 
c = tand(x2);
assert_checkalmostequal ( c , e , 40 * %eps , [] , "element" );

assert_checkequal ( tand(0) , 0 );
assert_checkequal ( tand(360) , 0 );
assert_checkequal ( tand(-360) , 0 );

assert_checkequal ( tand(180) , 0 );
assert_checkequal ( tand(-180) , 0 );

assert_checkalmostequal ( tand(30) , 1/sqrt(3) , %eps );
assert_checkalmostequal ( tand(45) , 1         , 2 * %eps );
assert_checkalmostequal ( tand(60) , sqrt(3)   , 2*%eps );

assert_checkequal ( isnan(tand(90))  , %t );
assert_checkequal ( isnan(tand(-90)) , %t );
assert_checkequal ( isnan(tand(270)) , %t );
assert_checkequal ( isnan(tand(-270)) , %t );

assert_checkequal ( isnan(tand(-%inf)) , %t );
assert_checkequal ( isnan(tand(%inf))  , %t );
assert_checkequal ( isnan(tand(%nan))  , %t );

assert_checkequal ( tand([])  , [] );

ieee(0)
assert_checkequal ( tand(0) , 0 );
assert_checkalmostequal ( tand(30) , 1/sqrt(3) , %eps );
assert_checkalmostequal ( tand(45) , 1         , 2 * %eps );
assert_checkalmostequal ( tand(60) , sqrt(3)   , 2*%eps );

