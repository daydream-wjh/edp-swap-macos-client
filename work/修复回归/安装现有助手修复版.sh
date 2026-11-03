#!/bin/sh
set -eu
TARGET=/usr/local/libexec/edp-mount
SOURCE=/private/tmp/edp-fixed-universal
EXPECTED=beb2a0413faafa85f457b932ae646007f22d847e13c2c90ab6a627013374ae54
[ -f "$TARGET" ] && [ ! -L "$TARGET" ]
[ "$(/usr/bin/stat -f %u "$TARGET")" = 0 ]
ACTUAL=$(/usr/bin/shasum -a 256 "$SOURCE" | /usr/bin/awk '{print $1}')
[ "$ACTUAL" = "$EXPECTED" ]
/usr/bin/install -m 0755 -o root -g wheel "$SOURCE" /usr/local/libexec/.edp-mount.fixed
/bin/mv -f /usr/local/libexec/.edp-mount.fixed "$TARGET"
/usr/bin/cmp -s "$SOURCE" "$TARGET"
