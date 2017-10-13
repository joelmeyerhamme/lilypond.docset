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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/ambitus-cue.ly"
\sourcefileline 0
\version "2.19.21"

\header {
  texidoc = "Ambitus for pieces beginning with @code{\\cueDuringWithClef}.

Cues are often used at or near the beginning of a piece. Furthermore,
a cue is frequently in a different clef, so the
@code{\\cueDuringWithClef} command is handy.  Using this command at
the beginning of a piece should leave the ambitus displayed based
on the main clef.

An @code{Ambitus_engraver} should ignore notes in @code{CueVoice}
contexts.
"
}

\addQuote "other" \relative { r4 c e g }

\new Staff \new Voice \relative c'
{
 \cueDuringWithClef #"other" #UP #"bass" { R1 } |
 e4 b c2
}

\layout {
 \context {
   \Staff
   \consists "Ambitus_engraver"
 }
}



% ****************************************************************
% end ly snippet
% ****************************************************************