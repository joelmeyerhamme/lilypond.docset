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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/markup-syntax.ly"
\sourcefileline 0
\version "2.12.0"

\header {
  texidoc = "Demo of markup texts, using LilyPond syntax."
}

{
  f'1-\markup {
    foo
    \raise #0.2 \hbracket \bold bar

    \override #'(baseline-skip . 4)
    \bracket \column {
      baz
      bazr
      bla
    }
    \hspace #2.0
    \override #'(font-encoding . fetaMusic) {
      \lookup #"noteheads-0"
    }
    \semiflat
    { }
    \combine "X" "+"
    \combine "o" "/"
  }
  g'1-\markup {
				%		\char-number #"abc1234abc"
    \box \column {
      \line { "string 1" }
      \line { "string 2" }
      \concat { "f" "i" }
    }
    " "
    \draw-circle #1 #0.3 ##f
    " "
    \draw-circle #1 #0.3 ##t
    " "
    \italic Norsk
    \super "2"
    " "
    \raise #3.0 \whiteout white-out
    \circle \dynamic p
    \with-color #green Green
    \dynamic sfzp
    \huge { "A" \smaller "A" \smaller \smaller "A"
	    \smaller \smaller \smaller "A" }
    \sub "alike"
  }	
  c''4
}



% ****************************************************************
% end ly snippet
% ****************************************************************