#!/bin/zsh
FPATH=assets/
for f in $FPATH*; do
  [[ -f $f ]] || continue

  if [[ ! $f =~ "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-4[0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}" ]]; then
	  mv -- "$f" "$FPATH$(uuid -v 4).png"
  fi
done
