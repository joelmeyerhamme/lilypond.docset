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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/rest-ledger.ly"
\sourcefileline 0
\version "2.19.22"
\header {
texidoc = "Breve, whole and half rests moving outside the staff should get
ledger lines."
}


\paper { ragged-right = ##t }

rPos =
#(define-music-function (y) (number?)
  #{ \override Rest.staff-position = #y #})

{
  \set Score.timing = ##f
  \rPos #2
  r\breve \rPos #4
  r \rPos #5
  r \rPos #-4
  r \rPos #-6
  r \rPos #-7
  r

  \rPos #2
  r1 \rPos #4
  r \rPos #5
  r \rPos #-6
  r \rPos #-7
  r \rPos #-8
  r

  \rPos #4
  r2 \rPos #6
  r \rPos #7
  r \rPos #-4
  r \rPos #-6
  r \rPos #-7
  r

}




% ****************************************************************
% end ly snippet
% ****************************************************************