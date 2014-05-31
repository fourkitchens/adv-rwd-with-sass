# Singularity GS

We can use Singularity GS to create amazing 100% custom grids.

```scss
@include add-grid(2);
@include add-grid(6 at 600px);
@include add-grid(8 3 at 900px);

@include add-gutter(1/3);
```

This gives us:

* a two column grid at our base
* at 600px give us a 6 column grid
* at 900px give us a TWO column grid with a ratio of 8:3.
