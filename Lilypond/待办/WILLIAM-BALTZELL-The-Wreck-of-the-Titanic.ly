\version "2.20.0"
\language "english"

\header {
  title = "The Wreck of the Titanic"
  subtitle = "Piano Solo"
  composer = "WILLIAM BALTZELL"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "11x17landscape")
}

global = {
  \key fb \major
  \time 4/4
  \tempo "Largo" 4=60
}

right = \relative {
  \global
  <c' e g> <c e g c> <c e g c> <c e g>
  % 第一段未结束，暂时作为停顿以保存进度。
}

left = \relative {
  \global
  <c, c'> <c c'> <c c'> <c c'>
  <f f'> <f f'> <e e'>2 \fermata \bar "||"
  \time 2/4
  c'4. g8(
  c4.) g8(
  c) <e g>
  g, <e' g>
  % 第一段结束。
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
