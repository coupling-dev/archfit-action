#!/usr/bin/env bash
# Fail when a tracked file names the old home of archfit.
#
# Usage: bash scripts/check-names.sh   (from the repository root)
#
# The project moved to github.com/coupling-dev and restarted at 0.9.0 (beta plan,
# docs/plans/20261120-archfit-0-9-new-home-and-beta.md in the engine repository,
# section 3). An old repository, image, tap or /vN module path in a current file
# sends a user to a release that is no longer maintained. People's logins are not
# matched. A /vN path ends at a non-word character: git grep -E has no portable \b.
#
# Excluded: this file, which has to spell the pattern. This repository keeps no
# history that names the old home, so no other path is excluded.
set -euo pipefail

pattern='alexei-led/(archfit|homebrew-tap|tap/archfit)|ghcr\.io/alexei-led|archfit/v[0-9]+([^[:alnum:]_]|$)'

# git grep exits 1 when nothing matches; any other failure must not pass as clean.
rc=0
git grep -n -I -E "$pattern" -- ':!scripts/check-names.sh' || rc=$?
case $rc in
0)
	echo "check-names: the lines above name the old home; use the names in section 3 of the beta plan" >&2
	exit 1
	;;
1) ;;
*)
	echo "check-names: git grep failed ($rc)" >&2
	exit "$rc"
	;;
esac
