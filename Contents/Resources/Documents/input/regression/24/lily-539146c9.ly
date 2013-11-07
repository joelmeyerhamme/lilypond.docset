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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/quote-cyclic.ly"
\sourcefileline 0

\header {

    texidoc = "Two quoted voices may refer to each other. In this
example, there are notes with each full-bar rest."
	  
 
}
\version "2.12.0"

A = \relative c' { c4 d e f | \cueDuring #"qB" #1 { R1 } | }
B = \relative c' { \cueDuring #"qA" #1 { R1 } | f4 e d c  | }

\addQuote "qA" \A
\addQuote "qB" \B

\layout { ragged-right = ##t }

<<
    \new Staff \A
    \new Staff \B
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
