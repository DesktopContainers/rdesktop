# rdesktop
_rdesktop_

full featured rdesktop Docker container for [x86 + arm].

It's based on [desktopcontainers/base-alpine](https://github.com/DesktopContainers/base-alpine)

## Usage: Run the Client

it uses the same screen resolution as the underlying vnc server

# Environment variables and defaults

* __RDESKTOP\_SERVER__
 * set this to rdp server address
* __RDESKTOP\_OPTS__
 * default not set use this to set the options for rdesktop. see command line options of rdesktop

# Usage / Help / Manual / Settings / API etc.

For more Settings look at the base container settings here: [desktopcontainers/base-alpine](https://github.com/DesktopContainers/base-alpine)