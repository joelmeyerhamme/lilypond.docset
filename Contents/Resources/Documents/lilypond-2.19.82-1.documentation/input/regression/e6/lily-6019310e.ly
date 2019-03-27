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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/modal-transforms.ly"
\sourcefileline 0
\version "2.16.0"
\header {
    texidoc = "\modalTranspose, \retrograde, \inversion and
\modalInversion work for an octatonic motif."
}

cOctatonicScale = {
  c' d' ees' f'
  ges' aes' a' b'
}
motif = {
  c'8. ees'16( ges'8. a'16
  b'8.) aes'16 f'8. d'16
}

\score {
  \new Staff {
    \time 4/4
    <<
      {
        \motif
        \modalTranspose c' f' \cOctatonicScale \motif
        \retrograde \motif
        \modalInversion aes' b' \cOctatonicScale \motif
	\inversion aes' b' \motif
      }
      {
        s1-"Octatonic motif" |
        s1-"motif transposed from c to f" |
        s1-"motif in retrograde" |
        s1-"motif inverted around aes to b" |
	s1-"motif inverted exactly"
      }
    >>
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
