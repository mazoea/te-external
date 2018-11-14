[![Build status](https://ci.appveyor.com/api/projects/status/0d33ffbwox2ei9js/branch/master?svg=true)](https://ci.appveyor.com/project/vidiecan/te-external-aw59n/branch/master)

# Overview

Various dependencies of other projects provided in a unified, easily configurable VS 2015 way happily brought to you by Mazoea s.r.o.

# Who is it for

We do not actively support the project; therefore, the target audiencie is primarily developers
who know a thing or two about building, configuration and projects and can reuse this stack
to easily build other projects e.g., leptonica and tesseract.
Nevertheless, we are open for pull requests.

# Why

Compiling some of the open source projects for windows is a hell. Compiling the whole stack is more of a hell.
All the projects in here have a `projects` directory with one solution file that reuses Visual Studio properties.
If a symlinked structure is preserved, you can easily change properties for every project from inside one property.
However, there shouldn't be any need for that.

# How

Execute
```
cd te-external
xcopy /S /I _vsprops-base ..\cpp-template\projects\vsprops-base
python create_links.py
```
and then manually build the solutions in the correct order :).
Or better use `https://github.com/mazoea/te-builder` as in appveyor.yml.

# What will you get

Every project will have a libs directory with e.g.,:
```
...
cairo-debug-mt-x32.dll
cairo-debug-mt-x32.exp
cairo-debug-mt-x32.lib
cairo-debug-mt-x64.dll
cairo-debug-mt-x64.lib
cairo-debug-mtdll-x32.dll
cairo-debug-mtdll-x32.lib
cairo-debug-mtdll-x64.dll
cairo-debug-mtdll-x64.lib
cairo-mt-x32.dll
cairo-mt-x32.lib
cairo-mt-x64.dll
cairo-mt-x64.lib
cairo-mtdll-x32.dll
cairo-mtdll-x32.lib
cairo-mtdll-x64.dll
cairo-mtdll-x64.lib
...
```    

# Don't DO

Do not use UNICODE (https://msdn.microsoft.com/en-us/library/cwe8bzh0.aspx) because some of the libraries are 
not prepared for that...


# Credits

All the developers of the projects and Mazoea s.r.o. - https://mazoea.com/ .
