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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/backend-svg.ly"
\sourcefileline 0
\version "2.19.22"
%{
#(ly:set-option 'backend 'svg)
#(set! output-count 1)


\include "typography-demo.ly"


#(define outname (ly:parser-output-name))

#(ly:set-option 'backend 'eps)

%% TODO: what to do if inkscape fails?
#(ly:progress "Invoking inkscape...\n")

%% LD_LIBRARY_PATH is necesssary, otherwise, it doesn't build in GUB.
%% LD_LIBRARY_PATH is part of the start-environment but should be switched off
%% for external inkscape.
#(let*
  ((cmd (format #f
	"LD_LIBRARY_PATH= inkscape --without-gui --export-text-to-path --export-eps ~a-inkscape.eps ~a-1.svg" outname outname)))
  (ly:progress "Running ~a" cmd)
  (ly:system cmd)
  (cons
   (format #f "FONTCONFIG_FILE=~a/fonts/fonts.conf" (ly:effective-prefix))
   (ly:start-environment)))

#(set! output-count 0)
#(set-default-paper-size "a5")

\book { 
  \header {
    texidoc = "SVG output, rendered through inkscape."
    title = "SVG"
  } 

  \score {
    \lyrics {
      \markup {
	\epsfile #X #30.0 #(format #f "~a-inkscape.eps" outname)
      }
      bla bla bla
    }
  }
}
%}



% ****************************************************************
% end ly snippet
% ****************************************************************
