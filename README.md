# CraftCMS 4 + Vite + TailwindCSS + Docker Boilerplate

A CraftCMS 4 Boilerplate project with a DDEV environment for local development with Vite, Tailwind CSS, PostCSS, PHP8 and hot module reload.

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE) [![Craft CMS](https://img.shields.io/badge/craft-4.x-red.svg)](https://craftcms.com/) [![Tailwind CSS](https://img.shields.io/badge/tailwindcss-2.x-blueviolet.svg)](https://tailwindcss.com/)

## Overview

This is a boilerplate project for CraftCMS 4, with a focus on providing a development environment that is easy to set up and customize. The project includes:

- [DDEV](https://ddev.com/) for local development
- [Tailwind CSS](https://tailwindcss.com/) and [PostCSS](https://postcss.org/) for styling
- [Vite](https://vitejs.dev/) for bundling and hot module replacement

## Requirements

- Node.js and npm
- Docker
- DDEV

## Installation

1. Clone the repository: `git clone https://github.com/jorgeanzola/craft-4-boilerplate.git`
2. Change to the project directory: `cd craft-4-boilerplate`
3. Install dependencies: `make install`
4. Once prompted, type "vite" and enter (I'll find a nicer way to do this)
5. Start the DDEV environment: `make start`
6. Access the site at `http://craft-4-boilerplate.ddev.site`

## Development

To start developing, run the following command:

```
ddev start
```

This will start the development server with hot module reload, so you can make changes and see them reflected in the browser immediately.

To build the assets for production, run:

```
npm run prod
```

This will compile and optimize the CSS and JS files for production.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.