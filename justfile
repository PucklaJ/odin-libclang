RUNIC := 'runic'

default: bindings

bindings:
  {{ RUNIC }}
  echo '//+build amd64, arm64' > libclang.odin.tmp
  cat libclang.odin >> libclang.odin.tmp
  mv libclang.odin.tmp libclang.odin

example: (make-directory 'build')
  odin build example -out:build/example{{ if os_family() == 'windows' { '.exe' } else { '' } }} -debug

[unix]
make-directory DIR:
  @mkdir -p {{ DIR }}