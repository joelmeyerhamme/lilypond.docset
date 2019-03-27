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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/font-family-override.ly"
\sourcefileline 0
\header {

  texidoc = "The default font families for text can be
  overridden with @code{make-pango-font-tree}"

}

\version "2.19.21"

\paper {
  % change for other default global staff size.
  myStaffSize = #20


  %{

  run

      lilypond -dshow-available-fonts blabla

  to show all fonts available in the process log.

  %}


  #(define fonts
    (make-pango-font-tree "Times New Roman"
                          "Nimbus Sans,Nimbus Sans L"
                          "Luxi Mono"

;;     "Helvetica"
;;     "Courier"

     (/ myStaffSize 20)))
}

\score {
  \relative {

    c''^\markup { roman: foo \bold bla \italic bar \italic \bold baz }
    c'_\markup {
      \override #'(font-family . sans)
      {
        sans: foo \bold bla \italic bar \italic \bold baz
      }
    }
    c'^\markup {
      \override #'(font-family . typewriter)
      {
        mono: foo \bold bla \italic bar \italic \bold baz
      }
    }
  }

  \layout {
    \context {
      \Score
      \override PaperColumn.keep-inside-line = ##f
    }
  }

}



% ****************************************************************
% end ly snippet
% ****************************************************************
