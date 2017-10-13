%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/part-combine-markup.ly"
\sourcefileline 0
\version "2.12.0"

\header {
  texidoc = "Part combine texts accept markup."
}

\new Staff <<
  \set Score.soloText = \markup { \concat { I \super o } }
  \set Score.soloIIText = \markup { \huge \italic II }
  \set Score.aDueText = \markup { \normal-text \rounded-box { "a 2" } }
  \partcombine
    \relative g' { g4 g r r a2 g }
    \relative g' { r4 r a( b) a2 g }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************