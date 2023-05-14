---
title: "stack services"
description: "The stack services command description and usage"
keywords: "stack, services"
---

# stack services

```markdown
Usage:  docker stack services [OPTIONS] STACK

List the services in the stack

Options:
  -f, --filter filter         Filter output based on conditions provided
      --format string         Format output using a custom template:
                              'table':            Print output in table format with column headers (default)
                              'table TEMPLATE':   Print output in table format using the given Go template
                              'json':             Print in JSON format
                              'TEMPLATE':         Print output using the given Go template.
                              Refer to https://docs.docker.com/go/formatting/ for more information about formatting output with templates
      --help                  Print usage
  -q, --quiet                 Only display IDs
```

## Description

Lists the services that are running as part of the specified stack.

> **Note**
>
> This is a cluster management command, and must be executed on a swarm
> manager node. To learn about managers and workers, refer to the
> [Swarm mode section](https://docs.docker.com/engine/swarm/) in the
> documentation.

## Examples

The following command shows all services in the `myapp` stack:

```console
$ docker stack services myapp

ID            NAME            REPLICAS  IMAGE                                                                          COMMAND
7be5ei6sqeye  myapp_web       1/1       nginx@sha256:23f809e7fd5952e7d5be065b4d3643fbbceccd349d537b62a123ef2201bc886f
dn7m7nhhfb9y  myapp_db        1/1       mysql@sha256:a9a5b559f8821fe73d58c3606c812d1c044868d42c63817fa5125fd9d8b7b539
```

### Filtering

The filtering flag (`-f` or `--filter`) format is a `key=value` pair. If there
is more than one filter, then pass multiple flags (e.g. `--filter "foo=bar" --filter "bif=baz"`).
Multiple filter flags are combined as an `OR` filter.

The following command shows both the `web` and `db` services:

```console
$ docker stack services --filter name=myapp_web --filter name=myapp_db myapp

ID            NAME            REPLICAS  IMAGE                                                                          COMMAND
7be5ei6sqeye  myapp_web       1/1       nginx@sha256:23f809e7fd5952e7d5be065b4d3643fbbceccd349d537b62a123ef2201bc886f
dn7m7nhhfb9y  myapp_db        1/1       mysql@sha256:a9a5b559f8821fe73d58c3606c812d1c044868d42c63817fa5125fd9d8b7b539
```

The currently supported filters are:

* id / ID (`--filter id=7be5ei6sqeye`, or `--filter ID=7be5ei6sqeye`)
* label (`--filter label=key=value`)
* mode (`--filter mode=replicated`, or `--filter mode=global`)
  * Swarm: not supported
* name (`--filter name=myapp_web`)
* node (`--filter node=mynode`)
  * Swarm: not supported
* service (`--filter service=web`)
  * Swarm: not supported

### Formatting

The formatting options (`--format`) pretty-prints services output
using a Go template.

Valid placeholders for the Go template are listed below:

Placeholder | Description
------------|-------------------------------------------------------------------
`.ID`       | Service ID
`.Name`     | Service name
`.Mode`     | Service mode (replicated, global)
`.Replicas` | Service replicas
`.Image`    | Service image

When using the `--format` option, the `stack services` command will either
output the data exactly as the template declares or, when using the
`table` directive, includes column headers as well.

The following example uses a template without headers and outputs the
`ID`, `Mode`, and `Replicas` entries separated by a colon (`:`) for all services:

```console
$ docker stack services --format "{{.ID}}: {{.Mode}} {{.Replicas}}"

0zmvwuiu3vue: replicated 10/10
fm6uf97exkul: global 5/5
```

To list all services in JSON format, use the `json` directive:
```console
$ docker stack services ls --format json
{"ID":"0axqbl293vwm","Image":"localstack/localstack:latest","Mode":"replicated","Name":"myapp_localstack","Ports":"*:4566-\u003e4566/tcp, *:8080-\u003e8080/tcp","Replicas":"0/1"}
{"ID":"384xvtzigz3p","Image":"redis:6.0.9-alpine3.12","Mode":"replicated","Name":"myapp_redis","Ports":"*:6379-\u003e6379/tcp","Replicas":"1/1"}
{"ID":"hyujct8cnjkk","Image":"postgres:13.2-alpine","Mode":"replicated","Name":"myapp_repos-db","Ports":"*:5432-\u003e5432/tcp","Replicas":"0/1"}
```


## Related commands

* [stack deploy](stack_deploy.md)
* [stack ls](stack_ls.md)
* [stack ps](stack_ps.md)
* [stack rm](stack_rm.md)
