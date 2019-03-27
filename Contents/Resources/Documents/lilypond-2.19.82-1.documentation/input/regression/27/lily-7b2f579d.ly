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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/span-bar-allow-span-bar.ly"
\sourcefileline 0

\version "2.19.21"

\header {
  texidoc = "The @code{SpanBarStub} grob takes care of horizontal spacing
for @code{SpanBar} grobs.  When the @code{SpanBar} is disallowed, objects
in contexts that the span bar would have otherwise crossed align as if the
span bar were not there.
"
}

<<
  \new Staff {
    \repeat unfold 64 { c''8 }
  }
  \new GrandStaff <<
    \new Staff
      \new Voice = "upper"
        \relative {
          c''2 c c c
          \once \override Staff.BarLine.allow-span-bar = ##f
          c2 c c c
          c2 c c c
          \once \override Staff.BarLine.allow-span-bar = ##f
          c2 c c c
        }
    \new Lyrics \lyricsto "upper" {
      long-syllable a b c long-syllable a b c
      long-syllable a b c long-syllable a b c
    }

    \new Staff
      \new Voice = "middle"
        \relative {
          c''2 c c c
          c2 c c c
          c2 c c c
          \once \override Staff.BarLine.allow-span-bar = ##f
          c2 c c c
        }
    \new Lyrics \lyricsto "middle" {
      syllable a b c syllable a b c
      syllable a b c syllable a b c
    }

    \new Staff
      \new Voice = "lower"
        \relative {
          c''2 c c c
          c2 c c c
          c2 c c c
          c2 c c c
        }
    \new Lyrics \lyricsto "lower" {
      word a b c word a b c
      word a b c word a b c
    }
  >>
>>



% ****************************************************************
% end ly snippet
% ****************************************************************