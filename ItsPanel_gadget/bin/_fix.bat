@echo off
title fix virtual folders
set tdir="%~d0%~p0folders"
md %tdir%
md %tdir%\root.{20D04FE0-3AEA-1069-A2D8-08002B30309D}
md %tdir%\control_panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}
md %tdir%\trash.{645FF040-5081-101B-9F08-00AA002F954E}
