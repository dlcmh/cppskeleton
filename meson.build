project('cppskeleton', 'cpp',
  version : '0.1.0',
  default_options : ['cpp_std=c++23', 'warning_level=3'])
  # default_options : ['cpp_std=c++23', 'warning_level=0'])

# 1. Global warning flags (Meson approach: check support first)
cpp = meson.get_compiler('cpp')
warning_flags = [
  '-Wconversion', '-Wsign-conversion'
  # '-Wall', '-Wextra', '-Wpedantic', '-Wconversion', '-Wsign-conversion'
]
add_project_arguments(cpp.get_supported_arguments(warning_flags), language: 'cpp')

executable('cppskeleton', 'main.cpp')
