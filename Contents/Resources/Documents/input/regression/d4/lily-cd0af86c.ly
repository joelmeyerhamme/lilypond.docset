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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/midi-tuplets.ly"
\sourcefileline 0
\version "2.12.0"
\header {
texidoc = "

Midi2ly tuplet test.

@example
  python scripts/midi2ly.py --duration-quant=32 \
      --allow-tuplet=4*2/3 \
      --allow-tuplet=8*2/3 \
      --allow-tuplet=4*3/5 \
      --allow-tuplet=8*3/5 \
      tu.midi 
@end example
"
}


\score { 
  \context Voice  \relative c' {

    a1 a2 a2. a4 a4. a8 a8. a16 a16. a32 a32. a64

    \times 2/3 { b4 b4 b4 }
    \times 3/5 { b4 b4 b4 b4 b4 }

    \times 2/3 { c8 c8 c8 }
    \times 3/5 { c8 c8 c8 c8 c8 }

  }
  \layout { }  
  \midi { }
}





% ****************************************************************
% end ly snippet
% ****************************************************************
