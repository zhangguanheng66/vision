@echo on
set CL=/I"C:\Program Files (x86)\torchvision\include"
msbuild "-p:Configuration=Release" "-p:BuildInParallel=true" "-p:MultiProcessorCompilation=true" "-p:CL_MPCount=%1" hello-world.vcxproj -maxcpucount:%1
