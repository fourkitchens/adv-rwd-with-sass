# Creating Your Grid

```scss
.l-my-layout {
  .row {
    @include grid-span(1, 1);

    @include breakpoint($bp-navigation-large) {
      @include grid-span(1, 1);
    }

    @include breakpoint(1000px) {
      @include grid-span(1, 1);
    }
  }
}
```

<!-- FULL SASS
```scss
@include add-grid(2);
@include add-grid(6 at 600px);
@include add-grid(8 3 at 900px);

@include add-gutter(1/3);

$bp-navigation-large: 650px;

.l-my-layout {
  .row {
    @include grid-span(1, 1);
  }

  .row-2 {
    @include grid-span(1, 2);
  }

  @include breakpoint($bp-navigation-large) {
    .row {
      @include grid-span(2, 1);
    }

    .row-2 {
      @include grid-span(4, 3);
    }
  }

  @include breakpoint(1000px) {
    .row {
      @include grid-span(1, 1);
    }

    .row-2 {
      @include grid-span(1, 2);
    }
  }
}
```
-->
