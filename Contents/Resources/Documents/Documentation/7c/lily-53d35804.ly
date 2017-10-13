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
\sourcefilename "engravers-one-by-one.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.19.46"

\header {
%% Translation of GIT committish: 7c5fcff15f69f2e758d346bea43f226218c4da70
  texidoces = "
Del problema central de la notación, esto es, crear un determinado
símbolo, se encargan los «plugins» o complementos añadidos.  Cada
uno de los complementos se conoce como un grabador. En este
ejemplo, los grabadores se van activando uno por uno, en el orden
siguiente:

- cabeza de las notas,

- el símbolo del pentagrama,

- clave,

- plicas,

- barras, ligaduras de expresión, acentos,

- alteraciones, líneas divisorias, indicación del compás, y armadura.

Los grabadores se encuentran agrupados. Por ejemplo, las cabezas de
nota, ligaduras de expresión, barras de corchea, etc. forman un
contexto de voz, @code{Voice}. Los grabadores de la armadura,
alteraciones, líneas de compás, etc. forman un contexto de pentagrama,
@code{Staff}.

"
  doctitlees = "Los grabadores, uno por uno"

%% Translation of GIT committish: db92af51a444062c8edaef3afa36f57375b8feeb
  texidocfr = "
Pour appréhender la notation, nous l'avons disséquée en éléments
simples : chaque type de symbole est géré par un module différent.
Chaque module est appelé « graveur ».  Dans cet exemple, chaque graveur
est appelé à son tour, dans l'ordre suivant :

-- têtes de note,

-- symboles de la portée,

-- clef,

-- hampes,

-- ligatures, liaisons, accents,

-- altérations, barres de mesure, métrique et armure.

Les graveurs se regroupent.  Par exemple, têtes de note, liaisons,
ligature, etc. forment un contexte de voix (@code{Voice}).  Les
graveurs chargés de la métrique, des altérations, des barres de
mesure, etc. forment un contexte de portée (@code{Staff}).

"
  doctitlefr = "Les graveurs un par un"

  lsrtags = "contexts-and-engravers, specific-notation"

  texidoc = "
The notation problem, creating a certain symbol, is handled by plugins.
 Each plugin is called an Engraver. In this example, engravers are
switched on one by one, in the following order:

- note heads,


- staff symbol,


- clef,


- stem,


- beams, slurs, accents,


- accidentals, bar lines, time signature and key signature.



Engravers are grouped. For example, note heads, slurs, beams etc. form
a @code{Voice} context. Engravers for key signature, accidentals, bar
line, etc. form a @code{Staff} context.

"
  doctitle = "Engravers one-by-one"
} % begin verbatim

%% sample music
topVoice = \relative c' {
  \key d \major
  es8([ g] a[ fis])
  b4
  b16[-. b-. b-. cis-.]
  d4->
}

botVoice = \relative c' {
  \key d \major
  c8[( f] b[ a)]
  es4
  es16[-. es-. es-. fis-.]
  b4->
}

hoom = \relative c {
  \key d \major
  \clef bass
  g8-. r
  r4
  fis8-.
  r8
  r4
  b'4->
}

pah = \relative c' {
  r8 b-.
  r4
  r8 g8-.
  r16 g-. r8
  \clef treble
  fis'4->
}

%
% setup for Request->Element conversion. Guru-only
%

MyStaff = \context {
  \type "Engraver_group"
  \name Staff

  \description "Handles clefs, bar lines, keys, accidentals.  It can contain
@code{Voice} contexts."

  \consists "Font_size_engraver"

  \consists "Volta_engraver"
  \consists "Separating_line_group_engraver"
  \consists "Dot_column_engraver"

  \consists "Ottava_spanner_engraver"
  \consists "Rest_collision_engraver"
  \consists "Piano_pedal_engraver"
  \consists "Piano_pedal_align_engraver"
  \consists "Instrument_name_engraver"
  \consists "Grob_pq_engraver"
  \consists "Forbid_line_break_engraver"
  \consists "Axis_group_engraver"

  \consists "Pitch_squash_engraver"

  localAlterations = #'()

  % explicitly set instrumentName, so we don't get
  % weird effects when doing instrument names for
  % piano staves

  instrumentName = #'()
  shortInstrumentName = #'()

  \accepts "Voice"
  \defaultchild "Voice"
}


MyVoice = \context {
  \type "Engraver_group"
  \name Voice

  \description "
    Corresponds to a voice on a staff.  This context handles the
    conversion of dynamic signs, stems, beams, super- and subscripts,
    slurs, ties, and rests.

    You have to instantiate this explicitly if you want to have
    multiple voices on the same staff."

  localAlterations = #'()
  \consists "Font_size_engraver"

  % must come before all
  \consists "Arpeggio_engraver"
  \consists "Multi_measure_rest_engraver"
  \consists "Text_spanner_engraver"
  \consists "Grob_pq_engraver"
  \consists "Note_head_line_engraver"
  \consists "Glissando_engraver"
  \consists "Ligature_bracket_engraver"
  \consists "Breathing_sign_engraver"
  % \consists "Rest_engraver"
  \consists "Grace_beam_engraver"
  \consists "New_fingering_engraver"
  \consists "Chord_tremolo_engraver"
  \consists "Percent_repeat_engraver"
  \consists "Slash_repeat_engraver"

  %{
    Must come before text_engraver, but after note_column engraver.
  %}
  \consists "Text_engraver"
  \consists "Dynamic_engraver"
  \consists "Dynamic_align_engraver"
  \consists "Fingering_engraver"

  \consists "Script_column_engraver"
  \consists "Rhythmic_column_engraver"
  \consists "Cluster_spanner_engraver"
  \consists "Tie_engraver"
  \consists "Tie_engraver"
  \consists "Tuplet_engraver"
  \consists "Note_heads_engraver"
  \consists "Rest_engraver"
}


\score {
  \topVoice
  \layout {
    \context { \MyStaff }
    \context { \MyVoice }
  }
}


MyStaff = \context {
  \MyStaff
  \consists "Staff_symbol_engraver"
}

\score {
  \topVoice
  \layout {
    \context { \MyStaff }
    \context { \MyVoice }
  }
}

MyStaff = \context {
  \MyStaff
  \consists "Clef_engraver"
  \remove "Pitch_squash_engraver"
}

\score {
  \topVoice
  \layout {
    \context { \MyStaff }
    \context { \MyVoice }
  }
}

MyVoice = \context {
  \MyVoice
  \consists "Stem_engraver"
}

\score {
  \topVoice
  \layout {
    \context { \MyStaff }
    \context { \MyVoice }
  }
}

MyVoice = \context {
  \MyVoice
  \consists "Beam_engraver"
}

\score {
  \topVoice
  \layout {
    \context { \MyStaff }
    \context { \MyVoice }
  }
}

MyVoice = \context {
  \MyVoice
  \consists "Phrasing_slur_engraver"
  \consists "Slur_engraver"
  \consists "Script_engraver"
}


\score {
  \topVoice
  \layout {
    \context { \MyStaff }
    \context { \MyVoice }
  }
}

MyStaff = \context {
  \MyStaff
  \consists "Bar_engraver"
  \consists "Time_signature_engraver"
}

\score {
  \topVoice
  \layout {
    \context { \MyStaff }
    \context { \MyVoice }
  }
}

MyStaff = \context {
  \MyStaff
  \consists "Accidental_engraver"
  \consists "Key_engraver"
}
\score {
  \topVoice
  \layout {
    \context { \MyStaff }
    \context { \MyVoice }
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************