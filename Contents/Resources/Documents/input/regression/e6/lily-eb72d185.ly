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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/beam-collision-classic.ly"
\sourcefileline 0
\header {
  texinfo = "Beam collisions from modern works"
  }

\layout {
  ragged-right = ##t
%  debug-beam-scoring = ##t
}

\version "2.19.21"

\new Staff
{
  % Stockhausen (without hemiolas)
  \relative {
    \stemUp
    a''8[ \clef bass es,,,,
	r8 <b' g'>
	\clef G
	gis''']
  }
  r8 r4 |

  % Ligeti 1st etude.
  \relative
  <<
    { g'8[ a b c d] } \\
    { s4. <f, f'>4. }
    >>
  r4.

  % Ligeti 1st etude.
  \relative
  <<
    {
      s4. <g' g'>4.
    } \\
    {
%      \override Beam.inspect-quants = #'(-4 . -3)
      a8[ d e f g]
    }
    >>
  r4.
  
  % Ligeti 1st etude.
  \relative
  <<
    { <d' d'>2. } \\
    { a'8[ b c] }
    >>

  % Schubert morgenlied.
  \clef bass
  \relative {
    a,16[ d fis d a d]
  }
  
}



% ****************************************************************
% end ly snippet
% ****************************************************************