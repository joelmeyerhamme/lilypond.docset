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
\sourcefilename "single-staff-template-with-only-notes.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 8ffecf6be17c6ec2ff87cf31873121a8cce29b09
  texidoces = "
Esta plantilla simple prepara un pentagrama con notas, adecuado para
un instrumento solista o un fragmento melódico. Córtelo y péguelo en
un archivo, escriba las notas y ¡ya está!

"
  doctitlees = "Plantilla de un solo pentagrama, con notas únicamente"

%% Translation of GIT committish: fabcd22c8f88ea9a87241597f1e48c0a9adbfc6e
  texidocja = "
これは音符を持つ譜を提供するとても簡単なテンプレートであり、ソロの楽器や@c
旋律の楽譜断片に適しています。これをファイルにカット＆ペーストして、音符@c
を付け加えれば完了です！
"
  doctitleja = "音符だけを持つ単一譜のテンプレート"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Questo modello molto semplice mette a disposizione un rigo con delle note ed è
quindi adatto per uno strumento non accompagnato o per un frammento
melodico. Copialo e incollalo in un file, aggiungi le note e hai finito!

"
  doctitleit = "Modello di rigo singolo con solo note"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Das erste Beispiel zeigt ein Notensystem mit Noten, passend für ein
Soloinstrument oder ein Melodiefragment. Kopieren Sie es und fügen
Sie es in Ihre Datei ein, schreiben Sie die Noten hinzu, und Sie haben
eine vollständige Notationsdatei.
"

  doctitlede = "Vorlage für ein Notensystem"


%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Cet exemple simpliste se compose d'une portée agrémentée de quelques
notes.  Il convient tout à fait pour un instrument seul ou un
fragment mélodique.  Recopiez-le dans un nouveau fichier, ajoutez-y
d'autres notes et c'est prêt !

"
  doctitlefr = "Portée unique avec quelques notes"

  lsrtags = "really-simple, template"

  texidoc = "
This very simple template gives you a staff with notes, suitable for a
solo instrument or a melodic fragment. Cut and paste this into a file,
add notes, and you're finished!

"
  doctitle = "Single staff template with only notes"
} % begin verbatim

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
}

\score {
  \new Staff \melody
  \layout { }
  \midi { }
}



% ****************************************************************
% end ly snippet
% ****************************************************************
