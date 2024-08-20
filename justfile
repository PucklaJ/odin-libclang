set windows-shell := ['powershell.exe']

RUNIC := 'runic'

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


