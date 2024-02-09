\version "2.24.2"

\header {
  title = "Gaude virgo"
  composer = "Josquin"
}

ficta = { \set Staff.suggestAccidentals = ##t }
recta = { \set Staff.suggestAccidentals = ##f }

alla-breve = {
  \time 2/2
  \set Timing.measureLength = #(ly:make-moment 2/1)
  \tempo 1=80
}

tempus-perfectus = {
  \once \override Staff.TimeSignature.style = #'single-digit
  \set Timing.measureLength = #(ly:make-moment 3/1)
  \time 3/1
  \tempo 1=120
}

superius =
\relative d' {
  \alla-breve

  % Gaude virgo mater Christi

  \ficta
  c\breve c1 c es2. f4 g2 as2 g as1 g4 f g1
  c, c c es2. f4 g2 as g as1 g4 f g1 r2 c bes c1 bes4 as bes1 r1
  g g bes2. c4 d es d2. bes4 c d es2 d2. bes4 c d es2 d2. c4 c1 b2 c \longa
  R\breve*13

  % Gaude quia tui nati

  r1 c es es d bes c c bes g as as g es f f es2
  bes' c es1 d4 c d1 es2 c es d1 c1 bes4 a bes2 g bes a1 g2 bes2. a4 f2 g1 fis2 g\breve
  r2 g1 f4 es f2 es c g' as g1 f4 es f2 es c c' d4 c es2. d4 c1 b2 c1
  R\breve*3

  % Gaude Christo ascendente

  r2 g1 a1 bes1 c1 d1 es2. d4 es c d2 g, a bes c d1 bes2 a1 g r
  r d' es c d bes c c r d es c d bes2. a4 bes2 c1 b2
  \tempus-perfectus
  \tuplet 2/3 { c1 r }

  % Gaude que post ipsim scandis
  g\breve a1 f g\breve a1 bes c\breve d1 r

  % Et est honor tibi

  g,\breve a1 f g\breve a1 bes c\breve d1 r d\breve es1 c d1. c2 c\breve b1
  \alla-breve
  c1. bes2 g1

  % Ubi fructus ventris

  bes a c g bes  a2. bes4 c1 d r bes a c g bes a2. bes4  c1 d

  % In perenni gaudi

  \tempus-perfectus
  d\breve es1 c d1. c2  c\breve b1
  \alla-breve
  c\breve

  % Alleluja

  r2 c, es2. f4 g2 as g1 r1 r2 c, es2. f4 g as g1 f2 g es' es es1 d4 c b\longa\fermata c\longa
}
altus =
\relative d' {
  \alla-breve
  R\breve*2
  c\breve c1 c es2. f4 g2 \recta as2 g \ficta as1 g4 f g1
  c, c c es2. f4 g2 as g as1 g4 f  g \breve
  r1 g g bes1. as2 g f  es2. d4 c2 bes c1 d c\longa
  R\breve*14
  %33
  r1 g' bes bes as f g g f\breve
  r1 g  as as g es  f f
  \tuplet 3/2 { es1 c2 bes d es }
  \tuplet 3/2 { f1 d2 c es f }
  \tuplet 3/2 { g1 d f }
  \tuplet 3/2 { es bes c }
  d\breve
  bes1. a4 g
  a2 g r
  g' as g1 f4 es f2 es c g'  as g1 f4 es f2 es c2. es4 d1 c
  R\breve*3
  %57
  r1 c d es f g a b c2 g a bes2. a4 g1 fis2 \[ g1 c, \] a' bes g a f g g r
  a bes g a f g g\breve
  \tempus-perfectus
  es\breve. r1
  c\breve  d1 bes c\breve d1 es f1. es2 g1
  r1 c,\breve d1 bes c\breve d1 es f1. es2 g1
  r g\breve a1 f g g g\breve
  \alla-breve
  es1
  r es d f c es d2. es4 f1 g
  r es d f c es d2. es4 f1 g\breve
  \tempus-perfectus
  r1 g\breve a1 f g g g\breve
  \alla-breve
  es1 r2 c es2. f4 g2 as g c, es2. f4  g as g1 f2 g\breve
  r2 c, es2. f4 g as g1 f2 g\longa\fermata g\longa
}
tenor =
\relative d {
  \alla-breve
  R\breve*16  %17
  r1 c es1 f g2 c, c'2. bes4 g2 bes \ficta as1 g1  %21
  r2 c, es1 f g2 c, c'2. bes4 g2 bes as1 g2 es f c4 d es f g1 f2 g1  %27
  bes c d   g,4 a bes c d c es2  g,4 a bes c d c es2. d4 c1 b2 c\longa  %34
  bes1. as4 g f\breve
  r2 bes c es1 d4 c d2 c1 bes4 as g2 c f,\breve c'2 %40
  g as c1 bes4 a bes2 f g1 g f  %43
  r2 c' d1 d c r2 g a1 a \[ g\breve c \]
  R\breve*4  %53
  r2 g1 a bes c1 d es2. d4 es c d1 c r
  R\breve*4  %62
  r1 r2 d1 es c d bes c1 a bes2. g4 \[ g1 es' \] c d bes c a bes2. g4 es'2. d4 es c d1
  \tempus-perfectus
  c\breve.
  R\breve.*8  %81
  bes\breve c1 a bes\breve c1 d\breve
  \alla-breve
  c1 r c bes2 d1 a c g2. a4 bes2 c d es1 d2 bes c2. bes4 g2 d'1 a c g2. a4 bes2 c d es1 d %94
  \tempus-perfectus
  bes\breve c1 a bes\breve c1 d\breve
  \alla-breve
  c\breve. %97
  r2 c es2. f4 g2 c, r es1 d4 c bes2 c g es'1 d4 c bes2 c g2. a4 bes2 c d es1 d4 c d\breve\fermata c\longa
}
bassus =
\relative d {
  \alla-breve
  R\breve*18
  r1 c es f g2 c, c'2. bes4 g2 bes \ficta as1 g r2 c,2 es1 f g2 c, c'2. bes4 g2 bes as1 g %25
  r2 es1 f1 g2. f4 g as f2 g2. f4 g as f2 g es f d1 c\longa %31
  r1 g' as as g es f f es\breve
  R
  r1 c d d  c g' as as g r2 d es1 es d\breve %46
  r2 g1 f4 es f2 es c1 %48
  R\breve*4
  r1 c d es f g a b c\breve %57
  R\breve*5
  g1 as f g es f \[ d g \] \[ c, c' \] f, g es f d es2. f4  g2 c, g'1 %71
  \tempus-perfectus
  c,\longa.
  R\breve.*7
  g'\breve es1 f d \[ es c \] g'\breve %83
  \alla-breve
  c,\breve
  r1 g' d2 f1 c c2 g'1 f2. es4 \[ c1 g' \]
  r2 c, g'2. f4 d2 f1 c c2 g'1 f2. es4 \[ c1 g' \]
  \tempus-perfectus
  g\breve es1 f d \[ es c \] g'\breve
  \alla-breve
  c,\longa
  r1 r2 c es2. f4 g2 as g c, es2. f4 g2 as g c, es2. f4 g2 as g\longa\fermata c,\longa
  \bar "|."
}

\score {
  \new ChoirStaff
  <<
    \new Staff \with {
      instrumentName = "Superius"
      shortInstrumentName = "S"
      midiInstrument = "choir aahs"
    }
    {
      \new Voice = superius {
        \incipit { \key d \minor \time 2/2 \relative d' {d\breve d1 d} }
        \clef treble
        \key c \minor
        \superius
      }
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
    }
    \new Staff \with {
      instrumentName = "Altus"
      shortInstrumentName = "A"
      midiInstrument = "choir aahs"
    }
    {
      \new Voice = altus {
        \incipit { \clef "mensural-c1" \key d \dorian \time 2/2 \relative d' {r\longa d\breve d1 d} }
        \clef treble
        \key c \dorian
        \altus
      }
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
    }
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T"
      midiInstrument = "choir aahs"
    }
    {
      \new Voice = tenor {
        \incipit {
          \clef "mensural-c4" \key d \dorian \time 2/2 \relative d {
            r\longa*8
            r\longa*8
            r\longa*8
            r\longa*8
            r\longa*8
            r\longa*8
            r\longa*8
            r\longa*8
            r1 d1 f g
          }
        }
        \clef "treble_8"
        \key c \dorian
        \tenor
      }
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
    }
    \new Staff \with {
      instrumentName = "Bassus"
      shortInstrumentName = "B"
      midiInstrument = "choir aahs"
    }
    {
      \new Voice = bassus {
        \incipit {
          \clef "mensural-c4" \key d \dorian \time 2/2 \relative d {
            r\longa
            r\longa
            r\longa
            r\longa
            r\longa
            r\longa
            r\longa
            r\longa
            r\longa
            r1 d1 f g
          }
        }
        \clef bass
        \key c \dorian
        \bassus
      }
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
    }
  >>

  \layout {
    indent = 5\cm
    incipit-width = 3\cm
    \override Staff.NoteHead.style = #'baroque
    \context {
      \Staff
      \consists Ambitus_engraver
    }
    \context {
      \Score
      tempoHideNote = ##t
    }
    \context {
      \Voice
      \remove Note_heads_engraver
      \consists Completion_heads_engraver
    }
  }
  \midi {
  }%
}