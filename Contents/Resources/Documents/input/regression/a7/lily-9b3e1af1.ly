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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/phrasing-slur-multiple.ly"
\sourcefileline 0
\version "2.19.29"

#(ly:set-option 'warning-as-error #f)
#(ly:expect-warning (_ "already have phrasing slur"))
#(ly:expect-warning (_ "cannot end phrasing slur"))
#(ly:expect-warning (_ "unterminated phrasing slur"))

\header {
  texidoc = "LilyPond does not support multiple concurrent phrasing slurs with the 
parentheses syntax.  In this case, warnings will be given and the nested
slur will not be generated.  However, one can can create a second slur with
a different spanner-id."
}

\relative { 
  % This will give warnings ("Already have phrasing slur" and "Cannot end phrasing slur")
  c''4\(\(\=1\( d4\)\(\=1\( e4\) f\) |
  % This will give two overlapping slurs and "unterminated phrasing slur" from above
  d\(  d\=2\( e\) f\=2\) |
  
}



% ****************************************************************
% end ly snippet
% ****************************************************************
