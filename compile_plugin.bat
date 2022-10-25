rem this line prevents crash exits
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )

set ue_location=C:\Program Files\Epic Games\UE_5.1
set source_plugin_path=%USERPROFILE%\Desktop\export_ue\SparseVolumetrics\SparseVolumetrics.uplugin
rem must be different from engine path or RunUAT will throw an error
set output_plugin_path=%USERPROFILE%\Desktop\export_ue\SparseVolumetrics\ouput_plugin\SparseVolumetrics

"%ue_location%\Engine\Build\BatchFiles\RunUAT.bat" BuildPlugin -plugin="%source_plugin_path%" -package="%output_plugin_path%"

rem uncomment next line to create sym link
rem mklink /D "%ue_location%\Engine\Plugins\SparseVolumetrics" "%output_plugin_path%"

pause