# Breakpoint

Simplify your media queries.

```scss
$bp-navigation-large: 650px;

@include breakpoint($bp-navigation-large) {
  nav {
    width: 100%;
  }
}
```

```css
@media (min-width: 650px) {
  nav {
    width: 100%;
  }
}
```
