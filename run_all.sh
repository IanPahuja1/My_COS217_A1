#!/bin/bash
set -eu
pass=true
for f in *.c *.txt 2>/dev/null; do
  [ -f "$f" ] || continue
  ./sampledecomment < "$f" > ref.out 2> ref.err
  ./decomment       < "$f" > me.out  2> me.err
  if ! diff -q ref.out me.out >/dev/null; then
    echo "STDOUT DIFF for $f"; diff -y ref.out me.out | sed -n '1,80p'
    pass=false
  fi
  if ! diff -q ref.err me.err >/dev/null; then
    echo "STDERR DIFF for $f"; diff -y ref.err me.err | sed -n '1,80p'
    pass=false
  fi
done
rm -f ref.out ref.err me.out me.err
$pass && echo "ALL MATCH" || exit 1
