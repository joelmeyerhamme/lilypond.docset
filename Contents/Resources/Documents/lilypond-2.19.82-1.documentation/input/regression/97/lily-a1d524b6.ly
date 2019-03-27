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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/clefs.ly"
\sourcefileline 0
\version "2.19.2"

\header{

  texidoc=" Clefs with @code{full-size-change} should be typeset in
full size."

}

\layout{
  ragged-right = ##t
}

clefs = {
  \clef "treble"        c'1^"treble"        \bar "||"
  \clef "french"        c'1^"french"        \bar "||"
  \clef "soprano"       c'1^"soprano"       \bar "||"
  \clef "mezzosoprano"  c'1^"mezzosoprano"  \bar "||"
  \clef "alto"          c'1^"alto"          \bar "||"
  \clef "varC"          c'1^"varC"          \bar "||"
  \clef "treble"        c'1^"treble"        \bar "||"
  \clef "altovarC"      c'1^"altovarC"      \bar "||"
  \clef "tenor"         c'1^"tenor"         \bar "||"
  \clef "tenorvarC"     c'1^"tenorvarC"     \bar "||"
  \clef "tenorG"        c'^"tenorG"         \bar "||"
  \clef "GG"            c'1^"GG"            \bar "||"
  \clef "baritone"      c'1^"baritone"      \bar "||"
  \clef "varbaritone"   c'1^"varbaritone"   \bar "||"
  \clef "baritonevarC"  c'1^"baritonevarC"  \bar "||"
  \clef "baritonevarF"  c'1^"baritonevarF"  \bar "||"
  \clef "bass"          c'1^"bass"          \bar "||"
  \clef "subbass"       c'1^"subbass"       \bar "||"
  \clef "percussion"    c'1^"percussion"    \bar "||"
  \clef "varpercussion" c'1^"varpercussion" \bar "||"
}

{ 
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \textLengthOn
  \mark "clefs:"
  \clefs
  \override Staff.Clef.full-size-change = ##t \break
  \mark "with full-size-change = #t:"
  \clefs
  \bar "|."
}




% ****************************************************************
% end ly snippet
% ****************************************************************
