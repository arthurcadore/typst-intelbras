# Template Typst - Intelbras

<img src="./assets/main-logo.svg" alt="IntelbrasLogo" width="200" style="display: block; margin-left: auto; margin-right: auto;"/>

#### This repository is dedicated to Typst's Template for Intelbras's Reports. 

---
### Getting Started: 

This repository was prepared to work on devcontainers on github, so, it uses a `.devcontainer` configuration to install all necessary packages to compile `.typ` archives automatically. 

To do that, create a new codespace on main, if you have any trouble on that, you can use [This tutorial](https://docs.github.com/en/codespaces/getting-started/quickstart)

But, if you wanna to use it on your machine, please make sure to have the following packages on your machine: 

- Git version 2.34.1
- Typst v0.11.0 ([Instalation Tutorial](https://github.com/typst/typst))

### Using Typst Compiler: 

Once the typst is installed, you just need to create a new archive with `.typ` extension, like the files located at `./examples/`. The archive need to import the following content on it's header to work properlly: 

```
#import "../templates/article-en.typ": *
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

During the creation of the file, you can save the file using `crtl+S` and the extension (pre-installed on devcontainer only) will automatically compile the code and create a `.pdf` archive! 

If you are using this repository on your local machine, please make sure that VScode has the following extensions to work properlly: 

- nvarner.typst-lsp
- mathematic.vscode-pdf

Optional extensions (Preinstalled on devcontainer): 

- dracula-theme.theme-dracula
- GitHub.copilot


