# eq.js

[github.com/snugug/eq.js](https://github.com/snugug/eq.js)

Lightweight JavaScript powered element queries.

```html
<div class="component" data-eq-pts="small: 400, medium: 600, large: 900">
  <h1>Hello World</h1>
</div>
```

```scss
@import "eq";

.container {
  @include eq('small') {
    font-size: 1.5em;
  }
  @include eq('medium') {
    font-size: 1em;
  }
}
```
