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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/rest-ledger.ly"
\sourcefileline 0
\version "2.12.0"
\header {
texidoc = "Whole and half rests moving outside the staff should get
ledger lines."
}


\paper { ragged-right = ##t } 

{
   \override Rest  #'staff-position = #4
  r1 \override Rest  #'staff-position = #5
  r1 \override Rest  #'staff-position = #6
  
  r1 \override Rest  #'staff-position = #-6
  r1 \override Rest  #'staff-position = #-7
  r1 \override Rest  #'staff-position = #-8
  r1

   \override Rest  #'staff-position = #6
  r2 \override Rest  #'staff-position = #7
  r2 \override Rest  #'staff-position = #8
  
  r2 \override Rest  #'staff-position = #-4
  r2 \override Rest  #'staff-position = #-5
  r2 \override Rest  #'staff-position = #-6
  r2

}




% ****************************************************************
% end ly snippet
% ****************************************************************