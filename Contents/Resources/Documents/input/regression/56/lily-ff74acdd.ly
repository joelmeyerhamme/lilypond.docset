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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/tablature-additional-bass-strings.ly"
\sourcefileline 0
\version "2.19.37"

\header
{
  texidoc = "Additional bass strings (for baroque lute, etc.) are supported in
  TabStaff.  They are printed below lowest line as: a, /a, //a, ///a, 4, 5 etc.
  @code{additionalBassStrings} needs to be set accordingly."
}

m = { e' b g d a, e, d, c, b,,\9 a,, g,, }
mus = { \m \bar "||" \transpose c cis \m \bar "|." }

\score {
  <<
    \new Staff { \clef bass \cadenzaOn  \mus }
    %% FretBoards with `additionalBassStrings' return weird output
    %% A warning is thrown if uncommented
    %\new FretBoards \mus
    \new TabStaff { \mus }
  >>
  \layout {
    \context {
      \Score
      tablatureFormat = #fret-letter-tablature-format
    }
    \context {
      \FretBoards
      stringTunings = \stringTuning <e, a, d g b e'>
      additionalBassStrings = \stringTuning <g,, a,, b,, c, d,>
    }
    \context {
      \TabStaff
      stringTunings = \stringTuning <e, a, d g b e'>
      additionalBassStrings = \stringTuning <g,, a,, b,, c, d,>
      fretLabels = #'("a" "b" "r" "d" "e" "f" "g" "h" "i" "k")
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
