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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/markup-note.ly"
\sourcefileline 0
\header {

  texidoc = "The note markup function may be used to make metronome
 markings. It works for a variety of flag, dot and duration settings."
}
\version "2.12.0"

\relative c''
{
  c4^\markup {
    \note #"1" #1
    \note #"2" #1
    \note #"4" #1
    \note #"8" #1
    \note #"16" #1
    \note #"32" #1
    \note #"64" #1

    \note #"1" #-1
    \note #"2" #-1
    \note #"4" #-1
    \note #"8" #-1
    \note #"16" #-1
    \note #"32" #-1
    \note #"64" #-1

    \note #"1." #-1
    \note #"2." #-1
    \note #"4." #-1
    \note #"8." #-1
    \note #"16." #-1
    \note #"32." #-1
    \note #"64." #-1

    \note #"1." #1
    \note #"2." #1
    \note #"4." #1
    \note #"8." #1
    \note #"16." #1
    \note #"32." #1
    \note #"64." #1

    \override #'(style . cross)
    { \note-by-number #2 #1 #1
      \note-by-number #2 #1 #-1
    } 
    \override #'(style . triangle)
    { \note-by-number #2 #1 #1
      \note-by-number #2 #1 #-1
    }

  }

  \override NoteHead #'style = #'triangle
  c4 a
} 



% ****************************************************************
% end ly snippet
% ****************************************************************