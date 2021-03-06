%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=6\in,quote,ragged-right]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 6\in
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 6\in - 2.0 * 10.16\mm
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
\sourcefileline 4016
rhMusic = \relative {
  \new Voice {
    r2 c''4.\( g8 |
    \once \override Tie.staff-position = #3.5
    bes1~ |
    \bar "||"
    \time 6/4
    bes2.\tempo "Moderato" r8
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    % 4 つのボイスの多声セクションの開始
    <<
      { c,8 d fis bes a }  % メイン ボイスの続き
      \new Voice {
        \voiceTwo
        c,8~
        % マージされる音符の右にある c2 を再配置します
        \once \override NoteColumn.force-hshift = #1.0
        % c2 をメインの音符列から外したため、マージが機能します
        \shiftOnn
        c2
      }
      \new Voice {
        \voiceThree
        s8
        % マージさせるために d2 の符幹を下向きにする必要があります
        \stemDown
        % d2 の符幹を不可視にします
        \tweak Stem.transparent ##t
        d2
      }
      \new Voice {
        \voiceFour
        s4 fis4.
      }
    >> |
    \mergeDifferentlyHeadedOff
    \mergeDifferentlyDottedOff
    g2.\)  % メイン ボイスの続き
  }
}

lhMusic = \relative {
  r2 <c' g ees>2( |
  <d g, d>1)\arpeggio |
  r2. d,,4 r4 r |
  r4
}

\score {
  \new PianoStaff <<
    \new Staff = "RH"  <<
      \key g \minor
      \rhMusic
    >>
    \new Staff = "LH" <<
      \key g \minor
      \clef "bass"
      \lhMusic
    >>
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
