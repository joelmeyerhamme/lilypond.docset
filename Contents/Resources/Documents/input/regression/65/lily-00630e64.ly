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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/rest-dot-position.ly"
\sourcefileline 0
\header {

    texidoc = "Dots of rests should follow the rest positions. "

}

\version "2.18.0"

\layout { indent = 0 }
\paper { ragged-right = ##t }

{
    \set Score.timing = ##f
    \set Score.initialTimeSignatureVisibility = #(vector #f #f #f)
    r\longa. r\breve.
    r1. r2. r4.
    \once \override Rest.style = #'classical r4.
    \once \override Rest.style = #'z r4.
    r8. r16. r32. r64. r64.
    \bar ""
    << {
        r\longa. r\breve.
        r1. r2. r4.
        \once \override Rest.style = #'classical r4.
        \once \override Rest.style = #'z r4.
        r8. r16. r32. r64. r64.
    } \\ {
        r\longa. r\breve.
        r1. r2. r4.
        \once \override Rest.style = #'classical r4.
        \once \override Rest.style = #'z r4.
        r8. r16. r32. r64. r64.
    } >>

}



% ****************************************************************
% end ly snippet
% ****************************************************************