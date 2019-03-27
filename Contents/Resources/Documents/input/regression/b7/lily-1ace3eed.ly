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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/glissando-broken-unkilled.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Broken glissandi anticipate the pitch on the next line."
}

\score {
 \relative {
   \override Glissando.after-line-breaking = ##t
   \override Glissando.breakable = ##t
   c'1\glissando
   \break
   c'1
   \break
   c,1\glissando
   \break
   s2 c'2
 }
 \layout {
   ragged-right = ##t
 }
}

\score {
 \relative {
   \override Glissando.after-line-breaking = ##t
   \override Glissando.breakable = ##t
   c'1\glissando
   \break
   c'1
   \break
   c,1\glissando
   \break
   s2 c'2
 }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
