# markup

> A small app to expose [github/markup](https://github.com/github/markup) as a service

## Usage

Run the docker:

```bash
$ docker run -it -p 3000:3000 viewdoc/markup
```

then you can test by:

```bash
$ curl -i -X POST http://localhost:3000/markdown -d 'Hello, **World**!'
```
