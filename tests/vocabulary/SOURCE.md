# Vocabulary source

`not-used.txt` is extracted from `notUsedWords` followed by `storyOnlyWords`
in `internal/testutil/wording.go` at engine commit
`af0a92f42dd23508c61161eec8719b874ff0edf0`. It contains one entry per line,
in source order. The SHA-256 is pinned independently in
`tests/validate/vocabulary_test.go`; the normal test is offline. The digest detects
changes to the copy, but does not independently prove its upstream origin.

To repin, inspect the intended engine commit and extract both Go string lists in
order, preserving their spelling. Compare the complete extracted file byte for
byte with `not-used.txt`, including its final newline. Update the commit and the
SHA-256 in the test together with the copy. Independently verify the extraction
against the pinned engine source during review or a source-check job; do not fetch
from a mutable URL in the normal test suite.
