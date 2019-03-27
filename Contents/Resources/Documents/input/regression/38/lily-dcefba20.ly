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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/beam-broken-difficult.ly"
\sourcefileline 0
\version "2.17.6"

\header {
  texidoc = "The functions passed to the @code{positions} property should
handle complicated cases in the same manner that they handle more normal
cases.
"
}

\paper { ragged-right = ##t }
{
  r2.
  \override Beam.breakable = ##t
  r8[ g' \break a' r]
}
{
  r2.
  \override Beam.positions = #beam::align-with-broken-parts
  \override Beam.breakable = ##t
  r8[ g' \break a' r]
}
{
  r2.
  \override Beam.positions = #beam::slope-like-broken-parts
  \override Beam.breakable = ##t
  r8[ g' \break a' r]
}


% ****************************************************************
% end ly snippet
% ****************************************************************
