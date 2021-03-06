%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/hairpin-shorten-pair-circled-tip.ly"
\sourcefileline 0
\version "2.19.55"

\header {
  texidoc = "The @code{shorten-pair} property works with circled-tip
hairpins.  When two hairpins share a circle, the adjoining ends are
not moved.
"
}

{
  \override Hairpin.circled-tip = ##t
  \once \override Hairpin.shorten-pair = #'(-2 . -4)
  c'1~\<
  c'2~ c'\!
  \once \override Hairpin.shorten-pair = #'(0 . -4)
  c'1~\>
  c'2~ c'\!
  \break
  \override Hairpin.shorten-pair = #'(4 . -8)
  c'2~\> c'2~\<
  c'2~ c'2\!
}



% ****************************************************************
% end ly snippet
% ****************************************************************
