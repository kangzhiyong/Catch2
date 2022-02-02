
#              Copyright Catch2 Authors
# Distributed under the Boost Software License, Version 1.0.
#   (See accompanying file LICENSE_1_0.txt or copy at
#        https://www.boost.org/LICENSE_1_0.txt)

# SPDX-License-Identifier: BSL-1.0

##
# This file contains options that are materialized into the Catch2
# compiled library. All of them default to OFF, as even the positive
# forms correspond to the user _forcing_ them to ON, while being OFF
# means that Catch2 can use its own autodetection.
#
# For detailed docs look into docs/configuration.md


macro(AddOverridableConfigOption OptionBaseName)
  option(CATCH_CONFIG_${OptionBaseName} "Read docs/configuration.md for details" OFF)
  option(CATCH_CONFIG_NO_${OptionBaseName} "Read docs/configuration.md for details" OFF)
endmacro()

macro(AddConfigOption OptionBaseName)
  option(CATCH_CONFIG_${OptionBaseName} "Read docs/configuration.md for details" OFF)
endmacro()

set(_OverridableOptions
  "ANDROID_LOGWRITE"
  "COUNTER"
  "CPP11_TO_STRING"
  "CPP17_BYTE"
  "CPP17_OPTIONAL"
  "CPP17_STRING_VIEW"
  "CPP17_UNCAUGHT_EXCEPTIONS"
  "CPP17_VARIANT"
  "GLOBAL_NEXTAFTER"
  "POSIX_SIGNALS"
  "USE_ASYNC"
  "WCHAR"
  "WINDOWS_SEH"
)

foreach(OptionName ${_OverridableOptions})
  AddOverridableConfigOption(${OptionName})
endforeach()

set(_OtherConfigOptions
  "COLOUR_ANSI"
  "COLOUR_NONE"
  "COLOUR_WINDOWS"
  "DISABLE_EXCEPTIONS"
  "DISABLE_EXCEPTIONS_CUSTOM_HANDLER"
  "DISABLE"
  "DISABLE_STRINGIFICATION"
  "ENABLE_ALL_STRINGMAKERS"
  "ENABLE_OPTIONAL_STRINGMAKER"
  "ENABLE_PAIR_STRINGMAKER"
  "ENABLE_TUPLE_STRINGMAKER"
  "ENABLE_VARIANT_STRINGMAKER"
  "EXPERIMENTAL_REDIRECT"
  "FAST_COMPILE"
  "NOSTDOUT"
  "PREFIX_ALL"
  "WINDOWS_CRTDBG"
)


foreach(OptionName ${_OtherConfigOptions})
  AddConfigOption(${OptionName})
endforeach()

set(CATCH_CONFIG_DEFAULT_REPORTER "console" CACHE STRING "Read docs/configuration.md for details. Must form a valid string literal (be passed with quotes)")
set(CATCH_CONFIG_CONSOLE_WIDTH "80" CACHE STRING "Read docs/configuration.md for details. Must form a valid integer literal.")
