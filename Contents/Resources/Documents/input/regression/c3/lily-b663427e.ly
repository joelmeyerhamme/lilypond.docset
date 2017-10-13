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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/beam-funky.ly"
\sourcefileline 0

\version "2.12.0"
\header {
  
  texidoc = "In complex configurations of knee beaming, according to
Paul Roberts, the first stem of a beam determines the direction of the
beam, and as such the way that following (kneed) stems attach to the
beam. This is in disagreement with the current algorithm."
  
}

\layout { ragged-right = ##t} 

\relative c'
{
  \override Beam  #'auto-knee-gap = #7
  \set subdivideBeams = ##t	     
  \time 8/8
  c,16[  g'''16  
	 c,,,16  g'''16 
	 c,,,16  g'''16 	     	     
	 c,,,16  g'''16 ]

  c,,,16[ c c c
	  b'''   b b b]

  \transpose c' a, {
    \relative b'' {  g,16[  g'''16  
			    g,,,16  g'''16 
			    g,,,16  g'''16 	     	     
			    g,,,16  g'''16
			    g g,,,
			    g''' g,,,
			    g''' g,,,
			    g''' g,,,]
		   }
  }
}




% ****************************************************************
% end ly snippet
% ****************************************************************