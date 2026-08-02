# tests/smoke.star — stable across upstream releases.
# go-task: a task runner driven by Taskfile.yml. Contract = exit codes,
# version digits, and a hermetic task round-trip — never help/banner prose.
TOOL = "task.exe" if ocx.target_platform.os == ocx.os.Windows else "task"

# Tier 1 + 2: liveness on the composed PATH + version shape.
r = ocx.run(TOOL, "--version")
expect.ok(r)
expect.matches(r.stdout, r"\d+\.\d+\.\d+")

# Tier 3: functional round-trip on hermetic input. Define a Taskfile and run a
# task; assert the computed echo output (our value, not upstream prose).
ocx.write_file(
    "Taskfile.yml",
    "version: '3'\ntasks:\n  hello:\n    cmds:\n      - echo greetings\n",
)

# Subcommand/flag surface exists: listing tasks resolves the Taskfile.
r = ocx.run(TOOL, "--list-all")
expect.ok(r)
expect.contains(r.stdout, "hello")

# Real execution: the task runs and emits its computed output.
r = ocx.run(TOOL, "hello")
expect.ok(r)
expect.contains(r.stdout, "greetings")
