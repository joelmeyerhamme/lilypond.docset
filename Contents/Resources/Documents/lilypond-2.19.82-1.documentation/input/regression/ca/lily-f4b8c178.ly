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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/beam-center-slope.ly"
\sourcefileline 0

\version "2.17.6"
\header{

  texidoc="Simple beams on middle staffline are allowed to be
    slightly sloped, even if the notes have ledgers.  Beams reaching
    beyond middle line can have bigger slope."

}

\layout{
  ragged-right = ##t
  indent = 0
}

\relative c'{
  %%\override Staff.Stem.beamed-lengths = #'(3.50)
  %%  c8[ d]
  %%  d[ c]
  %% r2
  %% \override Staff.Stem.beamed-lengths = #'(3.26)

  a8[^"small slope" b]
  b[ a]

  c''[ b]
  b[ c]

				% baerenreiter test
  b,,[ c]
  c[ b]

  b''[ a]
  a[ b]

  c,,[ d]
  d[ c]
  
  a''[ g]
  g[ a]

  c,,[^"bigger slope" e]
  e[ c]
  
  a''[ f]
  f[ a]
}




% ****************************************************************
% end ly snippet
% ****************************************************************
