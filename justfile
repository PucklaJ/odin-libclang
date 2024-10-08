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
download-library DIR='build': (make-directory 'build/cache') (make-directory DIR) (make-directory 'build/cache/llvm')
  @echo This will download llvm including libclang.dll and then copy libclang.dll into the given directory

  if (-not (Test-Path build\cache\llvm.tar.xz)) { if (Get-Command -Name 'curl.exe' -ErrorAction SilentlyContinue) { curl.exe -L {{ LIBRARY_DOWNLOAD_LINK }} -o build\cache\llvm.tar.xz } else { Invoke-Webrequest -Uri {{ LIBRARY_DOWNLOAD_LINK }} -OutFile build\cache\llvm.tar.xz } }
  if (-not (Test-Path build\cache\libclang.dll)) { tar -xvf build\cache\llvm.tar.xz -C build\cache --strip-components=2 "clang+llvm-18.1.8-x86_64-pc-windows-msvc/bin/libclang.dll" }
  Copy-Item -Path build\cache\libclang.dll -Destination {{ DIR }} -Force

