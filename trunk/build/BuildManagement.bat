@ECHO OFF
TITLE Lineage Java Server Build Management
SETLOCAL ENABLEDELAYEDEXPANSION

REM =================================== ·���趨 =====================================
CD %~p0
CD ..

REM ================================================== �趨���� ==================================================
SET ANT_BINARY=build\ant\bin\ant
SET BASE_PATH=..

REM ================================================== ��ʾ����ѡ�� ==================================================
MODE CON COLS=80 LINES=26
:init
SET ARGS=
CLS
ECHO ============================== L1J ���ù���ϵͳ ==============================
ECHO.                                                                 Design by Neo
ECHO.
ECHO ��ѡ��Ҫʹ�õĹ��ܣ�
ECHO.
ECHO  1. һ�㽨��
ECHO     �����Ĵ���ѶϢ��Ѷ, ����ʱ�����ҳ�����ԭ��.
ECHO.
ECHO  2. ��С���� (�޳�����Ѷ)
ECHO     ��С�������ĺ��ĳ����С, ������·����.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO. 0. ��������ʽ
ECHO.
ECHO.
SET /P ARGS=����������ѡ���ܣ� 
CLS
IF "%ARGS%"=="" GOTO ERR_NO_ARGS
IF %ARGS%==1 GOTO opt1
IF %ARGS%==2 GOTO opt2
IF %ARGS%==0 GOTO exit
GOTO ERR_NO_ARGS

REM ================================================== ����ѡ�� ==================================================
:opt1
START %ANT_BINARY% all
GOTO init

:opt2
START %ANT_BINARY% mini
GOTO init

REM ================================================== ������ ==================================================
:ERR_NO_ARGS
CLS
ECHO û�����ѡ�� %ARGS%
ECHO.
PAUSE
GOTO init

REM ================================================== ������ʽ ==================================================
:exit
EXIT
