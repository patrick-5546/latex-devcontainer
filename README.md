# LaTeX Dev Container

Develop LaTeX and Python in a VS Code [Dev Container](https://code.visualstudio.com/docs/devcontainers/containers).

## Motivation

VS Code is great for writing Python, but a pain to get set up for LaTeX: it normally
[requires a LaTeX distribution to be installed](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install#requirements).
This repository contains everything needed for first-class support of Python and LaTeX in VS Code.

## How to Run

### Run Locally

All that is needed to run locally is to

1. Install Docker,
2. Clone this repository,
3. Open it in VS Code, and
4. Follow the prompt to reopen it in a Dev Container.

### Run in a Codespace

You can also run in a [Codespace](https://docs.github.com/en/codespaces/overview) hosted by GitHub and connect to it from
VS Code, JetBrains, or even the browser: [Quickstart](https://docs.github.com/en/codespaces/getting-started/quickstart).

## Linters & Formatters

The LaTeX linters chktex and lacheck can be enabled in the same file in [`settings.json`](.vscode/settings.json).

The Python linters and formatters black, flake8, and isort are enabled by default, but can be disabled by either

1. Disabling their respective extensions or
2. Removing them from the `extensions` array in [`.devcontainer.json`](.devcontainer.json) then rebuilding the container.

To run formatters when a file is saved, uncomment `editor.formatOnSave` of the desired language settings in [`settings.json`](.vscode/settings.json).

## Spell Checker

To enable the spell checker, set `cSpell.enabled` to `true` in [`settings.json`](.vscode/settings.json).
When the spell checker encounters a word that it doesn't recognize, it will underline it with a blue squiggly line.
You can add words to its dictionary by hovering over the word, selecting "Quick Fix,"
then selecting "Add: ... .vscode/cspell.json."

## Configuration Files

Here is a brief description of each configuration file's purpose:

- `.vscode/cspell.json`: spell checker dictionary
- `.vscode/settings.json`: VS Code editor and extension settings
- `.devcontainer.json`: Dev Container configuration file - what Docker image to use, extensions to install, etc.
- `.flake8`: flake8 configuration file - to be compatible with formatter black
- `.isort.cfg`: isort configuration file - to be compatible with formatter black
- `install-dependencies.sh`: script that is run after a Dev Container is [re]built
- `requirements.txt`: Python packages that are installed by `install-dependencies.sh`
