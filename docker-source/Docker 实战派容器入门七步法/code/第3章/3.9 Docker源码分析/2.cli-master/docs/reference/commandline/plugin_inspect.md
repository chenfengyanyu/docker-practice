---
title: "plugin inspect"
description: "The plugin inspect command description and usage"
keywords: "plugin, inspect"
---

# plugin inspect

```markdown
Usage:  docker plugin inspect [OPTIONS] PLUGIN [PLUGIN...]

Display detailed information on one or more plugins

Options:
  -f, --format string   Format output using a custom template:
                        'json':             Print in JSON format
                        'TEMPLATE':         Print output using the given Go template.
                        Refer to https://docs.docker.com/go/formatting/ for more information about formatting output with templates
      --help            Print usage
```

## Description

Returns information about a plugin. By default, this command renders all results
in a JSON array.

## Examples

### Inspect a plugin

The following example example inspects the `tiborvass/sample-volume-plugin` plugin:

```console
$ docker plugin inspect tiborvass/sample-volume-plugin:latest
```

Output is in JSON format (output below is formatted for readability):

```json
{
  "Id": "8c74c978c434745c3ade82f1bc0acf38d04990eaf494fa507c16d9f1daa99c21",
  "Name": "tiborvass/sample-volume-plugin:latest",
  "PluginReference": "tiborvas/sample-volume-plugin:latest",
  "Enabled": true,
  "Config": {
    "Mounts": [
      {
        "Name": "",
        "Description": "",
        "Settable": null,
        "Source": "/data",
        "Destination": "/data",
        "Type": "bind",
        "Options": [
          "shared",
          "rbind"
        ]
      },
      {
        "Name": "",
        "Description": "",
        "Settable": null,
        "Source": null,
        "Destination": "/foobar",
        "Type": "tmpfs",
        "Options": null
      }
    ],
    "Env": [
      "DEBUG=1"
    ],
    "Args": null,
    "Devices": null
  },
  "Manifest": {
    "ManifestVersion": "v0",
    "Description": "A test plugin for Docker",
    "Documentation": "https://docs.docker.com/engine/extend/plugins/",
    "Interface": {
      "Types": [
        "docker.volumedriver/1.0"
      ],
      "Socket": "plugins.sock"
    },
    "Entrypoint": [
      "plugin-sample-volume-plugin",
      "/data"
    ],
    "Workdir": "",
    "User": {
    },
    "Network": {
      "Type": "host"
    },
    "Capabilities": null,
    "Mounts": [
      {
        "Name": "",
        "Description": "",
        "Settable": null,
        "Source": "/data",
        "Destination": "/data",
        "Type": "bind",
        "Options": [
          "shared",
          "rbind"
        ]
      },
      {
        "Name": "",
        "Description": "",
        "Settable": null,
        "Source": null,
        "Destination": "/foobar",
        "Type": "tmpfs",
        "Options": null
      }
    ],
    "Devices": [
      {
        "Name": "device",
        "Description": "a host device to mount",
        "Settable": null,
        "Path": "/dev/cpu_dma_latency"
      }
    ],
    "Env": [
      {
        "Name": "DEBUG",
        "Description": "If set, prints debug messages",
        "Settable": null,
        "Value": "1"
      }
    ],
    "Args": {
      "Name": "args",
      "Description": "command line arguments",
      "Settable": null,
      "Value": [

      ]
    }
  }
}
```


### Formatting the output

```console
$ docker plugin inspect -f '{{.Id}}' tiborvass/sample-volume-plugin:latest

8c74c978c434745c3ade82f1bc0acf38d04990eaf494fa507c16d9f1daa99c21
```

## Related commands

* [plugin create](plugin_create.md)
* [plugin enable](plugin_enable.md)
* [plugin disable](plugin_disable.md)
* [plugin install](plugin_install.md)
* [plugin ls](plugin_ls.md)
* [plugin push](plugin_push.md)
* [plugin rm](plugin_rm.md)
* [plugin set](plugin_set.md)
* [plugin upgrade](plugin_upgrade.md)
