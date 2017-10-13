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
\sourcefilename "adding-links-to-objects.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: ff9ca62acddb818b7788d7818a5c7eb0ddb6cdcb
  texidoces = "
Para añadir un enlace al sello de un objeto gráfico, podemos usar
@code{add-link} tal y como se define aquí.  FUnciona con
@code{\\override} y con @code{\\tweak}.  Inconveniente:
@code{point-and-click} (apuntar y pulsar) quedará obstacuilzado por
los objetos gráficos enlazados.

Limitación: funciona solamente para PDF.

Los objetos enlazados se colorean con una instrucción aparte.

"
  doctitlees = "Añadir enlaces a los objetos"

%% Translation of GIT committish: 08c1ead90d9f49e66ce54208639fb9ef48ca52a6
  texidocfr = "
La fonction @code{add-link}, telle que définie ci-dessous, permet
d'ajouter un lien au stencil d'un objet graphique.  Elle s'emploie
au sein d'un @code{\\override} ou d'un @code{\\tweak}.  À noter
que le fonctionnemment du @code{point-and-click} est perturbé sur
les objets ainsi liés.

Cette fonction n'est opérationnelle que pour une sortie PDF.

La coloration des objets liés s'obtient par une commande séparée.

"
  doctitlefr = "Ajout de liens à des objets"

  lsrtags = "editorial-annotations, scheme-language, tweaks-and-overrides"

  texidoc = "
To add a link to a grob-stencil you could use @code{add-link} as
defined here. Works with @code{\\override} and @code{\\tweak}.
Drawback: @code{point-and-click} will be disturbed for the linked grobs.

Limitation: Works for PDF only.

The linked objects are colored with a separate command.

"
  doctitle = "Adding links to objects"
} % begin verbatim

#(define (add-link url-strg)
  (lambda (grob)
    (let* ((stil (ly:grob-property grob 'stencil)))
      (if (ly:stencil? stil)
        (begin
          (let* (
             (x-ext (ly:stencil-extent stil X))
             (y-ext (ly:stencil-extent stil Y))
             (url-expr (list 'url-link url-strg `(quote ,x-ext) `(quote ,y-ext)))
             (new-stil (ly:stencil-add
                 (ly:make-stencil url-expr x-ext y-ext) stil)))
          (ly:grob-set-property! grob 'stencil new-stil)))
        #f))))

%%%% test

urlI =
"http://lilypond.org/doc/v2.14/Documentation/notation/writing-pitches"

urlII =
"http://lilypond.org/doc/v2.14/Documentation/notation/rhythms"

urlIII =
"http://lilypond.org/doc/v2.14/Documentation/notation/note-heads"

urlIV =
"http://lilypond.org/doc/v2.14/Documentation/notation/beams"

urlV =
"http://lilypond.org/doc/v2.14/Documentation/notation/note-head-styles"

\relative c' {
  \key cis \minor

  \once \override Staff.Clef.color = #green
  \once \override Staff.Clef.after-line-breaking =
    #(add-link urlI)

  \once \override Staff.TimeSignature.color = #green
  \once \override Staff.TimeSignature.after-line-breaking =
    #(add-link urlII)

  \once \override NoteHead.color = #green
  \once \override NoteHead.after-line-breaking =
    #(add-link urlIII)

  cis'1
  \once \override Beam.color = #green
  \once \override Beam.after-line-breaking =
    #(add-link urlIV)
  cis8 dis e fis gis2
  <gis,
   % With 2.17.9 you could use the command below to address the Accidental.
   % \tweak Accidental.before-line-breaking #(add-link url)
   \tweak color #green
   \tweak after-line-breaking #(add-link urlV)
   \tweak style #'harmonic
   bis
   dis
   fis
  >1
  <cis, cis' e>
}



% ****************************************************************
% end ly snippet
% ****************************************************************