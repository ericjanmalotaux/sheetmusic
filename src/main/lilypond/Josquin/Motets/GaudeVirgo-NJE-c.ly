\version "2.24.2"

\header {
  title = "Gaude virgo"
  composer = "Josquin"
}

\include "satb.ly"

ficta = { \set suggestAccidentals = ##t }
recta = { \set suggestAccidentals = ##f }


superius =
\relative d' {
  \clef treble
  \key c \minor
  \time 2/1
  \override Staff.NoteHead.style = #'baroque
  \ficta
  c\breve c1 c es2. f4 g2 as2 g as1 g4 f g1
  c, c c es2. f4 g2 as g as1 g4 f g1 r2 c bes c1 bes4 as bes1 r1
  g g bes2. c4 d es d2~d4 bes c d es2 d2~d4 bes c d es2 d2~d4 c c1 b2 c \breve~\breve
  R\breve*13
  r1 c es es d bes c c bes g as as g es f f es2
  bes' c es2~es d4 c d1 es2 c es d2~d c1 bes4 a bes2 g bes a2~a g2 bes2. a4 f2 g1 fis2 g\breve
  r2 g1 f4 es f2 es c g' as g1 f4 es f2 es c c' d4 c es2. d4 c2~c b2 c1
  R\breve*3
  r2 g1 a2~a bes1 c2~c2 d1 es2~es4 d es c d2 g, a bes c d2~d bes2 a1 g r
  r d' es c d bes c c r d es c d bes2. a4 bes2 c1 b2
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  \tuplet 2/3 { c1 r }
  g\breve a1 f g\breve a1 bes c~c d r
  g,\breve a1 f g\breve a1 bes c~c d1 r
  d\breve es1 c d1. c2 c\breve b1
  \time 2/1
  c1. bes2 g1 bes a c g bes  a2. bes4 c1 d r
  bes a c g bes a2. bes4  c1 d
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  d\breve es1 c d1. c2  c\breve b1
  \time 2/1
  c\breve r2 c, es2. f4 g2 as g1
  r1 r2 c, es2. f4 g as g2~g f2 g es' es es1 d4 c b\breve~\breve\fermata c\breve~\breve
}
altus =
\relative d' {
  \clef treble
  \key c \dorian
  \time 2/1
  \override Staff.NoteHead.style = #'baroque
  R\breve*2
  c\breve c1 c es2. f4 g2 \recta as2 g \ficta as1 g4 f g1
  c, c c es2. f4 g2 as g as1 g4 f  g \breve
  r1 g g bes1~bes2 as2 g f  es2. d4 c2 bes c1 d c\breve~\breve
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
  r1 c d es f g a b c2 g a bes2~bes4 a g1 fis2 g1 (c,) a' bes g a f g g r
  a bes g a f g g\breve
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  es\breve. r1
  c\breve  d1 bes c~c d es f1. es2 g1
  r1 c,\breve d1 bes c~c d1 es f1. es2 g1
  r g\breve a1 f g g g\breve
  \time 2/1
  es1
  r es d f c es d2. es4 f1 g
  r es d f c es d2. es4 f1 g\breve
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  r1 g\breve a1 f g g g\breve
  \time 2/1
  es1 r2 c es2. f4 g2 as g c, es2. f4  g as g1 f2 g\breve
  r2 c, es2. f4 g as g1 f2 g\breve~\breve\fermata g\breve~\breve
}
tenor =
\relative d {
  \clef "treble_8"
  \key c \dorian
  \time 2/1
  \override Staff.NoteHead.style = #'baroque
  R\breve*16  %17
  r1 c es1 f g2 c, c'2. bes4 g2 bes \ficta as1 g1  %21
  r2 c, es1 f g2 c, c'2. bes4 g2 bes as1 g2 es f c4 d es f g1 f2 g1  %27
  bes c d   g,4 a bes c d c es2  g,4 a bes c d c es2~es4 d c1 b2 c\breve~\breve  %34
  bes1. as4 g f\breve
  r2 bes c es2~es2 d4 c d2 c~c2 bes4 as g2 c f,\breve c'2 %40
  g as c2~c bes4 a bes2 f g1 g f  %43
  r2 c' d1 d c r2 g a1 a g\breve (c)
  R\breve*4  %53
  r2 g1 a2~a bes1 c2~c d1 es2~es4 d es c d1 c r
  R\breve*4  %62
  r1 r2 d2~d es1 c2~c d1 bes2~bes c1 a2~2 bes2. g4 g2~g (es'1) c2~c d1 bes2~bes c1 a2~a bes2. g4 es'2~4 d es c d1
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  c\breve.
  R\breve.*8  %81
  bes\breve c1 a bes\breve c1 d\breve
  \time 2/1
  c1 r c bes2 d2~d2 a1 c2~c g2. a4 bes2 c d es1 d2 bes c2. bes4 g2 d'1 a2~a c1 g2~g4 a bes2 c d es1 d %94
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  bes\breve c1 a bes\breve bes1 d\breve
  \time 2/1
  c\breve. %97
  r2 c es2. f4 g2 c, r es1 d4 c bes2 c g es'2 ~es d4 c bes2 c g2. a4 bes2 c d es1 d4 c d\breve\fermata c\breve~\breve

}
bassus =
\relative d {
  \clef bass
  \key c \dorian
  \time 2/1
  \override Staff.NoteHead.style = #'baroque
  R\breve*18
  r1 c es f g2 c, c'2. bes4 g2 bes \ficta as1 g r2 c,2 es1 f g2 c, c'2. bes4 g2 bes as1 g %25
  r2 es2~2 f1 g2~4 f4 g as f2 g2~4 f4 g as f2 g es f d1 c\breve~\breve %31
  r1 g' as as g es f f es\breve
  R
  r1 c d d  c g' as as g r2 d es1 es d\breve %46
  r2 g1 f4 es f2 es c1 %48
  R\breve*4
  r1 c d es f g a b c\breve %57
  R\breve*5
  g1 as f g es f d (g) c, (c') f, g es f d es2. f4  g2 c, g'1 %71
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  c,\breve.~\breve.
  R\breve.*7
  g'\breve es1 f d es (c) g'\breve %83
  \time 2/1
  c,\breve
  r1 g' d2 f1 c2~2 c2 g'1 f2. es4 c1 (g')
  r2 c, g'2. f4 d2 f2~2 c1 c2 g'1 f2. es4 c1 (g')
  \once \override Staff.TimeSignature.style = #'single-digit
  \time 3/1
  g\breve es1 f d es (c) g'\breve
  \time 2/1
  c,\breve~\breve
  r1 r2 c es2. f4 g2 as g c, es2. f4 g2 as g c, es2. f4 g2 as g\breve~\breve\fermata c,\breve~\breve
  \bar "|."
}

\score {
  \new StaffGroup
  <<
    \new Staff \with {
      instrumentName = "Superius"
      shortInstrumentName = "S"
    }
    <<
      \new Voice = "superius" {
        \superius
        \addlyrics {
          Gau- de vir- go _ _  ma- ter Chris- _ _ ti,
          Que per au- rem _ _ con- ce- pis- _ _ ti, con- ce- pis- _ _ ti,
          Ga- bri- e- _ _ _ _ _ _ _ _ _ _ _ _ _ le _ nun- ti- o.
          Gau- de, qui- a tu- i na- ti,
          Quem do- le- bas mor- tem pa- ti, mor- tem pa- _ _ _ ti,
          mor- tem pa- _ _ _ ti, mor- tem pa- _ _ _ _ _ _ ti,
          Ful- _ _ _ _ get re- sur- rec- _ _ _ ti- o, re- sur- _ rec- _ _ ti- o.
          Et in ce- lum te vi- _ _ _ den- _ te, te vi- den- _ _ te,
          Mo- tu fer- tur pro- pri- o,
          mo- tu fer- tur pro- _ _ _ pri- o.
          Gau- de, que post ip- sim scan- dis,
          Et est ho- nor ti- bi gran- dis
          In ce- li pa- _ la- ti- o. _ _
          U- bi fruc- tus ven- tris _ tu- i
          No- bis de- tur per te _ fru- i
          In per- en- ni _ gau- di- o.
          Al- le- _ _ lu- ja, al- le- _ _ _ _ lu- ja,
          al- le- lu- _ _ _ ja.
        }
      }
    >>
    \new Staff \with {
      instrumentName = "Altus"
      shortInstrumentName = "A"
    }
    <<
      \new Voice = "altus" {
        \altus
        \addlyrics {
          Gau- de vir- go _ _  ma- ter Chris- _ _ ti,
          Que per au- rem _ _ con- ce- pis- _ _ ti,
          Ga- bri- e- _ _ _ _ _ _ le nun- ti- o.
          Gau- de, qui- a tu- i na- ti,
          Quem do- le- bas mor- tem pa- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ti,
          Ful- _ _ _ get re- sur- rec- _ _ _ ti- o, re- sur- rec- _ _ _ _ _ _ ti- o.
          Et in ce- lum te vi- den- te, te vi- den- _ _ _ te,
          Mo- tu fer- tur pro- pri- o, mo- tu fer- tur pro- pri- o-. _
          Gau- de, que post ip- sum scan- _ dis,
          Et est ho- nor ti- bi gran- _ dis  In ce- li pa- la- ti- o.
          U- bi fruc- tus ven- tris _ tu- i
          No- bis de- tur per te _ fru- i
          In per- en- ni gau- di- o.
          Al- le- _ _ lu- ja, al- le- _ _ _ _ _ ja, al- le- _ _ _ _ lu- _ ja.
        }
      }
    >>
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T"
    }
    <<
      \new Voice = "tenor" {
        \tenor
        \addlyrics {
          Gau- de, qui- a _ de- _ _ o ple- na,
          Pe- pe- ris- ti _ si- _ _ ne pe- na, pe- _ _ _ _ _ _ _ na,
          Cum pu- do- _ _ _ _ _ _ ris li- _ _ _ _ _ _ _ _ li- o.
          Gau- _ _ de, qui- a tu- _ _ _ _ _ _ _ i na- ti,
          Quem do- le- _ _ bas mor- tem pa- ti,
          mor- tem pa- ti, mor- tem pa- ti...
          Gau- de, Chris- to a- scen- _ _ _ den- te.
          Mo- tu fer- tur pro- pri- o, _ _ _
          mo- tu fer- tur pro-_ _ _ _ _ _ _ pri- o.
          In ce- li pa- la- ti- o. U- bi fruc- tus ven- tris _ _ tu- _ _ i
          No- _ _ bis de- tur per te _ _ fru- _ _ i
          In per- en- ni gu- di- o.
          Al le- _ lu- ja, al- _ _ le- lu- ja, al- _ _ le- lu- ja, _ _ al- le- lu- _ _ _ ja.
        }
      }
    >>
    \new Staff \with {
      instrumentName = "Bassus"
      shortInstrumentName = "B"
    }
    <<
      \new Voice = "bassus" {
        \bassus
        \addlyrics {
          Gau- de, qui- a _ de- _ _ o ple- na,
          Pe- pe- ris- ti _ si- _ _ ne pe- na,
          Cum pu- do- _ _ _ ris li- _ _ _ _ _ _ _ li- o.
          Gau- de, qui- a tu- i na- ti,
          Quem do- le- bas mor- tem pa- ti, mor- tem pa- ti,
          Ful- _ _ _ _ get.
          Gau- de, Chris- to a- scen- den- te,
          Mo- tu fer- tur pro- pri- o, _ mo- tu fer- tur pro- _ _ _ _ pri- o.
          In ce- li pa- la- ti- o. U- bi fruc- tus ven- tris tu- _ i
          No- bis _ _ de- tur per te fru- _ i
          In per- en- ni gau- di- o.
          Al- le- _ _ lu- ja, al- le- _ _ lu- ja, al- le- _ _ lu- _ ja.
        }
      }
    >>
  >>
}