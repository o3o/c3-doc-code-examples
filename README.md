# C3 Documentation Code Examples

This project aims to collect, organize, and make compilable all the code examples found in the official C3 language documentation.

Each directory in this repository corresponds to a specific page in the C3 documentation and contains the code examples from that page.

Example:
The code from https://c3-lang.org/language-common/arrays/ is stored under `language-common/arrays/`

## Project Goals

- Reproduce all C3 documentation examples as actual code files
- Ensure every example compiles correctly using the C3 compiler ver .0.7.0
- Provide a structured and navigable layout that mirrors the official documentation

## Directory Structure

The folder hierarchy reflects the documentation path. For example:
```
.
├── 4-language-common/
│   ├── 4.1-arrays/
│   │   ├── ex1.c3
│   │   ├── ex2.c3
│   │   └── README.md
│   └── 4.2-alias/
```

Each subdirectory may contain:

- Individual example files (e.g. ex1.c3)
- An optional README.md explaining the example or referencing the docs

## Getting Started

To build or run an example, you will need the [C3 compiler](https://c3-lang.org/download/)

Then compile any example like:
```
> c3c compile 4-language-common/4.1-arrays/ex1.c3
```
or simply run:
```
> c3c run 4-language-common/4.1-arrays/ex1.c3
```

## Notes

- All examples are adapted as faithfully as possible to match the documentation.
- Some examples may require small adjustments (e.g., missing function bodies or imports) to compile properly.
- Apologies for using OTBS (One True Brace Style) instead of the Almann style used in the official documentation — muscle memory wins sometimes 😅

## Contributing

Pull requests are welcome!

- Please follow the directory naming convention.
- If possible, include a small test or a comment to clarify ambiguous behavior.
- Ensure your examples compile with the latest version of the C3 compiler.

## License

MIT License
