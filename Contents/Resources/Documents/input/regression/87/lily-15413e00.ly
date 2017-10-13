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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/magnifyMusic-repeat-ties.ly"
\sourcefileline 0
\version "2.19.8"

\header {
  texidoc = "Repeat ties should be scaled along with notation size
when using the @code{\magnifyMusic} command.  They can get thicker
than the default, but not thinner."
}

template = {
  \omit Staff.TimeSignature
  \time 7/2
  \magnifyMusic 0.50 s2
  \magnifyMusic 0.63 s
  \magnifyMusic 0.80 s
  \magnifyMusic 1.00 s
  \magnifyMusic 1.26 s
  \magnifyMusic 1.59 s
  \magnifyMusic 2.00 s
}

\score {
  \new StaffGroup <<
    \new Staff \new Voice = "upper" <<
      \template
      \repeat unfold 7 { g'4\repeatTie \hide Rest r4 }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #DOWN
    } \lyricsto "upper" {
      " 50%" \skip 1 \skip 1 " 100%" \skip 1 \skip 1 " 200%"
    }
    \new Staff \new Voice <<
      \clef bass
      \template
      \repeat unfold 7 { f4\repeatTie \hide Rest r4 }
    >>
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************