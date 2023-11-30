# rhtap-data

Use this repository for export and storage of ACS resources in RHTAP.

## Prerequisites

### git

You need git setup and configured, and push privileges to this repository.

### Authentication to RHTAP prod cluster

Set up RHTAP prod cluster access following [these instructions](https://docs.google.com/document/d/1hFvQDH1H6MGNqTGfcZpyl2h8OIaynP8sokZohCS0Su0/edit#bookmark=id.v17b52x2f0sw).

### RHTAP CLI

While it is not available in other formats, follow [the instructions](https://github.com/redhat-appstudio/rhtap-cli/tree/main#setup) to compile the RHTAP CLI.
Then install the binary in your PATH, e.g. with `install rhtap ${GOPATH}/bin/rhtap`.

## Usage

```bash
./scripts/dump-and-upload.sh
```
