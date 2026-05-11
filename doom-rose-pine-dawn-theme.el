;;; doom-rose-pine-dawn-theme.el --- Rosé Pine Dawn for Doom Emacs -*- lexical-binding: t; no-byte-compile: t; -*-
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
;; Rosé Pine Dawn — the light variant.  Palette follows the official
;; spec at https://rosepinetheme.com/palette/.  Face spec is shared
;; with the other variants — see `doom-rose-pine-common.el'.
;;
;;; Code:

(require 'doom-rose-pine-common)

(doom-rose-pine--def-theme doom-rose-pine-dawn
  "A light variant of Rosé Pine — Rosé Pine Dawn."

  ((base           '("#faf4ed" "#faf4ed" "white"        ))
   (surface        '("#fffaf3" "#fffaf3" "brightwhite"  ))
   (overlay        '("#f2e9de" "#f2e9de" "brightwhite"  ))
   (muted          '("#9893a5" "#9893a5" "brightblack"  ))
   (subtle         '("#797593" "#797593" "black"        ))
   (text           '("#575279" "#575279" "black"        ))
   (love           '("#b4637a" "#b4637a" "red"          ))
   (gold           '("#ea9d34" "#ea9d34" "yellow"       ))
   (rose           '("#d7827e" "#d7827e" "brightred"    ))
   (pine           '("#286983" "#286983" "blue"         ))
   (foam           '("#56949f" "#56949f" "cyan"         ))
   (iris           '("#907aa9" "#907aa9" "magenta"      ))
   (highlight-low  '("#f4ede8" "#f4ede8" "brightwhite"  ))
   (highlight-med  '("#dfdad9" "#dfdad9" "white"        ))
   (highlight-high '("#cecacd" "#cecacd" "white"        ))

   ;; doom-themes required slots.  For light themes, base0 is the
   ;; starker background (whiter) and base8 is the starker foreground
   ;; (darker).  surface (#fffaf3) is brighter than base (#faf4ed),
   ;; so it stands in for base0; base maps to base1.
   (bg             base)
   (bg-alt         surface)
   (fg             text)
   (fg-alt         subtle)
   (base0          surface)
   (base1          base)
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

;;; doom-rose-pine-dawn-theme.el ends here
