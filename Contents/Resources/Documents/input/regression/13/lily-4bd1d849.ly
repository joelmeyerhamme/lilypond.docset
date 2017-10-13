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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/markup-scheme.ly"
\sourcefileline 0

\header {

  texidoc = "There is a Scheme macro @code{markup} to produce markup
    texts using a similar syntax as @code{\\markup}.

"

}

%{

For maintenance reasons, we don't exercise the entire markup command set.

%}

\layout { 
  ragged-right = ##t
  indent = #0
  \context {
    \Staff
    \remove "Time_signature_engraver"
  }
}



\version "2.16.0"

{
  \textLengthOn
  f'1-\markup {
    foo
    \raise #0.2 \hbracket \bold bar
    \override #'(baseline-skip . 4)

    \bracket \column { baz bazr bla }
    \hspace #2.0
    \override #'(font-encoding . fetaMusic) {
      \lookup #"noteheads-0"
    }
    \musicglyph #"accidentals.mirroredflat"
    \combine "X" "+"   
    \combine "o" "/"
    \box \column { \line { "string 1" } \line { "string 2" } }
    " "
    \italic Norsk
    \super "2"
    \circle \dynamic "p"
    " "
    \dynamic sfzp
    \huge { "A" \smaller "A" \smaller \smaller "A"
	    \smaller \smaller \smaller "A" }
    \larger \sub "alike"
  }	
  \break
  f'1-$(markup 
	"foo"
	#:raise 0.2 #:hbracket #:bold "bar"
	#:override '(baseline-skip . 4) 
	#:bracket #:column ( "baz" "bazr" "bla" )
	#:hspace 2.0
	#:override '(font-encoding . fetaMusic) #:line (#:lookup "noteheads-0" 
						      )
	#:musicglyph "accidentals.mirroredflat"
	#:combine "X" "+"   
	#:combine "o" "/"
	#:box #:column ("string 1" "string 2")
	" "
	#:italic "Norsk"
	#:super "2"
	#:circle #:dynamic "p"
	" "
	#:dynamic "sfzp"
	#:huge #:line ("A" #:smaller "A" #:smaller #:smaller "A" 
		       #:smaller #:smaller #:smaller "A")
	#:larger #:sub "alike")
}



% ****************************************************************
% end ly snippet
% ****************************************************************
