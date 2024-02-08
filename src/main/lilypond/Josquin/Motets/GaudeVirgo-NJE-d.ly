\version "2.24.2"

\header {
  title = "Gaude virgo"
  composer = "Josquin"
}

ficta = { \set suggestAccidentals = ##t }
recta = { \set suggestAccidentals = ##f }

\layout {
  \override Staff.BarLine.allow-span-bar = ##f
  \context {
    \Staff
    \consists Ambitus_engraver
  }
}

superius =
\relative d' {
  \clef treble
  \key d \minor
  \time 2/1
  \override Staff.NoteHead.style = #'baroque

  % Gaude virgo mater Christi

  \ficta
  d\breve d1 d f2. g4 a2 bes2 a bes1 a4 g a1
  d, d d f2. g4 a2 bes a bes1 a4 g a1 r2 d c d1 c4 bes c1 r1
  a a c2. d4 e f e2~e4 c d e f2 e2~e4 c d e f2 e2~e4 d d1 cis2 d \breve~\breve
  R\breve*13

  % Gaude quia tui nati

  r1 d f f e c d d c a bes bes a f g g f2
  c' d f2~f e4 d e1 f2 d f e2~e d1 c4 b c2 a c b2~b a2 c2. b4 g2 a1 gis2 a\breve
  r2 a1 g4 f g2 f d a' bes a1 g4 f g2 f d d' e4 d f2. e4 d2~d cis2 d1
  R\breve*3

  % Gaude Christo ascendente

  r2 a1 b2~b c1 d2~d2 e1 f2~f4 e f d e2 a, b c d e2~e c2 b1 a r
  r e' f d e c d d r e f d e c2. b4 c2 d1 cis2
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  \tuplet 2/3 { d1 r }

  % Gaude que post ipsim scandis

  a\breve b1 g a\breve b1 c d~d e r

  % Et est honor tibi

  a,\breve b1 g a\breve b1 c d~d e1 r e\breve f1 d e1. d2 d\breve cis1 \time 2/1 d1. c2 a1

  % Ubi fructus ventris

  c b d a c  b2. c4 d1 e r c b d a c b2. c4  d1 e

  % In perenni gaudi

  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1 e\breve f1 d e1. d2  d\breve cis1 \time 2/1 d\breve r2

  % Alleluja

  d, f2. g4 a2 bes a1 r1 r2 d, f2. g4 a bes a2~a g2 a f' f f1 e4 d cis\breve~\breve\fermata d\breve~\breve
}
altus =
\relative d' {
  \clef treble
  \key d \dorian
  \time 2/1
  \override Staff.NoteHead.style = #'baroque
  R\breve*2
  d\breve d1 d f2. g4 a2 \recta bes2 a \ficta bes1 a4 g a1
  d, d d f2. g4 a2 bes a bes1 a4 g  a \breve
  r1 a a c1~c2 bes2 a g  f2. e4 d2 c d1 e d\breve~\breve
  R\breve*14
  %33
  r1 a' c c bes g a a g\breve
  r1 a  bes bes a f  g g
  \tuplet 3/2 { f1 d2 c e f }
  \tuplet 3/2 { g1 e2 d f g }
  \tuplet 3/2 { a1 e g }
  \tuplet 3/2 { f c d }
  e\breve
  c1. b4 a
  b2 a r
  a' bes a1 g4 f g2 f d a'  bes a1 g4 f g2 f d2. f4 e1 d
  R\breve*3
  %57
  r1 d e f g a b cis d2 a b c2~c4 b a1 gis2 \[ a1 d, \] b' c a b g a a r
  b c a b g a a\breve
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  f\breve. r1
  d\breve  e1 c d~d e f g1. f2 a1
  r1 d,\breve e1 c d~d e1 f g1. f2 a1
  r a\breve b1 g a a a\breve
  \time 2/1
  f1
  r f e g d f e2. f4 g1 a
  r f e g d f e2. f4 g1 a\breve
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  r1 a\breve b1 g a a a\breve
  \time 2/1
  f1 r2 d f2. g4 a2 bes a d, f2. g4  a bes a1 g2 a\breve
  r2 d, f2. g4 a bes a1 g2 a\breve~\breve\fermata a\breve~\breve
}
tenor =
\relative d {
  \clef "treble_8"
  \key d \dorian
  \time 2/1
  \override Staff.NoteHead.style = #'baroque
  R\breve*16  %17
  r1 d f1 g a2 d, d'2. c4 a2 c \ficta bes1 a1  %21
  r2 d, f1 g a2 d, d'2. c4 a2 c bes1 a2 f g d4 e f g a1 g2 a1  %27
  c d e   a,4 b c d e d f2  a,4 b c d e d f2~f4 e d1 cis2 d\breve~\breve  %34
  c1. bes4 a g\breve
  r2 c d f2~f2 e4 d e2 d~d2 c4 bes a2 d g,\breve d'2 %40
  a bes d2~d c4 b c2 g a1 a g  %43
  r2 d' e1 e d r2 a b1 b \[ a\breve d \]
  R\breve*4  %53
  r2 a1 b2~b c1 d2~d e1 f2~f4 e f d e1 d r
  R\breve*4  %62
  r1 r2 e2~e f1 d2~d e1 c2~c d1 b2~2 c2. a4 \[ a2~a f'1 \] d2~d e1 c2~c d1 b2~b c2. a4 f'2~4 e f d e1
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  d\breve.
  R\breve.*8  %81
  c\breve d1 b c\breve d1 e\breve
  \time 2/1
  d1 r d c2 e2~e2 b1 d2~d a2. b4 c2 d e f1 e2 c d2. c4 a2 e'1 b2~b d1 a2~a4 b c2 d e f1 e %94
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  c\breve d1 b c\breve d1 e\breve
  \time 2/1
  d\breve. %97
  r2 d f2. g4 a2 d, r f1 e4 d c2 d a f'2 ~f e4 d c2 d a2. b4 c2 d e f1 e4 d e\breve\fermata d\breve~\breve

}
bassus =
\relative d {
  \clef bass
  \key d \dorian
  \time 2/1
  \override Staff.NoteHead.style = #'baroque
  R\breve*18
  r1 d f g a2 d, d'2. c4 a2 c \ficta bes1 a r2 d,2 f1 g a2 d, d'2. c4 a2 c bes1 a %25
  r2 f2~2 g1 a2~4 g4 a bes g2 a2~4 g4 a bes g2 a f g e1 d\breve~\breve %31
  r1 a' bes bes a f g g f\breve
  R
  r1 d e e  d a' bes bes a r2 e f1 f e\breve %46
  r2 a1 g4 f g2 f d1 %48
  R\breve*4
  r1 d e f g a b cis d\breve %57
  R\breve*5
  a1 bes g a f g \[ e a \] \[ d, d' \] g, a f g e f2. g4  a2 d, a'1 %71
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  d,\breve.~\breve.
  R\breve.*7
  a'\breve f1 g e \[ f d \] a'\breve %83
  \time 2/1
  d,\breve
  r1 a' e2 g1 d2~2 d2 a'1 g2. f4 \[ d1 a' \]
  r2 d, a'2. g4 e2 g2~2 d1 d2 a'1 g2. f4 \[ d1 a' \]
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  a\breve f1 g e \[ f d \] a'\breve
  \time 2/1
  d,\breve~\breve
  r1 r2 d f2. g4 a2 bes a d, f2. g4 a2 bes a d, f2. g4 a2 bes a\breve~\breve\fermata d,\breve~\breve
  \bar "|."
}

\score {
  \new StaffGroup
    <<
      \new Staff \with {
        instrumentName = "Superius"
        shortInstrumentName = "S"
      }
      \superius
      \addlyrics {
        Gau -- de vir -- go _ _  ma -- ter Chris -- _ _ ti,
        Que per au -- rem _ _ con -- ce -- pis -- _ _ ti, con -- ce -- pis -- _ _ ti,
        Ga -- bri -- e -- _ _ _ _ _ _ _ _ _ _ _ _ _ le _ nun -- ti -- o.
        Gau -- de, qui -- a tu -- i na -- ti,
        Quem do -- le -- bas mor -- tem pa -- ti, mor -- tem pa -- _ _ _ ti,
        mor -- tem pa -- _ _ _ ti, mor -- tem pa -- _ _ _ _ _ _ ti,
        Ful -- _ _ _ _ get re -- sur -- rec -- _ _ _ ti -- o, re -- sur -- _ rec -- _ _ ti -- o.
        Et in ce -- lum te vi -- _ _ _ den -- _ te, te vi -- den -- _ _ te,
        Mo -- tu fer -- tur pro -- pri -- o,
        mo -- tu fer -- tur pro -- _ _ _ pri -- o.
        Gau -- de, que post ip -- sim scan -- dis,
        Et est ho -- nor ti -- bi gran -- dis
        In ce -- li pa -- _ la -- ti -- o. _ _
        U -- bi fruc -- tus ven -- tris _ tu -- i
        No -- bis de -- tur per te _ fru -- i
        In per -- en -- ni _ gau -- di -- o.
        Al -- le -- _ _ lu -- ja, al -- le -- _ _ _ _ lu -- ja,
        al -- le -- lu -- _ _ _ ja.
      }
      \new Staff \with {
        instrumentName = "Altus"
        shortInstrumentName = "A"
      }
      \altus
      \addlyrics {
        Gau -- de vir -- go _ _  ma -- ter Chris -- _ _ ti,
        Que per au -- rem _ _ con -- ce -- pis -- _ _ ti,
        Ga -- bri -- e -- _ _ _ _ _ _ le nun -- ti -- o.
        Gau -- de, qui -- a tu -- i na -- ti,
        Quem do -- le -- bas mor -- tem pa -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ti,
        Ful -- _ _ _ get re -- sur -- rec -- _ _ _ ti -- o, re -- sur -- rec -- _ _ _ _ _ _ ti -- o.
        Et in ce -- lum te vi -- den -- te, te vi -- den -- _ _ _ te, _
        Mo -- tu fer -- tur pro -- pri -- o, mo -- tu fer -- tur pro -- pri -- o-. _
        Gau -- de, que post ip -- sum scan -- _ dis,
        Et est ho -- nor ti -- bi gran -- _ dis  In ce -- li pa -- la -- ti -- o.
        U -- bi fruc -- tus ven -- tris _ tu -- i
        No -- bis de -- tur per te _ fru -- i
        In per -- en -- ni gau -- di -- o.
        Al -- le -- _ _ lu -- ja, al -- le -- _ _ _ _ _ ja, al -- le -- _ _ _ _ lu -- _ ja.
      }
      \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      }
      \tenor
      \addlyrics {
        Gau -- de, qui -- a _ de -- _ _ o ple -- na,
        Pe -- pe -- ris -- ti _ si -- _ _ ne pe -- na, pe -- _ _ _ _ _ _ _ na,
        Cum pu -- do -- _ _ _ _ _ _ ris li -- _ _ _ _ _ _ _ _ li -- o.
        Gau -- _ _ de, qui -- a tu -- _ _ _ _ _ _ _ i na -- ti,
        Quem do -- le -- _ _ bas mor -- tem pa -- ti,
        mor -- tem pa -- ti, mor -- tem pa -- ti-. _
        Gau -- de, Chris -- to a -- scen -- _ _ _ den -- te.
        Mo -- tu fer -- tur pro -- pri -- o, _ _ _ _
        mo -- tu fer -- tur pro-_ _ _ _ _ _ _ pri -- o.
        In ce -- li pa -- la -- ti -- o. U -- bi fruc -- tus ven -- tris _ _ tu -- _ _ i
        No -- _ _ bis de -- tur per te _ _ fru -- _ _ i
        In per -- en -- ni gau -- di -- o.
        Al le -- _ lu -- ja, al -- _ _ le -- lu -- ja, al -- _ _ le -- lu -- ja, _ _ al -- le -- lu -- _ _ _ ja.
      }
      \new Staff \with {
        instrumentName = "Bassus"
        shortInstrumentName = "B"
      }
      \bassus
      \addlyrics {
        Gau -- de, qui -- a _ de -- _ _ o ple -- na,
        Pe -- pe -- ris -- ti _ si -- _ _ ne pe -- na,
        Cum pu -- do -- _ _ _ ris li -- _ _ _ _ _ _ _ li -- o.
        Gau -- de, qui -- a tu -- i na -- ti,
        Quem do -- le -- bas mor -- tem pa -- ti, mor -- tem pa -- ti,
        Ful -- _ _ _ _ get.
        Gau -- de, Chris -- to a -- scen -- den -- te,
        Mo -- tu fer -- tur pro -- pri -- o, _ _ _ mo -- tu fer -- tur pro -- _ _ _ _ pri -- o.
        In ce -- li pa -- la --  _ ti -- o. U -- bi fruc -- tus ven -- tris tu -- _ i _
        No -- bis _ _ de -- tur per te fru -- _ i _
        In per -- en -- ni gau -- _ di -- o.
        Al -- le -- _ _ lu -- ja, al -- le -- _ _ lu -- ja, al -- le -- _ _ lu -- _ ja.
      }
    >>
}