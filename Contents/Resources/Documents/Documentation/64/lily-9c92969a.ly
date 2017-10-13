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
\sourcefileline 2990
\header {
  title = "Jesu, meine Freude"
  composer = "J S Bach"
}
keyTime = { \key c \minor \time 4/4 }
ManualOneVoiceOneMusic = \relative {
  g'4 g f ees |
  d2 c |
}
ManualOneVoiceTwoMusic = \relative {
  ees'16 d ees8~ 16 f ees d c8 d~ d c~ |
  8 c4 b8 c8. g16 c b c d |
}
ManualTwoMusic = \relative {
  c'16 b c8~ 16 b c g a8 g~ 16 g aes ees |
  f16 ees f d g aes g f ees d ees8~ 16 f ees d |
}
PedalOrganMusic = \relative {
  r8 c16 d ees d ees8~ 16 a, b g c b c8 |
  r16 g ees f g f g8 c,2 |
}

\score {
  <<  % PianoStaff と Pedal Staff を同時進行させる必要があります
    \new PianoStaff <<
      \new Staff = "ManualOne" <<
        \keyTime  % 調号と拍子記号をセットします
        \clef "treble"
        \new Voice {
          \voiceOne
          \ManualOneVoiceOneMusic
        }
        \new Voice {
          \voiceTwo
          \ManualOneVoiceTwoMusic
        }
      >>  % ManualOne Staff コンテキストの終了
      \new Staff = "ManualTwo" \with {
        \override VerticalAxisGroup.staff-staff-spacing.stretchability = 5
      } <<
        \keyTime
        \clef "bass"
        \new Voice {
          \ManualTwoMusic
        }
      >>  % ManualTwo Staff コンテキストの終了
    >>  % PianoStaff コンテキストの終了
    \new Staff = "PedalOrgan" <<
      \keyTime
      \clef "bass"
      \new Voice {
        \PedalOrganMusic
      }
    >>  % PedalOrgan Staff コンテキストの終了
  >>
}  % Score コンテキストの終了



% ****************************************************************
% end ly snippet
% ****************************************************************