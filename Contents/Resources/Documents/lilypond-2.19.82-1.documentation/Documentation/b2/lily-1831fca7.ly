%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,noragged-right,papersize=a6landscape,quote]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(set-paper-size "a6landscape")
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##f
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 757
\book {
  \header {
      % I seguenti campi sono centrati
    dedication = "Dedica"
    title = "Titolo"
    subtitle = "Sottotitolo"
    subsubtitle = "Sottosottotitolo"
      % I seguenti campi sono distribuiti uniformemente su una riga
      % il campo "instrument" appare anche nelle pagine seguenti
    instrument = \markup \with-color #green "Strumento"
    poet = "Poeta"
    composer = "Compositore"
      % I campi seguenti sono posti agli estremi opposti della stessa riga
    meter = "Tempo"
    arranger = "Arrangiatore"
      % I campi seguenti sono centrati in fondo
    tagline = "Lo slogan va in fondo all'ultima pagina"
    copyright = "Il copyright va in fondo alla prima pagina"
  }
  \score {
    { s1 }
    \header {
        % I campi seguenti sono posti agli estremi opposti della stessa riga
      piece = "Brano 1"
      opus = "Opera 1"
    }
  }
  \score {
    { s1 }
    \header {
        % I campi seguenti sono posti agli estremi opposti della stessa riga
      piece = "Brano 2 sulla stessa pagina"
      opus = "Opera 2"
    }
  }
  \pageBreak
  \score {
    { s1 }
    \header {
        % I campi seguenti sono posti agli estremi opposti della stessa riga
      piece = "Brano 3 su una nuova pagina"
      opus = "Opera 3"
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************