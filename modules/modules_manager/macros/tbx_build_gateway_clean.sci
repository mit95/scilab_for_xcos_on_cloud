// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009-2010 - DIGITEO - Allan CORNET
// Copyright (C) 2010 - DIGITEO - Pierre MARECHAL
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt

// Generate a cleaner_gateway.sce script for the gateway

function tbx_build_gateway_clean(languages,path)

    rhs = argn(2);

    // Number of input arguments

    if and(rhs<> [1 2]) then
        error(msprintf(gettext("%s: Wrong number of input arguments: %d to %d expected.\n"),"tbx_build_gateway_clean",1,2));
    end

    // Input argument N°1
    // → languages

    if type(languages) <> 10 then
        error(msprintf(gettext("%s: Wrong type for input argument #%d: A string expected.\n"),"tbx_build_gateway_clean",1));
    end

    // Input argument N°2
    // → path

    if rhs < 2 then
        path = pwd();

    else
        if type(path) <> 10 then
            error(msprintf(gettext("%s: Wrong type for input argument #%d: A string expected.\n"),"tbx_build_gateway_clean",2));
        end

        if size(path,"*") <> 1 then
            error(msprintf(gettext("%s: Wrong size for input argument #%d: A string expected.\n"),"tbx_build_gateway_clean",2));
        end

        if ~isdir(path) then
            error(msprintf(gettext("%s: The directory ''%s'' doesn''t exist or is not read accessible.\n"),"tbx_build_gateway_clean",path));
        end
    end

    // build the cleaner file

    mprintf(gettext("Generating cleaner_gateway.sce...\n"));

    cleanertxt = [
    "// This file is released under the 3-clause BSD license. See COPYING-BSD.",
    "// Generated by builder_gateway.sce: Please, do not edit this file",
    "",
    "sci_gateway_dir = get_absolute_file_path(""cleaner_gateway.sce"");",
    "current_dir     = pwd();",
    ""];

    for i = 1:size(languages,"*") do
        cleanertxt = [cleanertxt,
        "chdir(sci_gateway_dir);",
        "if ( isdir("""+languages(i)+""") ) then",
        "    chdir("""+languages(i)+""");",
        "    exec(""cleaner.sce"");",
        "    mdelete(""cleaner.sce"");",
        "end",
        ""
        ];
    end

    cleanertxt = [cleanertxt,
    "chdir(current_dir);",
    "clear sci_gateway_dir current_dir;"];

    cleanerfile = pathconvert(path+"/cleaner_gateway.sce",%F);

    if ~mputl(cleanertxt,cleanerfile) then
        error(msprintf(gettext("%s: The file %s cannot been created, please check if you have write access on this file.\n"),"tbx_build_gateway_clean",cleanerfile));
    end

endfunction
