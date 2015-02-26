# How to use

## Dependencies

It uses [React], [faker] and [momentjs]

## Install

- required [React], [faker], and [momentjs]
- Add `require './reactjs/faker/index'` in your main file


## Templates

- [Repeat](#repeat)
- [Image](#image)
- [Name](#name)
- [Number](#number)
- [Date](#date)
- [Lorem](#lorem)


### Repeat

`<div data-faker-repeat="number"></div>` will repeat **number** times

```
<div data-faker-repeat="5"></div>
```


### Image

Create a [placehold.it] image `data-faker-image="w/h"`
```
<div data-faker-image="300/300"></div>
```

Create a [lorempixel] image by [faker], `data-faker-image="type/w/h"` ( more detail in [faker api] )
```
<div data-faker-image="food/300/300"></div>
```

### Name

Create name `data-faker-name="type"`, create **type** name, **type** is option ( more detail in [faker api] )
```
<div data-faker-name></div>
```

### Number

Create random number `data-faker-number="spent /min-max/ dollars"`, it will be like **spent 135 dollars** ( more detail in [faker api] )
```
<div data-faker-number="收藏/0-1000/次"></div>
```

### Date

Create date `data-faker-date="type"`, which will create **type** date, default is **recent**, more info in [faker api]. `format="YYYY-MM-DD"` can set date format, more format info in [momentjs format]
```
<div date-faker-date format="YYYY-MM-DD"></div>
```

### Lorem

Create lorem `date-faker-lorem="type"`, which will create **type** lorem, more detail in [faker api]

```
<div data-faker-lorem="words"></div>
```

```
<div data-faker-lorem="sentence/3"></div>
```


[React]: http://facebook.github.io/react/index.html
[faker]: http://marak.com/faker.js/
[faker api]: https://github.com/Marak/faker.js/blob/master/Readme.md#api
[momentjs]: http://momentjs.com/
[momentjs format]: http://momentjs.com/docs/#/parsing/string-format/
[placehold.it]: http://placehold.it
[lorempixel]: http://lorempixel.com/

