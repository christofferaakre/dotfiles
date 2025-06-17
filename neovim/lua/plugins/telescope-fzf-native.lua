return {
    'nvim-telescope/telescope-fzf-native.nvim', build = [[powershell.exe -Command "cmake -S . -B build -DCMAKE_BUILD_TYPE=Release; cmake --build build --config Release; Move-Item -Force build\\Release\\libfzf.dll build\\libfzf.dll"]]
}
