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
\sourcefilename "single-staff-template-with-notes-and-lyrics.ly"
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
Esta pequeña plantilla muestra una melodía sencilla con letra. Córtela
y péguela, escriba las notas y luego la letra. Este ejemplo desactiva
el barrado automático, que es lo más frecuente en las partes vocales
antiguas. Para usar el barrado automático modifique o marque como un
comentario la línea correspondiente.

"
  doctitlees = "Plantilla de pentagrama único don notas y letra"

%% Translation of GIT committish: fabcd22c8f88ea9a87241597f1e48c0a9adbfc6e
  texidocja = "
この小さなテンプレートは歌詞を持つ簡単な旋律を表しています。カット＆@c
ペーストして、音符を付け加えて、それから歌詞の単語を付け加えてください。@c
この例は自動ビームを off にしています。これはボーカル パートでは一般的な@c
ことです。自動ビームを使用するには、対応する行を変更するか、コメント
アウトしてください。
"
  doctitleja = "音符と歌詞を持つ単一譜のテンプレート"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Questo piccolo modello presenta una semplice linea melodica con un testo. Copialo
e incollalo, aggiungi le note e le parole. Questo esempio disabilita la
disposizione automatica delle travature, come è consuetudine per le parti
vocali. Per usare la disposizione automatica delle travature, cambia o
commenta la relativa linea di codice.

"
  doctitleit = "Modello di rigo singolo con note e testo"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Das nächste Beispiel zeigt eine einfache Melodie mit Text. Kopieren
Sie es in Ihre Datei, fügen Sie Noten und Text hinzu und übersetzen
Sie es mit LilyPond. In dem Beispiel wird die automatische
Balkenverbindung ausgeschaltet (mit dem Befehl @code{\autoBeamOff}),
wie es für Vokalmusik üblich ist.
Wenn Sie die Balken wieder einschalten wollen, müssen Sie die
entsprechende Zeile entweder ändern oder auskommentieren.
"

  doctitlede = "Vorlage für ein Notensystem mit Noten und Gesangstext"


%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Ce canevas comporte une simple ligne mélodique agrémentée de paroles.
Recopiez-le, ajoutez-y d'autres notes et paroles.  Les ligatures
automatiques sont ici désactivées, comme il est d'usage en matière de
musique vocale.  Pour activer la fonction de ligature automatique,
modifiez ou commentez la ligne en question.

"
  doctitlefr = "Portée unique et paroles"

  lsrtags = "really-simple, template, vocal-music"

  texidoc = "
This small template demonstrates a simple melody with lyrics. Cut and
paste, add notes, then words for the lyrics. This example turns off
automatic beaming, which is common for vocal parts. To use automatic
beaming, change or comment out the relevant line.

"
  doctitle = "Single staff template with notes and lyrics"
} % begin verbatim

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
}

text = \lyricmode {
  Aaa Bee Cee Dee
}

\score{
  <<
    \new Voice = "one" {
      \autoBeamOff
      \melody
    }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}



% ****************************************************************
% end ly snippet
% ****************************************************************