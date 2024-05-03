# Template Typst - Intelbras
#### This repository is dedicated to Typst's Template for Intelbras Reports.

<p align="center">
  <img src="./assets/main-logo.svg" width="250" align="center">
</p>


---
### Getting Started: 

This repository is configured to work with devcontainers on GitHub, using a  `.devcontainer` configuration to automatically install all necessary packages for compiling `.typ` files.

To get started, create a new codespace on the main branch. If you encounter any issues, you can refer to [This tutorial](https://docs.github.com/en/codespaces/getting-started/quickstart)

If you prefer to use it on your local machine, ensure that the following packages are installed:

- Git version 2.34.1
- Typst v0.11.0 ([Instalation Tutorial](https://github.com/typst/typst))

### Using Typst Compiler: 

Once Typst is installed, you can create a new file with a `.typ` extension, similar to the files located in `./examples/.` The file should import the following content in its header to work properly:

```
#import "../templates/support-en.typ": *
#import "@preview/codelst:2.0.1": sourcecode

#show: doc => support(
  title: "API Test Report Intelbras",
  subtitle: "Network Technician Support Analyst",
  authors: "Arthur Cadore M. Barcella",
  date: "May, 02, 2023",
  doc,
)

// WRITE YOUR CUSTOM FILE CONTENT BELOW USING TYPST SINTAX. 
```

While creating the file, you can save it using `Ctrl + S`, and the extension (pre-installed in the devcontainer only) will automatically compile the code and create a `.pdf` file!

If you are using this repository on your local machine, ensure that VSCode has the following extensions installed for proper functionality:

- nvarner.typst-lsp
- mathematic.vscode-pdf

Optional extensions (Preinstalled in devcontainer):

- dracula-theme.theme-dracula
- GitHub.copilot

### References Used: 

- [Typst IFSC Templates - Gabrielluizep](https://github.com/gabrielluizep/typst-ifsc)

- [Typst Instalation](https://github.com/typst)

- [Typst Documentation](https://typst.app/docs/)


