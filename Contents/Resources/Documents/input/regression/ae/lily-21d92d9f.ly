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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/collision-dots-move.ly"
\sourcefileline 0
\version "2.19.21"
\header {

    texidoc = "If dotted note heads must remain on the left side,
collision resolution moves the dots to the right."

}

\layout { ragged-right = ##t }

\relative {
  \clef bass
  \override Staff.NoteCollision.prefer-dotted-right = ##t
  << <b, g' >4 ^"prefer-dotted-right = #t" \\ { c8. d16 } >>
  << <b g' >4 \\ { d8. d16 } >>
  << <b g' >4 \\ { f'8. d16 } >>
  << <c a' >4 \\ { g'8. d16 } >>
  \override Staff.NoteCollision.prefer-dotted-right = ##f
  << <b g' >4 ^"prefer-dotted-right = #f" \\ { c8. d16 } >>
  << <b g' >4 \\ { d8. d16 } >>
  << <b g' >4 \\ { f'8. d16 } >>
  << <c a' >4 \\ { g'8. d16 } >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
