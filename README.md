# GO Deploy Action

Go project binaries for multiple platforms with GitHub Action.

Uses `golang:1.15` Docker image with `CGO_ENABLED=0` flag.

## Usage

Create a workflow file `.github/workflows/go.yml` with the content below:

```yml
name: Build Go binaries

on: push

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@master

      - name: Make binaries
        uses: 0xnu/go-deploy-action@master
```

Basic workflow configuration will compile binaries for the following platforms:

- linux: 386/amd64
- darwin: 386/amd64
- windows: 386/amd64 

Alternatively you can provide a list of target architectures in `arg`:

```yml
- name: Make binaries
  uses: 0xnu/go-deploy-action@master
  with:
    args: linux/amd64 darwin/amd64
```

Example output:

```bash
----> Setting up Go repository
----> Building project for: darwin/amd64
  adding: test-go-action_darwin_amd64 (deflated 50%)
----> Building project for: darwin/386
  adding: test-go-action_darwin_386 (deflated 45%)
----> Building project for: linux/amd64
  adding: test-go-action_linux_amd64 (deflated 50%)
----> Building project for: linux/386
  adding: test-go-action_linux_386 (deflated 45%)
----> Building project for: windows/amd64
  adding: test-go-action_windows_amd64 (deflated 50%)
----> Building project for: windows/386
  adding: test-go-action_windows_386 (deflated 46%)
----> Build is complete. List of files at /github/workspace/.release:
total 16436
drwxr-xr-x 2 root root    4096 Dec  20 00:03 .
drwxr-xr-x 5 root root    4096 Dec  20 00:02 ..
-rwxr-xr-x 1 root root 1764764 Dec  20 00:02 test-go-action_darwin_386
-rw-r--r-- 1 root root  978566 Dec  20 00:02 test-go-action_darwin_386.zip
-rwxr-xr-x 1 root root 2003480 Dec  20 00:02 test-go-action_darwin_amd64
-rw-r--r-- 1 root root 1008819 Dec  20 00:02 test-go-action_darwin_amd64.zip
-rwxr-xr-x 1 root root 1676585 Dec  20 00:02 test-go-action_linux_386
-rw-r--r-- 1 root root  918555 Dec  20 00:02 test-go-action_linux_386.zip
-rwxr-xr-x 1 root root 1906945 Dec  20 00:02 test-go-action_linux_amd64
-rw-r--r-- 1 root root  952985 Dec  20 00:02 test-go-action_linux_amd64.zip
-rwxr-xr-x 1 root root 1728000 Dec  20 00:03 test-go-action_windows_386
-rw-r--r-- 1 root root  930942 Dec  20 00:03 test-go-action_windows_386.zip
-rwxr-xr-x 1 root root 1957376 Dec  20 00:02 test-go-action_windows_amd64
-rw-r--r-- 1 root root  972286 Dec  20 00:02 test-go-action_windows_amd64.zip

## Authors

- **Finbarrs Oketunji** _aka 0xnu_ - _Main Developer_ - [0xnu](https://github.com/0xnu)

## License

This project is licensed under the [WTFPL License](LICENSE) - see the file for details.

## Copyright

(c) 2020 [Finbarrs Oketunji](https://finbarrs.eu).

