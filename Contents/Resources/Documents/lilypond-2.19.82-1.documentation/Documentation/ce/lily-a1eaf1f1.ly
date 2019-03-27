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
\sourcefilename "making-slurs-with-complex-dash-structure.ly"
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
Las ligaduras de expresión se pueden construir con patrones de
discontinuidad complejos mediante la definición de la propiedad
@code{dash-definition}.  @code{dash-definition} es una lista de
@code{elementos de discontinuidad}.  Un @code{elemento de
discontinuidad} es una lista de parámetros que definen el
comportamiento de discontinuidad de un segmento de la ligadura de
expresión.

La ligadura se define en términos del parámetro de bezier t cuyo
rango va de 0 a la izquierda de la ligadura hasta 1 en el extremo
derecho de la ligadura.  Cada @code{elemento de discontinuidad} es
una lista @code{(t-inicio t-final fracción-discontinuidad
período-discontinuidad)}.  La región de la ligadura desde
@code{t-inicio} hasta @code{t-final} tendrá una fracción
@code{fracción-discontinuidad} de cada
@code{período-discontinuidad} de color negro.
@code{período-discontinuidad} se define en términos de espacios de
pentagrama.  @code{fracción-discontinuidad} se establece al valor
de 1 para una ligadura continua.

"
  doctitlees = "Hacer ligaduras de expresión con estructura compleja de discontinuidad"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Le legature di portamento possono avere schemi di tratteggio complessi
definendo la proprietà @code{dash-definition}.  @code{dash-definition} è
una lista di @code{dash-elements}.  Un @code{dash-element} è una lista
di parametri che definiscono il comportamento del tratteggio per un
segmento della legatura.

La legatura di portamento è definita come il parametro t della curva di
bezier che va da 0 sul margine sinistro della legatura fino a 1 su quello
destro.  @code{dash-element}  è una lista di @code{(inizio-t fine-t frazione-trattino
punto-trattino)}.  La regione della legatura di portamento che va da @code{inizio-t} a
@code{fine-t} avrà una frazione @code{frazione-trattino} di ogni
@code{punto-trattino} nero.  @code{punto-trattino} viene definito in spazi
rigo.  @code{frazione-trattino} è impostato su 1 per una legatura di portamento
continua.

"
  doctitleit = "Legature di portamento con complesse strutture di tratteggio"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Legatobögen können mit einem komplizierten Strichelmuster
gesetzt werden, indem die @code{dash-definition}-Eigenschaft
definiert wird.  @code{dash-definition} ist eine Liste bestehend
aus @code{dash-elements}-Elementen.  Ein @code{dash-element} ist
eine Liste an Parametern, die das Strichverhalten für einen
Abschnitt des Legatobogens definieren.

Der Bogen wird nach dem Bezierparameter t definiert, welcher
von 0 am linken Ende des Bogens zu 1 am rechten Ende des Bogens
reicht.  @code{dash-element} ist eine Liste @code{(start-t stop-t dash-Unterbrechung dash-Abschnitt)}.  Die Region des Bogens von @code{start-t}
bis @code{stop-t} hat eine Unterbrechung von @code{dash-Unterbrechung}
von jedem @code{dash-Abschnitt}-Schwarzabschnitt.  @code{dash-Abschnitt} ist in Notenlinienzwischenräumen definiert.
@code{dash-Abschnitt} ist auf 1 für einen durchgehenden Bogen
gesetzt.
"
  doctitlede = "Legatobögen mit kompliziertem Strichelmuster
  definieren"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Grâce à la propriété @code{dash-definition}, une liaison d'articulation
peut être formée de traits discontinus variables.
@code{dash-definition} se compose d'une liste de
@code{segments-discontinus} (@emph{dash-elements}).  Chaque
@code{segment-discontinu} contient une liste de paramètres qui
déterminent le comportement du trait pour une section de la liaison.

Cette liaison se définit selon le paramètre de Bézier @code{t} qui est
compris entre 0 (l'extrémité gauche de la liaison) et 1 (l'extrémité
droite de la liaison).  Chaque @code{segment-discontinu} se composera
selon la liste @code{(t-début t-fin segment-style segment-taille)}.
La portion de liaison allant de @code{t-début} à @code{t-fin} aura un
trait @code{segment-style} de longueur @code{segment-taille}.
@code{segment-taille} est exprimé en espace de portée ; un
@code{segment-style} à 1 donnera un trait plein.

"
  doctitlefr = "Dessin d'une liaison d'articulation au trait discontinu"

  lsrtags = "expressive-marks, rhythms"

  texidoc = "
Slurs can be made with complex dash patterns by defining the
@code{dash-definition} property.  @code{dash-definition} is a list of
@code{dash-elements}.  A @code{dash-element} is a list of parameters
defining the dash behavior for a segment of the slur.

The slur is defined in terms of the bezier parameter t which ranges
from 0 at the left end of the slur to 1 at the right end of the slur.
@code{dash-element} is a list @code{(start-t stop-t dash-fraction
dash-period)}.  The region of the slur from @code{start-t} to
@code{stop-t} will have a fraction @code{dash-fraction} of each
@code{dash-period} black.  @code{dash-period} is defined in terms of
staff spaces.  @code{dash-fraction} is set to 1 for a solid slur.

"
  doctitle = "Making slurs with complex dash structure"
} % begin verbatim

\relative c' {
  \once \override
    Slur.dash-definition = #'((0 0.3 0.1 0.75)
                                (0.3 0.6 1 1)
                                (0.65 1.0 0.4 0.75))
  c4( d e f)
  \once \override
    Slur.dash-definition = #'((0 0.25 1 1)
                                (0.3 0.7 0.4 0.75)
                                (0.75 1.0 1 1))
  c4( d e f)
}



% ****************************************************************
% end ly snippet
% ****************************************************************