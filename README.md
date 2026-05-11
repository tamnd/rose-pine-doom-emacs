# Rosé Pine for Doom Emacs

> All natural pine, faux fur and a bit of soho vibes — for the classy minimalist.

A modern [Rosé Pine](https://rosepinetheme.com/) port for [Doom Emacs](https://github.com/doomemacs/doomemacs), tracking the latest Doom and the official Rosé Pine palette spec.

This is a fork of [`donniebreve/rose-pine-doom-emacs`](https://github.com/donniebreve/rose-pine-doom-emacs) maintained at [`tamnd/rose-pine-doom-emacs`](https://github.com/tamnd/rose-pine-doom-emacs).

## Variants

| Variant         | Theme symbol           |
| --------------- | ---------------------- |
| Rosé Pine       | `doom-rose-pine`       |
| Rosé Pine Moon  | `doom-rose-pine-moon`  |
| Rosé Pine Dawn  | `doom-rose-pine-dawn`  |

## What's in the box

- Official Rosé Pine palette (https://rosepinetheme.com/palette/) for all three variants.
- Canonical syntax mapping: `function → rose`, `type → foam`, `constant/number → gold`, `keyword → pine`, `operator → subtle`, `builtin → love`, etc.
- Face coverage for modern Emacs tooling:
  - tree-sitter and `treesit-font-lock`
  - eglot, lsp-mode, lsp-ui
  - corfu, vertico, marginalia, orderless, consult, embark
  - magit, forge, diff-hl, ediff, smerge
  - doom-modeline, solaire-mode, tab-bar, tab-line, centaur-tabs
  - treemacs, dirvish, dired, diredfl
  - org, org-modern, org-roam, markdown, web-mode
  - hl-todo, rainbow-delimiters, highlight-numbers
  - flycheck, flymake, which-key, avy, ansi-color
  - company / ivy / helm / swiper (legacy completion stacks)
- One shared face spec across all three variants — only the palette differs.

## Install

### With Doom Emacs (`package!` recipe)

Add to `~/.config/doom/packages.el`:

```elisp
(package! doom-rose-pine-themes
  :recipe (:host github :repo "tamnd/rose-pine-doom-emacs"
           :files ("doom-rose-pine-common.el"
                   "doom-rose-pine-theme.el"
                   "doom-rose-pine-moon-theme.el"
                   "doom-rose-pine-dawn-theme.el")))
```

Then set the theme in `~/.config/doom/config.el`:

```elisp
(setq doom-theme 'doom-rose-pine)        ; or 'doom-rose-pine-moon / 'doom-rose-pine-dawn
```

Sync and restart:

```bash
doom sync
```

### Manual install

```bash
git clone https://github.com/tamnd/rose-pine-doom-emacs.git
cd rose-pine-doom-emacs
make install         # copies *.el to ~/.config/doom/themes/
```

Then in `~/.config/doom/config.el`:

```elisp
(setq doom-theme 'doom-rose-pine)
```

To try a variant interactively without editing config: `M-x load-theme` and pick one.

## Options

All three variants share the same options (`doom-rose-pine-*` — the older per-variant names like `doom-rose-pine-moon-brighter-modeline` are kept as obsolete aliases):

```elisp
(setq doom-rose-pine-brighter-modeline nil   ; vivid mode-line background
      doom-rose-pine-brighter-comments nil   ; faint tinted comment background
      doom-rose-pine-padded-modeline   nil)  ; t or an integer pixel width
```

## Credits

- [mvllow](https://github.com/rose-pine) — original Rosé Pine theme and palette.
- [donniebreve](https://github.com/donniebreve) — original Doom Emacs port.
- [hlissner](https://github.com/doomemacs) — Doom Emacs and `doom-themes`.
