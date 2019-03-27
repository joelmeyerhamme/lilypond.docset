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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/note-line.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "Note head lines (e.g. glissando)
run between centers of the note heads."
}

su = { \change Staff = up}
sd = { \change Staff = down}


\layout {
  line-width = 8.0 \cm
}


\context PianoStaff
<<
  \new Staff = "up"   {
    \override Glissando.breakable = ##t
    \set PianoStaff.connectArpeggios = ##t
    \showStaffSwitch
    \clef F
    c4 d \sd b a g8 f16 e32 d \su g2 \glissando a,4 \sd \break a2. \su g4 \glissando f1
  }
  \new Staff = "down" {
    \clef F s1*4
  }
>>




% ****************************************************************
% end ly snippet
% ****************************************************************
