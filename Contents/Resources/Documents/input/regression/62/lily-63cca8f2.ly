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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/spacing-knee.ly"
\sourcefileline 0
\version "2.12.0"
\header {

  texidoc = "For knees, the spacing correction is such that the
stems are put at regular distances. This effect takes into account the
width of the note heads and the thickness of the stem.
"
}

\layout { ragged-right = ##t}

{
  g''8[ g g'' g''] 

				% check code independent of default settings.
  \override NoteSpacing  #'knee-spacing-correction = #1.0 
  g''8[ g g'' g''] 
  \override Stem  #'thickness = #10 
  g''8[ g g'' g''] 
}







% ****************************************************************
% end ly snippet
% ****************************************************************