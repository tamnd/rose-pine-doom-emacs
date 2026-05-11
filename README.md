# Rosé Pine for Doom Emacs

All natural pine, faux fur and a bit of soho vibes, for the classy minimalist.

A [Rosé Pine](https://rosepinetheme.com/) port for [Doom Emacs](https://github.com/doomemacs/doomemacs).
This is a fork of [donniebreve/rose-pine-doom-emacs](https://github.com/donniebreve/rose-pine-doom-emacs)
that I keep current with newer Doom and the official Rosé Pine palette.

If something looks off, please open an issue.

## Variants

| Variant        | Theme symbol           |
| -------------- | ---------------------- |
| Rosé Pine      | `doom-rose-pine`       |
| Rosé Pine Moon | `doom-rose-pine-moon`  |
| Rosé Pine Dawn | `doom-rose-pine-dawn`  |

## What it covers

Palette is the official one from rosepinetheme.com/palette, for all three variants.

Syntax mapping follows the Rosé Pine spec: functions in rose, types in foam,
constants and numbers in gold, keywords in pine, operators in subtle, builtins
in love.

I have tried to give the popular tools first-class treatment rather than
relying on inherited defaults: tree-sitter, eglot, lsp-mode, the
vertico/corfu/consult/embark stack, magit and forge, doom-modeline, treemacs
and dirvish, org and org-modern, markdown, hl-todo, rainbow-delimiters,
flycheck and flymake. The full face spec is shared across the three variants,
so only the palette changes between them.

## Install

### With Doom Emacs

In `~/.config/doom/packages.el`:

```elisp
(package! doom-rose-pine-themes
  :recipe (:host github :repo "tamnd/rose-pine-doom-emacs"
           :files ("doom-rose-pine-common.el"
                   "doom-rose-pine-theme.el"
                   "doom-rose-pine-moon-theme.el"
                   "doom-rose-pine-dawn-theme.el")))
```

In `~/.config/doom/config.el`:

```elisp
(setq doom-theme 'doom-rose-pine) ; or 'doom-rose-pine-moon / 'doom-rose-pine-dawn
```

Then run `doom sync` and restart.

### Manual

```bash
git clone https://github.com/tamnd/rose-pine-doom-emacs.git
cd rose-pine-doom-emacs
make install   # copies the *.el files into ~/.config/doom/themes/
```

Then set `doom-theme` as above, or pick a variant interactively with
`M-x load-theme`.

## Options

The three variants share the same options. The older per-variant names
(`doom-rose-pine-moon-brighter-modeline` and friends) still work as obsolete
aliases.

```elisp
(setq doom-rose-pine-brighter-modeline nil  ; vivid mode-line background
      doom-rose-pine-brighter-comments nil  ; faint tinted background on comments
      doom-rose-pine-padded-modeline   nil) ; t, or an integer pixel width
```

## Credits

[mvllow](https://github.com/rose-pine) for the original Rosé Pine theme and
palette. [donniebreve](https://github.com/donniebreve) for the original Doom
port that this fork is built on. [hlissner](https://github.com/doomemacs) and
the rest of the Doom Emacs team for `doom-themes` and the editor itself.
