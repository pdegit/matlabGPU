%% Quick code to test GPU
%ref http://www.mathworks.com/company/newsletters/articles/gpu-programming-in-matlab.html

% querying the GPU device
gpuDevice

% cpu
tic;
A = rand(2^20,1);
B = fft(A);
cpuTime = toc

% gpu data transfer
tic;
G = gpuArray(A);
B = fft(G);
gpuTime1 = toc
speedup = cpuTime/gpuTime1

% gpu data on gpu
tic;
G = gpuArray.rand(2^20,1);
B = fft(G);
gpuTime2 = toc
speedup = cpuTime/gpuTime2
