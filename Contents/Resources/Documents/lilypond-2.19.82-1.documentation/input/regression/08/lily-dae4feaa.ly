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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/modern-tab-clef.ly"
\sourcefileline 0
\version "2.19.21"

\header{ texidoc = "Sans serif style tab clefs are supported by @code{\\clef moderntab}.
                    This alternative clef supports four- to seven-stringed instruments
                    and is scaled automatically."
       }

bass = \relative {
  c,4 d e f
  e4 d c2
}

guitar = \relative {
  c4 d e f
  e4 d c2
}

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \bass
    }
    \new TabStaff {
      \clef "moderntab"
      \set TabStaff.stringTunings = #bass-four-string-tuning
      \bass
    }
  >>
}

\score {
  <<
    \new Staff {
      \clef "treble_8"
      \guitar
    }
    \new TabStaff {
      \clef "moderntab"
      \set TabStaff.stringTunings = #guitar-seven-string-tuning
      \guitar
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************