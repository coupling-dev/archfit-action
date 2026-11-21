# Fixture provenance

These files are the unchanged results emitted by the archfit `v0.9.0` image, source
commit `15c1ed40fe86c49a2fafc72c911541370ea5e27f`, published by
[release run 44885896968](https://github.com/coupling-dev/archfit/actions/runs/44885896968).
The image is `ghcr.io/coupling-dev/archfit:v0.9.0`, pinned in `scripts/lib.sh` by its
per-platform digests:

- `linux/amd64` `sha256:e841f7b519e5d4a787407887f784f121dff9801c25d0bc892695d783d7805db4`
- `linux/arm64` `sha256:3e8739e40375e711f3cecd2d44f2dad60b05b94602479d0aff5a598e1adeed9f`

They were captured from the `linux/arm64` image with
`RUNNER_ARCH=ARM64 ARCHFIT_FIXTURES_OUT=<dir> bash tests/engine-smoke.sh`, which builds
the scratch repositories and writes these five scenarios. Each result names engine
`0.9.0`. The `Pinned engine image` CI jobs run the same scenarios on both platforms and
upload what they capture as `engine-fixtures-amd64` and `engine-fixtures-arm64`.

| File | SHA-256 |
| --- | --- |
| `result/eol-differs.json` | `48b55d9ccea9c99b6eb4877d8ed751399f6c9290a2ee3a9ec2c708941dbbd3e7` |
| `result/fail.json` | `0f215af1e4a66fc30eea1f440dceedb6f49f08cbdb039688da475489824df27c` |
| `result/pass.json` | `25c96f9e2e60c19d349a97e8de302877823eae4d125499ccc3fb894598561974` |
| `result/policy-differs.json` | `8694311d8ed2b36bce5d7c7705faed63e616ea6078f56d6182c527c55a1eec1c` |
| `result/push-at-tip.json` | `7ad1f857e0f00abc6a680c2c49aa5ae214ccb65f5a75d9c461bc480586982b01` |
