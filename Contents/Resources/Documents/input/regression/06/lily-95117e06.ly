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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/rehearsal-mark-align.ly"
\sourcefileline 0

\header {

  texidoc = "The rehearsal mark is put on top a breakable symbol,
  according to the value of @code{break-align-symbols} value of the
  @code{RehearsalMark}. The same holds for @code{BarNumber} grobs."

}

\version "2.12.0"
  
\relative {
  c1 \mark "foo"
  c1
  \key cis \major
  \clef alto
  \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
  \mark "on-key"
  cis
  \key ces \major
  \override Score.RehearsalMark #'break-align-symbols = #'(clef)
  \clef treble
  \mark "on clef"
  ces
}



% ****************************************************************
% end ly snippet
% ****************************************************************