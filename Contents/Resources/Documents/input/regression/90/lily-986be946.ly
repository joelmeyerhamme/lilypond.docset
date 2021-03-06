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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/font-name.ly"
\sourcefileline 0
\version "2.12.0"

\header {

    texidoc = "Other fonts can be used by setting @code{font-name} for
the appropriate object. The string should be a Pango font description
without size specification."


}

\layout { ragged-right = ##t }


{
  \override Staff.TimeSignature  #'font-name = #"Times New Roman"
  \time 3/4
  \set Score.skipBars = ##t
  \override Staff.MultiMeasureRestText #'font-name = #"LuxiMono"
  R1*21^"Rest in LuxiMono"

  c'1_\markup {
    \override #'(font-name . "Vera Bold")
      \override #'(font-size . 4)
        { This text is in large Vera Bold }
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************
