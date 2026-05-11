;;; doom-rose-pine-moon-theme.el --- Rosé Pine Moon for Doom Emacs -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Author: mvllow
;; Ported by: donniebreve
;; Fork maintainer: tamnd
;; Keywords: faces, custom themes
;; Homepage: https://github.com/tamnd/rose-pine-doom-emacs
;; Package-Requires: ((emacs "27.1") (doom-themes "2.2.1"))
;;
;;; Commentary:
;;
;; Rosé Pine Moon — a softer dark variant.  Palette follows the
;; official spec at https://rosepinetheme.com/palette/.  Face spec
;; is shared with the other variants — see `doom-rose-pine-common.el'.
;;
;;; Code:

(require 'doom-rose-pine-common)

(doom-rose-pine--def-theme doom-rose-pine-moon
  "A softer dark variant of Rosé Pine — Rosé Pine Moon."

  ((base           '("#232136" "#232136" "black"        ))
   (surface        '("#2a273f" "#2a273f" "brightblack"  ))
   (overlay        '("#393552" "#393552" "brightblack"  ))
   (muted          '("#6e6a86" "#6e6a86" "brightblack"  ))
   (subtle         '("#908caa" "#908caa" "white"        ))
   (text           '("#e0def4" "#e0def4" "brightwhite"  ))
   (love           '("#eb6f92" "#eb6f92" "red"          ))
   (gold           '("#f6c177" "#f6c177" "yellow"       ))
   (rose           '("#ea9a97" "#ea9a97" "brightred"    ))
   (pine           '("#3e8fb0" "#3e8fb0" "blue"         ))
   (foam           '("#9ccfd8" "#9ccfd8" "cyan"         ))
   (iris           '("#c4a7e7" "#c4a7e7" "magenta"      ))
   (highlight-low  '("#2a283e" "#2a283e" "black"        ))
   (highlight-med  '("#44415a" "#44415a" "brightblack"  ))
   (highlight-high '("#56526e" "#56526e" "brightblack"  ))

   (bg             base)
   (bg-alt         surface)
   (fg             text)
   (fg-alt         subtle)
   (base0          base)
   (base1          surface)
   (base2          overlay)
   (base3          highlight-low)
   (base4          highlight-med)
   (base5          highlight-high)
   (base6          muted)
   (base7          subtle)
   (base8          text)
   (grey           muted)
   (red            love)
   (orange         gold)
   (green          foam)
   (teal           foam)
   (yellow         gold)
   (blue           pine)
   (dark-blue      pine)
   (magenta        iris)
   (violet         iris)
   (cyan           foam)
   (dark-cyan      pine)

   (highlight      rose)
   (selection      highlight-med)
   (region         highlight-med)
   (vertical-bar   overlay)

   (comments       (if doom-rose-pine-brighter-comments subtle muted))
   (doc-comments   (if doom-rose-pine-brighter-comments subtle muted))

   (builtin        love)
   (constants      gold)
   (functions      rose)
   (keywords       pine)
   (methods        rose)
   (numbers        gold)
   (operators      subtle)
   (strings        gold)
   (type           foam)
   (variables      text)

   (error          love)
   (success        foam)
   (warning        gold)

   (vc-added       foam)
   (vc-deleted     love)
   (vc-modified    rose)

   (modeline-bg                 (if doom-rose-pine-brighter-modeline overlay surface))
   (modeline-fg                 text)
   (modeline-bg-alt             (if doom-rose-pine-brighter-modeline highlight-med overlay))
   (modeline-fg-alt             subtle)
   (modeline-bg-inactive        base)
   (modeline-fg-inactive        subtle)
   (modeline-bg-inactive-alt    surface)
   (modeline-fg-inactive-alt    muted)

   (modeline-pad
    (when doom-rose-pine-padded-modeline
      (if (integerp doom-rose-pine-padded-modeline) doom-rose-pine-padded-modeline 4)))))

;;; doom-rose-pine-moon-theme.el ends here
