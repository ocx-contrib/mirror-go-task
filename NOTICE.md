# NOTICE

This repository packages and redistributes upstream software published by the
[Task authors](https://github.com/go-task/task). The Apache-2.0 license in
[`LICENSE`](LICENSE) covers the OCX pipeline files authored here. It does
**not** cover any upstream-derived asset — each package's redistributed bytes
carry their own license, recorded below.

Each package's logo is reproduced for catalog identification only, under
nominative fair use. The marks remain the property of their respective owners
and no endorsement is implied.

| Package | GHCR path | Upstream SPDX |
|---|---|---|
| `go-task/task` | `ghcr.io/ocx-contrib/go-task/task` | `MIT` |

---

## `go-task/task`

Upstream: <https://github.com/go-task/task>
Published to `ghcr.io/ocx-contrib/go-task/task`.

| Component | SPDX | Holder |
|---|---|---|
| Task (`task`) | **MIT** | Copyright (c) 2016 Andrey Nering |

Permissive; redistribution of the compiled binary is granted provided the
copyright notice and permission notice are retained. Upstream's release
tarballs ship their own `LICENSE` file alongside the binary, and it is
republished inside the bundle unmodified; the terms are those of
<https://github.com/go-task/task/blob/main/LICENSE>. The published binaries
statically link third-party Go modules under permissive licenses, enumerated
in upstream's `go.mod`.

The Task name is used for catalog identification under nominative fair use.

No modifications are made to any upstream artifact in this repository; they are
republished byte-for-byte inside an OCX bundle.
