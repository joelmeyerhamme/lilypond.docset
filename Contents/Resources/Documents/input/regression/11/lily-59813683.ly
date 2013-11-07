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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/markup-commands.ly"
\sourcefileline 0
\header
{

  texidoc = "test various markup commands."

}
\paper { ragged-right = ##T }
\version "2.12.0"

{
  g'_\markup {
    \column {
      \line { 
	foo \magnify #2 foo
	LOWER \lower #3 LOWER
	\large \bold { normal \normal-text normal }
	Small-Caps \smallCaps 	Small-Caps
      }
      
      \override #'(line-width . 50) 
      \override #'(bla . "This is a field containing text. Blah blah
blah.  This is a field containing text. Blah blah blah.  This is a
field containing text. Blah blah blah.  This is a field containing
text. Blah blah blah. This is a field containing text. Blah blah
blah.") 
      \column  {
	justify:
	\justify-field #'bla
	wordwrap:
	\wordwrap-field #'bla
      }

      draw-line: \draw-line #'(5 . 3)
      \underline "underlined"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
