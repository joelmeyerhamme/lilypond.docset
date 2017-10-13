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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/repeat-sign-layout-size.ly"
\sourcefileline 0
\version "2.19.16"
\header {
  texidoc = "The two dots of a repeat sign should be symmetric
to the staff centre and avoid staff lines even for exotic staves.
Test layout-set-staff-size."
}

\score {
  <<
    \context Staff = "s1" \with {
      \override StaffSymbol.staff-space = #0.5
    } {
      s1 \bar ":|."
    }

    \context Staff = "s2" \with {
      \override StaffSymbol.staff-space = #0.6
    } {
      s1 \bar ":|."
    }

    \context Staff = "s3" {
      s1 \bar ":|."
    }
  >>

  \layout {
    #(layout-set-staff-size 10)
  }
}

\score
{
  <<
    \context Staff = "s1" \with {
      \override StaffSymbol.staff-space = #0.5
    } {
      s1 \bar ":|."
    }

    \context Staff = "s2" \with {
      \override StaffSymbol.staff-space = #0.6
    } {
      s1 \bar ":|."
    }

    \context Staff = "s3" {
      s1 \bar ":|."
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
