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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/beam-cross-staff-script.ly"
\sourcefileline 0
\header {

  texidoc = "scripts don't trigger beam formatting.  If this
does happen, we can have a cyclic dependency on Y-positions of
staves."

}


\version "2.12.0"

\new PianoStaff <<
   \new Staff = RH {
      \time 1/4
      c''16 [
      c''16
      \change Staff = LH
      c''16 \tenuto _ \markup { foo }
      \change Staff = RH
      c''16 ]
   }
   \new Staff = LH {
      s4
   }
>>

%%% END %%%




% ****************************************************************
% end ly snippet
% ****************************************************************