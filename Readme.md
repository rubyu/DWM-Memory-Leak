

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
> powershell -NoProfile -ExecutionPolicy Unrestricted .\Start.ps1 -iterations 50
Windows CurrentVersion: 1709
Windows CurrentBuild: 16299
Net Framework Release: 461308
Net Framework TargetVersion: 4.0.0
Net Framework Version: 4.7.02556
----------
Iteration, WorkingMemory
-1, 375701504
0, 383811584
1, 395829248
2, 403832832
3, 415850496
4, 423858176
5, 435863552
6, 443871232
7, 451874816
8, 459878400
9, 471883776
10, 483438592
11, 491687936
12, 499707904
13, 507711488
14, 515727360
15, 527740928
16, 535744512
17, 543756288
18, 551763968
19, 559767552
20, 567771136
21, 575774720
22, 583790592
23, 591794176
24, 603906048
25, 611909632
26, 619913216
27, 627916800
28, 635908096
29, 643911680
30, 651923456
31, 659931136
32, 667934720
33, 675938304
34, 683941888
35, 691945472
36, 699736064
37, 711806976
38, 719933440
39, 727941120
40, 739569664
41, 747597824
42, 755601408
43, 763604992
44, 771608576
45, 783650816
46, 791744512
47, 799748096
48, 807747584
49, 815755264
50, 827760640
```

## Reference

[DWM memory leak window 64b 1709](https://social.technet.microsoft.com/Forums/windows/en-US/a4594475-9676-4278-8e41-0fd26e4f5739/dwm-memory-leak-window-64b-1709?forum=win10itprohardware)
