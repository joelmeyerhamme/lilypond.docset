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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/rest-note-collision.ly"
\sourcefileline 0

\header {

  texidoc = "In rest-note collisions, the rest moves in discrete
  steps, and inside the staff, it moves in whole staff spaces."

	}


\version "2.19.21"

music = {
  <<
    \relative {
      f'' e d c b a g f e d c
    }
    \\
    {
      r4 r r r r r r r r r r
    }
  >>
  <<
    {
      r4 r r r r r r r r r r
    }
    \\
    \relative {
      f'' e d c b a g f e d c
    }
  >>
}

\score {
  \new Staff { \music }
}

\score {
  \new Staff { \override Staff.Rest.style = #'z \music }
}

\score {
  \new Staff { \override Staff.Rest.style = #'classical \music }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
