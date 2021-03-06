
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/11e-TimeSignatures-CompoundMixed.xml

%% additional definitions required by the score:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Formatting of (possibly complex) compound time signatures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define-public (insert-markups l m)
  (let* ((ll (reverse l)))
    (let join-markups ((markups (list (car ll)))
                       (remaining (cdr ll)))
      (if (pair? remaining)
        (join-markups (cons (car remaining) (cons m markups)) (cdr remaining))
        markups))))

% Use a centered-column inside a left-column, because the centered column 
% moves its reference point to the center, which the left-column undoes. 
% The center-column also aligns its contented centered, which is not undone...
#(define-public (format-time-fraction time-sig-fraction)
  (let* ((revargs (reverse (map number->string time-sig-fraction)))
         (den (car revargs))
         (nums (reverse (cdr revargs))))
    (make-override-markup '(baseline-skip . 0)
      (make-number-markup 
        (make-left-column-markup (list
          (make-center-column-markup (list
            (make-line-markup (insert-markups nums "+"))
            den))))))))

#(define-public (format-complex-compound-time time-sig)
  (let* ((sigs (map format-time-fraction time-sig)))
    (make-override-markup '(baseline-skip . 0)
      (make-number-markup
        (make-line-markup 
          (insert-markups sigs (make-vcenter-markup "+")))))))

#(define-public (format-compound-time time-sig)
  (cond
    ((not (pair? time-sig)) (null-markup))
    ((pair? (car time-sig)) (format-complex-compound-time time-sig))
    (else (format-time-fraction time-sig))))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Measure length calculation of (possibly complex) compound time signatures
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define-public (calculate-time-fraction time-sig-fraction)
  (let* ((revargs (reverse time-sig-fraction))
         (den (car revargs))
         (nums (cdr revargs)))
    (ly:make-moment (apply + nums) den)))

#(define-public (calculate-complex-compound-time time-sig)
  (let* ((sigs (map calculate-time-fraction time-sig)))
    (let add-moment ((moment ZERO-MOMENT)
                     (remaining sigs))
      (if (pair? remaining)
        (add-moment (ly:moment-add moment (car remaining)) (cdr remaining))
        moment))))

#(define-public (calculate-compound-measure-length time-sig)
  (cond
    ((not (pair? time-sig)) (ly:make-moment 4 4))
    ((pair? (car time-sig)) (calculate-complex-compound-time time-sig))
    (else (calculate-time-fraction time-sig))))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Base beat lenth
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define-public (calculate-compound-base-beat-full time-sig)
  (let* ((den (map last time-sig)))
    (apply max den)))

#(define-public (calculate-compound-base-beat time-sig)
  (ly:make-moment 1 (cond
    ((not (pair? time-sig)) 4)
    ((pair? (car time-sig)) (calculate-compound-base-beat-full time-sig))
    (else (calculate-compound-base-beat-full (list time-sig))))))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The music function to set the complex time signature
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

compoundMeter =
#(define-music-function (parser location args) (pair?)
  (let ((mlen (calculate-compound-measure-length args))
        (beat (calculate-compound-base-beat args)))
  #{
\once \override Staff.TimeSignature #'stencil = #ly:text-interface::print
\once \override Staff.TimeSignature #'text = #(format-compound-time $args)
% \set Staff.beatGrouping = #(reverse (cdr (reverse $args)))
\set Timing.measureLength = $mlen
\set Timing.timeSignatureFraction = #(cons (ly:moment-main-numerator $mlen)
                                           (ly:moment-main-denominator $mlen))
\set Timing.beatLength = $beat

% TODO: Implement beatGrouping and auto-beam-settings!!!
#} ))


\header {
    texidoc = "Compound time signatures of
          mixed type: (3+2)/8+3/4."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \key c \major \compoundMeter #'((3 2 8) (3 4)) b8 [ b8
    b8 ] b8 [ b8 ] b4 b4 b4 \bar "|."
    }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>

