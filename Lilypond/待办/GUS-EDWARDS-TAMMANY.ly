\version "2.20.0"
\language "english"

\header {
  title = "TAMMANY"
  subtitle = "TWO-STEP"
  subsubtitle = "Intro:Della"
  composer = "GUS EDWARDS"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4landscape")
}

global = {
  \key c \major
  \time 2/4
  \tempo "Tempo di Marcia"
}

right = \relative {
  \global
  a''8 [d, d d]
  a [d, d] <c-> d fs>
  <b d g> r8 <d-> f g b>4
  <c e g c>8 g'16 g g8 g \bar "||"
  
}

left = \relative {
  \global
  % 乐谱接在此处。
  
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
