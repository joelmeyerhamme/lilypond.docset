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
\sourcefilename "string-quartet-template-with-separate-parts.ly"
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
El fragmento de código @qq{Plantilla de cuarteto de cuerda} produce un
resultado satisfactorio para el cuarteto, pero ¿y si tenemos que
imprimir las particellas? Esta nueva plantilla muestra cómo usar la
funcionalidad @code{\\tag} (etiqueta) para dividir fácilmente una
pieza en particellas indicviduales.

Tenemos que dividir esta plantilla en archivos independientes; los
nombres de archivo están dentro de los comentarios al principio de
cada archivo. @file{piece.ly} contiene todas las definiciones de
música. Los otros archivos (@file{score.ly}, @file{vn1.ly},
@file{vn2.ly}, @file{vla.ly} y @file{vlc.ly}) producen la particella
correspondiente.

¡No olvide quitar los comentarios que hemos especificado cuando use
los archivos independientes!

"
  doctitlees = "Plantilla de cuarteto de cuerda con particellas independientes"

%% Translation of GIT committish: fabcd22c8f88ea9a87241597f1e48c0a9adbfc6e
  texidocja = "
@qq{弦楽四重奏テンプレート} は適切な弦楽四重奏の楽譜を作り出しますが、@c
個々のパート譜を譜刻する必要がある場合はどうでしょうか？今度の新しい@c
テンプレートは @code{\\tag} 機能を用いて容易に楽曲を個々のパートに分ける@c
方法を示しています。

このテンプレートは別々のファイルに分ける必要があります。ファイル名は各@c
ファイルの開始部分のコメントの中に記述されています。@code{piece.ly} は@c
すべての音楽定義を保持しています。他のファイル - @code{score.ly},
@code{vn1.ly}, @code{vn2.ly}, @code{vla.ly} それに @code{vlc.ly} - は@c
対応するパートを作り出します。


別々のファイルに分ける場合は、指定されたコメントを外すことを忘れないで@c
ください！
"
  doctitleja = "パートを個々に持つ弦楽四重奏テンプレート"

%% Translation of GIT committish: 8ef5f99e63cc9e52c7c0071cde4d99e057d10329
  texidocit = "
