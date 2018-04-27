

## What's this

This is a minimum reproduction code for a bug on DWM (Desktop Window Manager) of Windows.


## Details

If an applications, which have a window being set `LWA_COLORKEY ` with `SetLayeredWindowAttributes `, be executed and be terminated, the size of the memory of `dwm.exe` will increase and not shrink. 

The size of increasing memory is depends on the window's size.

## Reproduction procedure

```bat
> git clone https://github.com/rubyu/DWM-Memory-Leak.git
> cd DWM-Memory-Leak
```

```bat
> powershell -NoProfile -ExecutionPolicy Unrestricted .\Start.ps1 -iterations 100
Windows CurrentVersion: 1709
Windows CurrentBuild: 16299
Net Framework Release: 461308
Net Framework TargetVersion: 4.0.0
Net Framework Version: 4.7.02556
----------
Iteration, WorkingMemory
-1, 1183461376
0, 1212977152
1, 1253781504
2, 1271054336
3, 1304043520
4, 1330061312
5, 1359556608
6, 1389047808
7, 1418539008
8, 1448030208
9, 1477521408
10, 1507012608
11, 1536503808
12, 1565995008
13, 1595514880
14, 1625006080
15, 1656877056
16, 1684951040
17, 1714442240
18, 1743933440
19, 1773113344
20, 1802604544
21, 1832095744
22, 1861586944
23, 1891078144
24, 1920569344
25, 1950060544
26, 1979551744
27, 2009042944
28, 2038534144
29, 2068025344
30, 2097520640
31, 2127007744
32, 2156498944
33, 2185990144
34, 2207092736
35, 2236588032
36, 2266075136
37, 2295566336
38, 2325057536
39, 2354548736
40, 2384039936
41, 2413531136
42, 2443026432
43, 2472513536
44, 2502004736
```

## Reference

[DWM memory leak window 64b 1709](https://social.technet.microsoft.com/Forums/windows/en-US/a4594475-9676-4278-8e41-0fd26e4f5739/dwm-memory-leak-window-64b-1709?forum=win10itprohardware)
