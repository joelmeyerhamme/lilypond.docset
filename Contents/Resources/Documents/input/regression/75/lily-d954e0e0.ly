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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/context-mod-with.ly"
\sourcefileline 0
\version "2.19.46"

\header  {
texidoc = "Context modifications can be stored into a variable as a
\with object. They can be later inserted into another \with block."
}

% Some sample modifications to be inserted into a \with block later on
ctxmod = \with {
  \remove "Time_signature_engraver"
  \consists "Ambitus_engraver"
  \override StaffSymbol.line-count = 4
}

\layout {
  \context {
    \Score
    \remove "Mark_engraver"
    \remove "Staff_collecting_engraver"
  }
  \context {
    \Staff
    \consists "Mark_engraver"
    \consists "Staff_collecting_engraver"
  }
}


music = \relative { \key fis \minor c''1 d e }

\score { <<
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \override Score.RehearsalMark.font-size = #-2
  % No modifications:
  \new Staff { \mark \markup { No modifications } \music }
  \new Staff \with {
    \remove "Time_signature_engraver"
    \consists "Ambitus_engraver"
    \override StaffSymbol.line-count = 4
  } {
    \mark
    \markup { "Remove time sig, add ambitus, set staff to 4 lines" }
    \music }
  % The same mods as direct value of \with
  \new Staff \with \ctxmod {
    \mark \markup { "The same mods using a variable" } \music
  }
  % Some context modifications manually written in a \with block
  \new Staff \with { \ctxmod } {
    \mark \markup { "The same mods using a variable and \with" }
    \music
  }
  % Mods before a context mod in a with block are working:
  \new Staff \with {
    \remove "Clef_engraver"
    \ctxmod
  } {
    \mark
    \markup { "Remove clef and use variable to add other changes as above" }
    \music
  }
  % Mods before and after a context mod in a with block are working:
  \new Staff \with {
    \remove "Clef_engraver"
    \ctxmod
    \remove "Key_engraver"
  } { \mark \markup { "Also remove clef and key engravers" } \music }
  % Test rendered redundant by issue 4911
  \new Staff \with \ctxmod { \mark \markup { "The same mods as staff 2" } \music }
  \new Staff { \mark \markup { "Back to default" } \music }
>>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
