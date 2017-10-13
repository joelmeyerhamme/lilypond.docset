%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##t
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 2138
melody = \relative {
  \time 2/4
  g'4 g8 b | b a b a |
  g4 g8 b | b a b4 |
}

text = \lyricmode {
  \set stanza = #"1." À la clai- re fon- tai- ne,
  M'en al- lant pro- me- ner...
}

\score{ <<
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" \text
   >>
  \layout { }
}

\markup {
  \fill-line {
    \hspace #0.1 % décalage par rapport à la marge de gauche
     % peut être supprimé si l'espace sur la page est réduit
    \column {
      \line { \bold "2."
        \column {
          "Sous les feuilles d'un chêne"
          "Je me suis fait sécher..."
        }
      }
      % ajout d'espace vertical entre les couplets
      \combine \null \vspace #0.1
      \line { \bold "3."
        \column {
          "Chante, rossignol, chante,"
          "Toi qui as le cœur gai..."
        }
      }
    }
    \hspace #0.1  % ajout d'espace horizontal entre les colonnes
    \column {
      \line { \bold "4."
        \column {
          "J'ai perdu mon ami"
          "Sans l'avoir mérité..."
        }
      }
      % ajout d'espace vertical entre les couplets
      \combine \null \vspace #0.1
      \line { \bold "5."
        \column {
          "Je voudrais que la rose"
          "Fût encore au rosier..."
        }
      }
    }
    \hspace #0.1 % décalage par rapport à la marge de droite
     % peut être supprimé si l'espace sur la page est réduit
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
