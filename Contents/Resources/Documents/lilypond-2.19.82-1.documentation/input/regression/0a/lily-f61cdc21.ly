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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/markup-note-styles.ly"
\sourcefileline 0
\version "2.19.35"

\header {
  texidoc = "@code{\\note-by-number} and @code{\\note} support
all note head styles and all flag styles (default, straight, flat, mensural)."
}

#(define styles-list
  '(default altdefault
    baroque neomensural
    mensural petrucci
    semipetrucci blackpetrucci
    harmonic harmonic-black
    harmonic-mixed diamond
    cross xcircle
    triangle slash))

#(define-markup-command (show-note-styles layout props styles) (list?)
   (interpret-markup layout props
                     (make-column-markup
                      (map
                       (lambda (style)
                         (make-line-markup
                          (list
                           (make-pad-to-box-markup '(0 . 20) '(0 . 0)
                                                   (symbol->string style))
                           (make-override-markup
                            (cons 'line-width 60)
                            (make-override-markup
                             (cons 'style style)
                             (make-fill-line-markup
                              (map
                               (lambda (dur-log)
                                 (make-note-by-number-markup
                                  dur-log 0 UP))
                               '(-3 -2 -1 0 1 2 3 4 5 6))))))))
                       styles))))

%% Testing all combinations of note-head/flag-styles would be too much
%% Thus, limited examples
\markup {
  \column {
    \combine \null \vspace #1
    \underline "Note-head-styles:"
    \override #'(baseline-skip . 6)
    \show-note-styles #styles-list
  }
}

\markup {
  \column {
    \combine \null \vspace #1
    \underline "Modern-straight-flag:"
    \override #'(flag-style . modern-straight-flag)
    \show-note-styles #'(default mensural)
  }
}

\markup {
  \column {
    \combine \null \vspace #1
    \underline "Old-straight-flag:"
    \override #'(flag-style . old-straight-flag)
    \show-note-styles #'(default)
  }
}

\markup {
  \column {
    \combine \null \vspace #1
    \underline "Flat-flag:"
    \override #'(flag-style . flat-flag)
    \show-note-styles #'(default)
  }
}

\markup {
  \column {
    \combine \null \vspace #1
    \underline "default-flag:"
    \override #'(flag-style . default)
    \show-note-styles #'(default mensural)
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