Il frammento di codice del @qq{Modello per quartetto d'archi} crea un bel
quartetto, ma cosa fare se si ha bisogno di creare le singole parti? Questo
nuovo modello mostra come usare la funzionalità @code{\\tag} per dividere
facilmente un pezzo in parti staccate.

Occorre dividere questo modello in file separati; i nomi dei file sono
indicati nei commenti all'inizio di ogni file. @code{piece.ly}
contiene tutte le definizioni musicali. Gli altri file – @code{score.ly},
@code{vn1.ly}, @code{vn2.ly}, @code{vla.ly} e @code{vlc.ly} –
creano ciascuna parte.


Non dimenticare di togliere i commenti quando usi i file separati!

"
  doctitleit = "Modello per quartetto d'archi con parti separate"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Mit diesem Beispiel können Sie ein schönes Streichquartett notieren,
aber wie gehen Sie vor, wenn Sie Stimmen brauchen? Das Beispiel
oben hat gezeigt, wie Sie mit Variablen einzelne Abschnitte getrennt
voneinander notieren können. Im nächsten Beispiel wird nun
gezeigt, wie Sie mit diesen Variablen einzelne Stimmen erstellen.

Sie müssen das Beispiel in einzelne Dateien aufteilen; die Dateinamen
sind in den Kommentaren am Anfang jeder Datei enthalten.  @file{piece.ly}
enthält die Noten. Die anderen Dateien -- @file{score.ly},
@file{vn1.ly}, @file{vn2.ly}, @file{vla.ly} und
@file{vlc.ly} -- erstellen daraus die entsprechenden Stimmen bzw. die
Partitur (@file{score.ly}). Mit @code{\tag} wird den Stimmen ein Name
zugewiesen, auf den zurückgegriffen werden kann.
"

  doctitlede = "Vorlage für Streichquartett mit einzelnen Stimmen"


%% Translation of GIT committish: de694eef021e3c38119b08370f79809bffc52a9b
  texidocfr = "
Grâce à ce canevas, vous pouvez obtenir une partition d'excellente
facture pour quatuor à cordes mais aussi, si le besoin s'en faisait
sentir, une partie séparée par instrument.  Par ailleurs, cet exemple
illustre l'utilisation de la fonction @code{\\tag} dans le but
d'extraire des parties séparées.

Il vous faudra découper ce canevas en plusieurs fichiers séparés ; leur
nom respectif est indiqué en commentaire : @file{piece.ly} comporte tout
ce qui a trait à la musique, les autres fichiers -- @file{score.ly},
@file{vn1.ly}, @file{vn2.ly}, @file{vla.ly} et @file{vlc.ly} -- vous
permettront d'obtenir les parties selon le pupitre.

N'oubliez pas de supprimer les commentaires superflus des fichiers
individualisés !

"
  doctitlefr = "Quatuor à cordes, avec parties séparées"

  lsrtags = "preparing-parts, template, unfretted-strings"

  texidoc = "
The @qq{String quartet template} snippet produces a nice string
quartet, but what if you needed to print parts? This new template
demonstrates how to use the @code{\\tag} feature to easily split a
piece into individual parts.

You need to split this template into separate files; the filenames are
contained in comments at the beginning of each file. @code{piece.ly}
contains all the music definitions. The other files – @code{score.ly},
@code{vn1.ly}, @code{vn2.ly}, @code{vla.ly}, and @code{vlc.ly} –
produce the appropriate part.


Do not forget to remove specified comments when using separate files!

"
  doctitle = "String quartet template with separate parts"
} % begin verbatim

%%%%% piece.ly
%%%%% (This is the global definitions file)

global= {
  \time 4/4
  \key c \major
} % begin verbatim



Violinone = \new Voice {
  \relative c'' {
    c2 d e1
    \bar "|."
  }
}


Violintwo = \new Voice {
  \relative c'' {
    g2 f e1
    \bar "|."
  }
}


Viola = \new Voice {
  \relative c' {
    \clef alto
    e2 d c1
    \bar "|."
  }
}


Cello = \new Voice {
  \relative c' {
    \clef bass
    c2 b a1
    \bar "|."
  }
}


music = {
  <<
    \tag #'score \tag #'vn1
    \new Staff \with { instrumentName = "Violin 1" }
    << \global \Violinone >>

    \tag #'score \tag #'vn2
    \new Staff \with { instrumentName = "Violin 2" }
    << \global \Violintwo>>

    \tag #'score \tag #'vla
    \new Staff \with { instrumentName = "Viola" }
    << \global \Viola>>

    \tag #'score \tag #'vlc
    \new Staff \with { instrumentName = "Cello" }
    << \global \Cello >>
  >>
}

% These are the other files you need to save on your computer

% score.ly
% (This is the main file)

% uncomment the line below when using a separate file
%\include "piece.ly"

#(set-global-staff-size 14)

\score {
  \new StaffGroup \keepWithTag #'score \music
  \layout { }
  \midi { }
}


%{ Uncomment this block when using separate files

% vn1.ly
% (This is the Violin 1 part file)

\include "piece.ly"
\score {
  \keepWithTag #'vn1 \music
  \layout { }
}


% vn2.ly
% (This is the Violin 2 part file)

\include "piece.ly"
\score {
  \keepWithTag #'vn2 \music
  \layout { }
}


% vla.ly
% (This is the Viola part file)

\include "piece.ly"
\score {
  \keepWithTag #'vla \music
  \layout { }
}


% vlc.ly
% (This is the Cello part file)

\include "piece.ly"
\score {
  \keepWithTag #'vlc \music
  \layout { }
}

%}



% ****************************************************************
% end ly snippet
% ****************************************************************
