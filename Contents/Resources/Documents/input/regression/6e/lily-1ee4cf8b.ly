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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/lyric-extender-no-heads.ly"
\sourcefileline 0
\header
{
  texidoc = "Extender engraver also notices the lack of note heads.
Here the extender ends on the 2nd quarter note, despite the grace note
without a lyric attached." 
  
}

\version "2.12.0"

\layout {
  ragged-right = ##t
}

\relative c'' {
  \time 3/4
  d4~ d4 r4
  \grace es8

  d4
  
}
\addlyrics { x __ x  }




% ****************************************************************
% end ly snippet
% ****************************************************************