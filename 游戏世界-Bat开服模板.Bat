@ECHO OFF
title 游戏世界 - 服务器后台 


::----设置开服使用内存
SET Money=4096M

::----设置开服核心名字
SET Server=server.jar


cls
color a0
echo  - - - - - -   
echo  当前时间：%date% %tm1%点%TM2%分
@echo. -----------------------------------------------------------------
@echo.                         Minecraft服务器                                                                   
@echo.                     服务器即将开启,请等待  
@echo.
@echo.           注意:关闭服务器前请在后台输入Stop保存玩家数据
@echo.                      否则可能会出现回档情况
@echo.                
@echo. -----------------------------------------------------------------
choice /t 2 /d y /n >nul
:RESTART
cls
color 79
@echo.   ┏--------------------------------------┓
@echo.   ┣ By：HWMC 您当前使用的是HWMC GitHub开源项目  ┫
@echo.       仅供个人使用，请勿商业使用
@echo.   ┗--------------------------------------┛
@echo. 
@echo.- 预备开服前工作准备...
choice /t 2 /d y /n >nul
@echo. 
@echo.- [ 设置开服内存：%Money% ]
choice /t 2 /d y /n >nul
@echo. 
@echo.- [ 设置开服核心为：%Server% ]
choice /t 2 /d y /n >nul
@echo. 
@echo.- [ 设置开服优化参数：%SetCanShu% ]
choice /t 2 /d y /n >nul
@echo. 
@echo.- 预备开服工作完毕,准备启动服务器,开服过程请耐心等待...
@echo.
@echo. ---------------------------------------------------------------
@echo.
color 3f
choice /t 2 /d y /n >nul

"F:\Java\jdk-18.0.2.1\bin\java.exe" -Xms128M -Xmx%Money% %SetCanShu% -jar %Server% nogui

color 4f
@echo. 
@echo. ----------------------------------------------------------
@echo.╋ 服务器已经关闭,如需重启请按任意键，不需要请直接X掉本框 ╋
@echo. ----------------------------------------------------------
@echo. 

pause
goto restart