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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/remove-empty-staves-auto-knee.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "
RemoveEmptyStaves should keep the pre-existing value of
@code{auto-knee-gap}.  In this case, the cross-staff beam
should be between the two staves.
"
}

staffMusic = \new StaffGroup {
  <<
    \new Staff = "rh" {
      \relative {
        c'1 \break
        c1 \break
        c8[ c c c
        \change Staff = "lh"
        g, g g g]
        \change Staff = "rh"
	c1
      }
    }
    \new Staff = "lh" {
      \relative {
        \clef bass
        c1
        R1
        R1
	R1
      }
    }
  >>
}

\score {
  \staffMusic
}

\layout {
  ragged-right = ##t
  \context {
    \Staff
    \override Beam.auto-knee-gap = #4.5
    \RemoveEmptyStaves
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************
