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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/clef-transposition-placement.ly"
\sourcefileline 0
\version "2.19.22"

\header {

  texidoc="Transposition symbols should be correctly positioned
close to the parent clef.  Horizontal alignment is fine-tuned
for standard C, G and F clefs: for example, downwards transposition
of a G clef should be centered exactly under the middle of clef hook.
For clefs that don't have fine-tuned alignment the transposition
number should be centered."

}

% use huge staff-size to see the tiny differencies better.
#(set-global-staff-size 35)

clefVariations =
#(define-music-function (type)(string?)
   #{
     \once \omit Staff.Clef s4
     \override Staff.Clef.full-size-change = ##t
     \clef #(string-append type "8") s4
     \clef #(string-append type "15") s4
     \clef #(string-append type "(8)") s4
     \clef #(string-append type "(141)") s4
     % change clefs are omitted - too similar to regular ones
     \cueClef #(string-append type "8") s4
     \cueClef #(string-append type "15") s4
     \cueClef #(string-append type "(8)") s4
     \cueClef #(string-append type "(141)") s4
   #})

\markup "Even the smallest positioning changes may indicate a problem!"
\score {
  <<
    \new Staff { \clefVariations "C_" }
    \new Staff { \clefVariations "C^" }
    \new Staff { \clefVariations "G_" }
    \new Staff { \clefVariations "G^" }
    \new Staff { \clefVariations "F_" }
    \new Staff { \clefVariations "F^" }
  >>
}

\layout {
  \context {
    \Staff
    \remove Time_signature_engraver
  }
}


% ****************************************************************
% end ly snippet
% ****************************************************************
