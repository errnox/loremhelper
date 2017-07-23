# Loremhelper

Tired of hunting down yet another copy of "Lorem ipsum" on the internet?

Now all the Lorems and ipsums live in your command line:

- `$ loremhelper paragraphs 3` gives you 3 paragraphs
- `$ loremhelper paragraph` spits out a single paragraph
- `$ loremhelper words 5` returns the first 5 words of "Lorem ipsum"
- `$ loremhelper sentences 4` annoys you with 4 Latin sentences
- ...

If all this typing makes you mad, there are abbreviations, e.g. `paras` for `paragraphs`.

Here is a more boring description:

```
loremhelper [paragraph|para]          returns the first paragraph
loremhelper [paragraphs|paras] <n>    returns the first <n> paragraphs
loremhelper [tokens|words] <n>        returns the first <n> words
loremhelper sentences <n>             returns the first <n> sentences
loremhelper sentence                  returns the first sentence
loremhelper [all|long]                returns the whole shebang
```

`<n>` should be an integer, obviously.

*For non-conformists: Concerning `<n>`, any number-like things (e.g. `5.3` or `5,3`) get the decimal or non-numeric part cut off while the rest is treated as if it was an integer (e.g. `5.3` and `5,3` both become `3`). Anything else is equivalent to running `loremhelper [all|long]`. If you break Ruby, your shell, your terminal emulator or your operating system by providing weird nonsense that breaks either of them, that's on you, buddy.*

## Installation

Or install it yourself as:

```
$ gem install loremhelper
```

If, for some reason you to use this in your application, just do the usual drill.

First add this to your Gemfile...

```
gem 'loremhelper'
```

... then run:

```
$ bundle
```
