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
\sourcefilename "clip-systems.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.19.56
\version "2.19.56"

\header {
%% Translation of GIT committish: 3f57efa0cde39bf0642fb6fb3672a19262ceda83
  texidoces = "
Este código muestra cómo recortar (extraer) fragmentos a partir de una
partitura completa.

Este archivo tiene que procesarse de forma separada con la opción
@option{-dclip-systems}; la página de fragmentos de código podría no
mostrar el resultado adecuadamente.

La salida consiste en archivos con los nombres
@samp{base-from-inicio-to-final[-número].eps}.


Si se incluyen los comienzos y finales de los sistemas, incluyen las
dimensiones del grob del sistema, por ejemplo los nombres de
instrumento.


Las notas de adorno en el punto final de la región no se incluyen.


Las regiones pueden abarcar varios sistemas.  En este caso, se generan
varios archivos EPS.

"
  doctitlees = "Recorte de sistemas"

%% Translation of GIT committish: de694eef021e3c38119b08370f79809bffc52a9b
  texidocfr = "
Le code ci-dessous permet de réaliser des découpes à l'emporte pièce,
autrement dit d'extraire des fragments, au sein d'une partition.

Dans la mesure où le rendu inclus dans ce manuel pourrait ne pas être
des plus évidents, nous vous conseillons de traiter ce fichier
individuellement, avec l'option @code{-dclip-systems}.

Les fichiers résultants sont de la forme
@samp{base-from-début-to-fin[-compteur].eps}.


Lorsque sont inclus le début ou la fin d'un système, l'extraction
comportera les objets rattachés au système, comme le nom d'instrument.

Les notes d'ornement qui se trouveraient en fin de fragment ne sont pas
incluses.

La découpe peut couvrir plusieurs systèmes, auquel cas seront générés
plusieurs fichiers EPS.

"
  doctitlefr = "Découpe de systèmes"

  lsrtags = "paper-and-layout"

  texidoc = "
This code shows how to clip (extract) snippets from a full score.

This file needs to be run separately with @code{-dclip-systems}; the
snippets page may not adequately show the results.

The result will be files named
@samp{base-from-start-to-end[-count].eps}.


If system starts and ends are included, they include extents of the
System grob, e.g., instrument names.


Grace notes at the end point of the region are not included.


Regions can span multiple systems.  In this case, multiple EPS files
are generated.

"
  doctitle = "Clip systems"
} % begin verbatim

#(ly:set-option 'clip-systems)
#(define output-suffix "1")

origScore = \score {
  \relative c' {
    \new Staff \with { instrumentName = "Instrument" } % begin verbatim

    c1
    d1
    \grace c16 e1
    \key d \major
    f1 \break
    \clef bass
    g,1
    fis1
  }
}

\book {
  \score {
    \origScore
    \layout {
      % Each clip-region is a (START . END) pair
      % where both are rhythmic-locations.

      % (make-rhythmic-locations BAR-NUMBER NUM DEN)
      % means NUM/DEN whole-notes into bar numbered BAR-NUMBER

      clip-regions = #(list
      (cons
       (make-rhythmic-location 2 0 1)
       (make-rhythmic-location 4 0 1))

      (cons
       (make-rhythmic-location 0 0 1)
       (make-rhythmic-location 4 0 1))

      (cons
       (make-rhythmic-location 0 0 1)
       (make-rhythmic-location 6 0 1))
      )
    }
  }
}

#(ly:set-option 'clip-systems #f)
#(define output-suffix #f)

\book {
  \score { \origScore }
  \markup { \bold \fontsize #6 clips }
  \score {
    \lyrics {
      \markup { from-2.0.1-to-4.0.1-clip.eps }
      \markup {
        \epsfile #X #30.0 #(format #f "~a-1-from-2.0.1-to-4.0.1-clip.eps"
                            (ly:parser-output-name)) }
    }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
