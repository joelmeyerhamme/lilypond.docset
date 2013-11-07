%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/repeat-unfold-tremolo.ly"
\sourcefileline 0
\version "2.12.0"
\header {

  texidoc = "Unfolding tremolo repeats. All fragments fill one
 measure with 16th notes exactly."

}

\layout { ragged-right = ##t }



{
  \time 2/4 
  \applyMusic #unfold-repeats 	
  { \repeat tremolo 4 { c'16 e' } |
    \repeat tremolo 8 c'16 } |

  \time 3/4 
  \applyMusic #unfold-repeats 	
  { \repeat tremolo 6 { c'16 e' } |
    \repeat tremolo 12 c'16 } | \bar "|."
  
  \bar "|."

  
}
  




% ****************************************************************
% end ly snippet
% ****************************************************************