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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/stem-tremolo-position.ly"
\sourcefileline 0
\header {
    texidoc = "Tremolos are positioned a fixed distance from the
    end of the beam. Tremolo flags are shortened and made rectangular
    on beamed notes or on stem-up notes with a flag. Tremolo flags are
    tilted extra on stem-down notes with a flag."
}

\version "2.12.0"
\layout {
    ragged-right = ##T
}

\relative c' {
  c16:32 e: f: a: c,4:8 c4:32 c8:16 \noBeam c16:32 \noBeam c16:64 |
  c''16:32 e: f: a: c,4:8 c4:32 c8:16 \noBeam c16:32 \noBeam c16:64 |
}



% ****************************************************************
% end ly snippet
% ****************************************************************