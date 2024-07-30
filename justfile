RUNIC := 'runic'

default: bindings

bindings:
  {{ RUNIC }}

example: (make-directory 'build')
  odin build example -out:build/example{{ if os_family() == 'windows' { '.exe' } else { '' } }} -debug

[unix]
make-directory DIR:
  @mkdir -p {{ DIR }}