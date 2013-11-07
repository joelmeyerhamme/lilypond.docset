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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/spacing-horizontal-skyline-grace.ly"
\sourcefileline 0
\header{

  texidoc = "Skyline horizontal spacing may fold non-adjacent columns
together, but they still do not collide. In this case, the arpeggio
and the barline do not collide."

}

\version "2.12.0"

\paper
{
  ragged-right = ##t
}

\new Staff
\relative c
{
  \override Score.NonMusicalPaperColumn #'stencil = #ly:paper-column::print 
  \time 6/8
  \clef bass
  s2. |
  \relative c <<
    {
      <des ges b des>4\arpeggio
    }
    \\
    {
      \acciaccatura ges,8 \voiceTwo ges4
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
