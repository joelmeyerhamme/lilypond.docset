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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/markup-word-wrap.ly"
\sourcefileline 0
\header {

  texidoc = "The markup commands @code{\\wordwrap} and @code{\\justify}
  produce simple paragraph text."

}

\version "2.19.80"

\markup {
  this is normal  text
  \override #'(line-width . 60)
  \wordwrap {
    This is a test of the wordwrapping function.
    1 This is a test of the wordwrapping function.
    2 This is a test of the wordwrapping function.
    3 This is a test of the wordwrapping function.
    4 1a111 11111  \bold 22222 \italic  2222 
  }
  continuing
}

\markup {
  this is normal  text
  \override #'(line-width . 40)
  \justify {
    This is a test of the wordwrapping function, but with justification.
    1 This is a test of the wordwrapping function, but with justification.
    2 This is a test of \fraction a b the wordwrapping function, but with justification.
    3 This is a test of the wordwrapping function, but with justification. bla bla
  }
  continuing
}


\markup {

  \override #'(line-width . 40)

{  \wordwrap-string " Om mani padme hum Om mani padme hum Om mani
padme hum Om mani padme hum Om mani padme hum Om mani padme hum Om
mani padme hum Om mani padme hum.

Gate Gate paragate Gate Gate paragate Gate Gate paragate Gate Gate
paragate Gate Gate paragate Gate Gate paragate."

  \justify-string " Om mani padme hum Om mani padme hum Om mani
padme hum Om mani padme hum Om mani padme hum Om mani padme hum Om
mani padme hum Om mani padme hum.

Gate Gate paragate Gate Gate paragate Gate Gate paragate Gate Gate
paragate Gate Gate paragate Gate Gate paragate." }


  
}



% ****************************************************************
% end ly snippet
% ****************************************************************