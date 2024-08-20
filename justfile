set windows-shell := ['powershell.exe']

RUNIC := 'runic'

LIBRARY_DOWNLOAD_LINK := if os() == 'windows' {
  'https://github.com/llvm/llvm-project/releases/download/llvmorg-18.1.8/clang+llvm-18.1.8-x86_64-pc-windows-msvc.tar.xz'
} else {
  'https://idontexist.io'
}

default: bindings

bindings:
  {{ RUNIC }}
  echo '//+build windows amd64, !windows amd64, !windows arm64' > libclang.odin.tmp
  awk '{gsub(/Comment:/, "comment:"); gsub(/Module:/, "module:"); print}' libclang.odin >> libclang.odin.tmp
  mv libclang.odin.tmp libclang.odin

example: (make-directory 'build')
  odin build example -out:build/example{{ if os_family() == 'windows' { '.exe' } else { '' } }} -debug -error-pos-style:unix

[unix]
make-directory DIR:
  @mkdir -p {{ DIR }}

[windows]
make-directory DIR:
  @New-Item -Path "{{ DIR }}" -ItemType Directory -Force | Out-Null

[windows]
install-library DIR='build': (make-directory 'build/cache') (make-directory DIR) (make-directory 'build/cache/llvm')
  if (-not (Test-Path build\cache\llvm.tar.xz)) { curl.exe -L {{ LIBRARY_DOWNLOAD_LINK }} -o build\cache\llvm.tar.xz }
  if (-not (Test-Path build\cache\llvm\bin\libclang.dll)) { tar -xf build\cache\llvm.tar.xz -C build\cache\llvm --strip-components=1 }
  Copy-Item -Path build\cache\llvm\bin\libclang.dll -Destination {{ DIR }} -Force

