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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/identifier-quoted.ly"
\sourcefileline 0
\header
{

texidoc = "Music identifiers containing arbitrary characters may be
initialized using
@example
\"violin1\" = @{ c''4 c'' c'' c'' @}
@end example
and used as:
@example
\\new Voice @{ \\\"violin1\" @}
@end example
"

}

\version "2.17.28"

"violin1" = { c''4 c'' c'' c'' }
"violin2" = { a'4 a' a' a' }

\layout { ragged-right = ##t }

{
  << \"violin1" \\ \"violin2" >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************