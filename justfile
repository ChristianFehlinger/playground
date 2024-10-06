set shell := ["/bin/bash", "-uc"]
set export := true
set dotenv-load := true

# default recipe to display help information
default:
  @just --list

# install pre-commit
@install:
  pre-commit install
