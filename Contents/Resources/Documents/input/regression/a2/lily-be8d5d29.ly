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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/accidental-placement.ly"
\sourcefileline 0

\version "2.19.21"

\header {

  texidoc ="Accidentals are placed as closely as possible.
Accidentals in corresponding octaves are aligned.
The top accidental should be nearest to the chord. The
flats in a sixth should be staggered.  "
  
}

\layout {
  ragged-right = ##t
}


\context Voice \relative
{
  <d' e! bes'!>4
  cis4
  c4
  \transpose c c' {
    <ges es'>
    <bis es gis>4
    <es! as!>
    <gis! cis!>
    <g! des'>
    <ges! es'!>
  }    
  <cis d es fis gis ases bes ces d e! >4
  <bes'! fis!>     
  <bes! cis!>
  <c! es ges beses>
  <bes! c d f >    
  <bes,! c d f >

}





% ****************************************************************
% end ly snippet
% ****************************************************************
