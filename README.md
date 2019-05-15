# markup

> A small app to expose [github/markup](https://github.com/github/markup) as a service

## Usage

### Build

```bash
$ docker build -t viewdoc/markup .
```

### Run

```bash
$ docker run -it -p 3000:3000 viewdoc/markup
```

### Test

```bash
$ curl -i -X POST http://localhost:3000/markdown -d 'Hello, **World**! :heart:'
```
