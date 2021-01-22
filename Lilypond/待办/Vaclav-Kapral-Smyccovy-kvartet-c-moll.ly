\version "2.20.0"
\language "english"

\header {
  dedication = "Věnováno Moravskému kvartetu"
  title = "Smyčcový kvartet c-moll."
  subtitle = "I."
  composer = "Václav Kaprál"
  arranger = \markup{ \italic "(Komp. v srpnu 1925)"}
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key c \major
  \time 4/4
  \tempo "Allegro Moderato" 4=112
}

violinI = \relative c'' {
  \global
  r8 bf4^> \ff fs8 _\markup { \center-align \italic "molto espr."} g4.^> \> a8 \!
  
}

violinII = \relative c' {
  \global

  r4
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 3/32)
  \set beatStructure = 64,64,64,64
  \tuplet 3/2 {
    d16-> \ff \downbow [e16 d16 e16 d16 e16] 
    df16-> ( \upbow [ef16 \> df16 ef16 d16 ef16]
    df16^> [ef16 df16 ef16 df16 ef16) \!]
  }
}

viola = \relative c' {
  \global
  r8 bf4^> \ff fs8 _\markup { \center-align \italic "molto espr."} g4.^> \> a8 \!
  
}

cello = \relative c {
  \global
  <g c,>2-> \ff <bf ef,>->
  
}

violinPartI = \new Staff \with {
  instrumentName = "Violino I"
  midiInstrument = "violin"
} \violinI

violinPartII = \new Staff \with {
  instrumentName = "Violino II"
  midiInstrument = "violin"
} \violinII

violaPart = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
} { \clef alto \viola }

celloPart = \new Staff \with {
  instrumentName = "Violoncello"
  midiInstrument = "cello"
} { \clef bass \cello }

\new StaffGroup 
  <<
    \violinPartI
    \violinPartII
    \violaPart
    \celloPart
  >>
  \layout { }
  \midi {
    \tempo 4=112
  }
