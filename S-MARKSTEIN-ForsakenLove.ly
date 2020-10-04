\version "2.20.0"
\language "english"

\header {
	title = "ForsakenLove"
	composer = "S.MARKSTEIN"
	% Remove default LilyPond tagline
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
	\key af \major
	\time 4/4
	\partial 4
	\tempo "Andantino Brioso" 4=60
}

right = \relative c'' {
	\global
	<c c'> \fp
	<c-. ef bf'>8 r <c-. ef af> r <c-. ef g> r <af-. c f> r
	<g-. bf df f> r \f <g~ bf~ df ef~>4-^ <g bf df ef>8 <g-. bf ef> <g-. bf d> <g bf ef>
	<g-. bf df g> r <g-. bf df f> r <g-. bf ef> r <g-. bf df> r
	<af c>2.-^ <c ef c'>4 \f
	\break
	<c ef bf'>8 \p r <c ef af> r <c ef g> r <c f> r
	<c ef> \ff r <c-^~ ef g~>4 <c ef g>8 <c ef g> <c es f> <c es g>
	<d f af> r <d f g> r <ef g ef'> r <d f d'> r
	<ef g c>4 r r
	\ottava #1
	\set Staff.ottavation = "8"
	<c' ef c'>
	\break
	<bf df ef bf'>8 \ff \arpeggio r <af c ef af> \arpeggio r <g c ef g> \arpeggio r <f af c f> \arpeggio r
	<g bf df f> r	<g-^~ bf df ef~>4 <g bf df ef>8 <g bf ef> <g bf df> <g bf ef>
	<g bf df g> \arpeggio r <g bf df f> \arpeggio r <g bf ef> \arpeggio r <g bf df> \arpeggio r
	<af~ c~>2 <af c>8
	\ottava #0
	<ef ef'> <d d'> <ef ef'>
	\break
	<gf-. gf'> \ff r <gf-^ ef c a>4 <f-. f'>8 \f r <f-^ d b a>4
	% 注意！
	<e e'>8 \p r <df-^ g, e>4 \f <f, bf df>8 <af af'> <g g'> <f f'>
	<ef af c ef> r <af'c ef af> r <g,, bf df ef> r <ef'' g bf ef> r
	<af, c ef af>2 s4 r4 \bar ":|."
}

left = \relative c' {
	\global
	r4
	af,-. <ef'-. af c> af,-. <ef'-. af c>
	bf <ef g c> ef, <ef' g df'>
	ef, <ef' g df'> ef, <ef' g df'>
	af, <ef' af c> af, <ef' af c>
	
	af, <ef' af c> af, <ef' af c>
	g, <g' c ef> g, <g' c ef>
	b, <g' b d> g, <g' b d>
	<c c,> <g g,>8 <f f,> <ef ef,> <df df,> <c c,> <bf bf,>
	
	<af af,>4 <ef' af c> c <ef af c>
	bf <ef g df'> ef, <ef' g df'>
	ef, <ef' g df'> ef, <ef' g df'>
	af, <ef' af c> af, <ef' af c>
	
	a,8 r <af' c ef g>4 af, <bf' c e g>
	g, <e' g bf df> <f bf df>8 <c, c'>[ <df df'> <d d'>]
	<ef ef'>4 <ef' af c> ef, <ef' g bf>
	<af c>8 <f f,> <ef ef,> <c c,> s4 <af af,>4
}

\score {
	\new PianoStaff \with {
		instrumentName = ""
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
