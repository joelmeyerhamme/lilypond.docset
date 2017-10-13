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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/dots.ly"
\sourcefileline 0
\version "2.19.21" \header{


    texidoc=" Both noteheads and rests can have dots.  
    Augmentation dots should never be printed on a staff line,
but rather be shifted vertically. They should go up, but in case of
multiple parts, the down stems have down shifted dots.  In case of
chords, all dots should be in a column.  The dots follow the shift
of rests when avoiding collisions.

The priorities to print the dots are (ranked in importance):

@itemize @bullet
@item keeping dots off staff lines,
@item keeping dots close to their  note heads,
@item moving dots in the direction specified by the voice,
@item moving dots up.
@end itemize

"
}



\context Voice \relative {
  \time 6/8
  d''4. g,,
  \stemDown
  <b'' c d e>4.  <f g a b>
  <f a c> <e a c> <b f' c' g'>
  
  
  <<
    { f  <b c> r4.  }\\
    { b, <a b> r4. }
  >>
  
  
}




% ****************************************************************
% end ly snippet
% ****************************************************************