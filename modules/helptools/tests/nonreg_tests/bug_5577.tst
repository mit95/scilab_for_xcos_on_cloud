// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 5577 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=5577
//
// <-- Short Description -->
// help_skeleton macros encoded the generated xml file in ISO-8859-1 and not in UTF-8.


function [y,z]=foo(a,b),y=a+b,z=1,endfunction
p = help_skeleton('foo',TMPDIR);
r = mgetl(p);

if grep(r,'UTF-8') <> 1 then pause,end