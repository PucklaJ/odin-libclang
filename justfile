set windows-shell := ['powershell.exe']

RUNIC := 'runic'
LLVM_VERSION := '19.1.7'
LIBRARY_DOWNLOAD_LINK := 'https://github.com/llvm/llvm-project/releases/download/llvmorg-' + LLVM_VERSION + '/clang+llvm-' + LLVM_VERSION + '-x86_64-pc-windows-msvc.tar.xz'

default: bindings

bindings:
  {{ RUNIC }}
  sed -i libclang.odin \
      -e 's/\[^\]^Token/^[^]Token/g'

example: (make-directory 'build')
  odin build example -out:build/example{{ if os_family() == 'windows' { '.exe' } else { '' } }} -debug -error-pos-style:unix

[unix]
make-directory DIR:
  @if [[ "{{ DIR }}" != '' ]]; then mkdir -p "{{ DIR }}"; fi

[windows]
make-directory DIR:
  @if ("{{ DIR }}" -ne "") { New-Item -Path "{{ DIR }}" -ItemType Directory -Force | Out-Null }

[windows]
download-library LIB_DIR='lib/windows/x86_64' BIN_DIR='': (make-directory 'build/cache') (make-directory LIB_DIR) (make-directory BIN_DIR) (make-directory 'build/cache/llvm')
  @echo 'This will download llvm including libclang.dll and libclang.lib and then copy them into the given directory'

  if (-not (Test-Path build\cache\llvm.tar.xz)) { if (Get-Command -Name 'curl.exe' -ErrorAction SilentlyContinue) { curl.exe -L {{ LIBRARY_DOWNLOAD_LINK }} -o build\cache\llvm.tar.xz } else { Invoke-Webrequest -Uri "{{ LIBRARY_DOWNLOAD_LINK }}" -OutFile build\cache\llvm.tar.xz } }
  if (-not (Test-Path build\cache\libclang.dll) -or -not (Test-Path build\cache\libclang.lib)) { tar -xvf build\cache\llvm.tar.xz -C build\cache --strip-components=2 "clang+llvm-{{ LLVM_VERSION }}-x86_64-pc-windows-msvc/bin/libclang.dll" "clang+llvm-{{ LLVM_VERSION }}-x86_64-pc-windows-msvc/lib/libclang.lib" }
  {{ if LIB_DIR != '' { 'Copy-Item -Path build\cache\libclang.lib -Destination "' + LIB_DIR + '" -Force' } else { '' } }}
  {{ if BIN_DIR != '' { 'Copy-Item -Path build\cache\libclang.dll -Destination "' + BIN_DIR + '" -Force' } else { '' } }}

[unix]
download-library LIB_DIR='lib/windows/x86_64/' BIN_DIR='': (make-directory 'build/cache') (make-directory LIB_DIR) (make-directory BIN_DIR) (make-directory 'build/cache/llvm')
    #! /bin/bash
    echo 'This will download llvm including libclang.dll and libclang.lib and then copy them into the given directory'
    set -ex

    if [[ ! -f 'build/cache/llvm.tar.xz' ]]
    then
        curl -SL "{{ LIBRARY_DOWNLOAD_LINK }}" --output build/cache/llvm.tar.xz
    fi
    if [[ ! -f 'build/cache/libclang.dll' || ! -f 'build/cache/libclang.lib' ]]
    then
        tar -xvf 'build/cache/llvm.tar.xz' -C 'build/cache' --strip-components=2 "clang+llvm-{{ LLVM_VERSION }}-x86_64-pc-windows-msvc/bin/libclang.dll" "clang+llvm-{{ LLVM_VERSION }}-x86_64-pc-windows-msvc/lib/libclang.lib"
    fi
    {{ if LIB_DIR != '' { 'cp "build/cache/libclang.lib" "' + LIB_DIR + '"' } else { '' } }}
    {{ if BIN_DIR != '' { 'cp "build/cache/libclang.dll" "' + BIN_DIR + '"' } else { '' } }}

LLVM_DEFAULT_TAG := 'llvmorg-' + LLVM_VERSION
[unix]
update-sources TAG=LLVM_DEFAULT_TAG: (make-directory 'shared/clang-c')
    #! /bin/bash
    for header_file in 'BuildSystem.h' 'CXCompilationDatabase.h' 'CXDiagnostic.h' 'CXErrorCode.h' 'CXFile.h' 'CXSourceLocation.h' 'CXString.h' 'Documentation.h' 'ExternC.h' 'FatalErrorHandler.h' 'Index.h' 'Platform.h' 'Rewrite.h'
    do
        echo "Downloading $header_file"
        curl -SL "https://raw.githubusercontent.com/llvm/llvm-project/refs/tags/{{ TAG }}/clang/include/clang-c/$header_file" --output "shared/clang-c/$header_file"
    done

check TARGET='linux_amd64':
    odin check . -vet -error-pos-style:unix -no-entry-point -target:{{ TARGET }}
