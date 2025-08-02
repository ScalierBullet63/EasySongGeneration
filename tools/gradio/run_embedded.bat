@echo off
set USER=root
set PYTHONDONTWRITEBYTECODE=1
set TRANSFORMERS_CACHE=%cd%\third_party\hub
set PYTHONPATH=%cd%\codeclm\tokenizer\;%cd%;%cd%\codeclm\tokenizer\Flow1dVAE\;%cd%\codeclm\tokenizer\;tools\gradio;%PYTHONPATH%

set CKPT_PATH=%1
%cd%\python_embedded\python.exe tools\gradio\app.py %CKPT_PATH%