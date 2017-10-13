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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/figured-bass-staff.ly"
\sourcefileline 0

\paper {
  ragged-right = ##t
}

\version "2.19.21"

\header {

  texidoc = "Figured bass can also be added to Staff context directly.
In that case, the figures must be entered with @code{\\figuremode} and be directed
to an existing @code{Staff} context.

Since these engravers are on @code{Staff} level, properties
controlling figured bass should be set in @code{Staff} context.

"

}

<<

  \new Staff = someUniqueName
  \relative {
    c''4 c'8 r8 c,4 c'
  }

  %% send to existing Staff.
  \context Staff = someUniqueName 
  \figuremode {
    <4>4 <4>8 s8
    
    \set Staff.useBassFigureExtenders = ##t
    <4 6>4 <4 6>
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
