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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/beam-concave-damped.ly"
\sourcefileline 0
\header {
    texidoc = "Beams that are not strictly concave are damped
 according to their concaveness. "
}
\version "2.12.0"
\layout {
    ragged-right = ##t
}

\relative c'' {
    \time 2/4 
    g'=''8[ d a' b]
   \time 3/4
    f=''8[ e d c g b]
    b,16[ f' g a]
    r2
   \time 3/8
    c=''16[ b c e g <e b'>] |
   \stemUp b,8[  \stemDown d'8 bes8]
}



% ****************************************************************
% end ly snippet
% ****************************************************************