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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/tuplet-bracket-outside-staff-priority.ly"
\sourcefileline 0
\version "2.19.21"
\header {

  texidoc = "Tuplet brackets' outside staff priority can be
set.  Brackets, by default, carry their numbers with them."

}

\relative {
  \override TupletBracket.avoid-scripts = ##f
  % Plain old tuplet
  \tuplet 3/2 { a'8 r a }
  % With nothing set, collisions abound both horizontally and
  % vertically
  \tuplet 3/2 { a8^\espressivo r a^\espressivo }
  % Setting the staff priority prevents collisions
  \override TupletBracket.outside-staff-priority = #1
  \tuplet 3/2 { a8^\espressivo r a^\espressivo }
  % Note that, with the outside-staff-priority set, this bracket
  % should be at the same vertical level as the first one
  \tuplet 3/2 { a8 r a }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
