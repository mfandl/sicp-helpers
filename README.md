# Racket SICP Helpers

This small set of utility functions contains pieces of code that I tend to re-use often while writing the excercises.

##  Usage

When using `#lang sicp`, you can require the desired modules like this:

```
#lang sicp
(#%require sicp-pict)
(#%require "sicp-helpers/pict-gui.rkt")

(show-image-snip (paint einstein))
```

##  License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
