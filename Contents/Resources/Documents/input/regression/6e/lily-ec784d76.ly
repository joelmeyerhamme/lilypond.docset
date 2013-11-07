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
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/score-text.ly"
\sourcefileline 0
\version "2.12.0"

\header {

    texidoc = "Markup texts are rendered above or below a score."

}

\paper {
    line-width = #110
}

%% using Book and Score to get text in lilypond-book 
\book {
    \markup {
	\fill-line { "High up above" }
    }
    \score {
	<<
	    \relative {
		\clef bass
		d,2 d c4 bes a2 \break
		c2 c d4 f g2
	    }
	    \addlyrics {
		My first Li -- ly song,
		Not much can go wrong!
	    }
	>>
    }
    \markup {
	%%TODO: make \verse markup.
	\fill-line {
	    \line {
		"2. "
		\column {
		    \line { My next Li-ly verse }
		    \line { Now it's getting worse! }
		}
	    }
	}
    }
    \markup {
	\fill-line {
	    \line {
		"3. "
		\column {
		    \line { My last Li-ly text }
		    \line { See what will be next! }
		}
	    }
	}
    }
}


% ****************************************************************
% end ly snippet
% ****************************************************************
