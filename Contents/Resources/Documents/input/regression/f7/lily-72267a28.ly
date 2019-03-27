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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/nullvoice-change.ly"
\sourcefileline 0
\version "2.19.59"

\header {
  texidoc = "@samp{NullVoice} responds to @code{\\change Staff} as a
@samp{Voice} would.  In consequence, in the first shown system
it keeps a single treble-clef staff alive.  In the second
system, it is in a single bass-clef staff."
}

\layout { ragged-right = ##t }

music = \fixed c' {
  c1
  \break
  \change Staff = "After"
  c
}

\markup
\score-lines {
  \new StaffGroup \with \RemoveAllEmptyStaves
  <<
    \new Staff = "Before" \new NullVoice \music
    \new Staff = "After" {
      \clef bass
      $(skip-of-length music)
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
