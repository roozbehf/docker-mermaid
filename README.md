# Mermaid CLI

[Mermaid](https://mermaid-js.github.io/mermaid/#/) locked up in [Docker](https://www.docker.com/).

Current version: 0.5.1

## Usage:

```
$ ./mmdc.sh -i diagram.mmd -o diagram.png
```

## Makefile Targets
* `package`: builds the docker image
* `push`: pushes the image to the remote repository