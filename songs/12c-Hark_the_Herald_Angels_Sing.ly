\version "2.14.2"

songDedication = \markup {for J.M.O.B.}
songTitle = "Turtle on a Biscuit"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ Hark! the Herald Angels Sing } }
tuneComposer = \markup { \italic { Felix Mendelssohn (1809–1847) } }
tuneSource = \markup { from \italic { Christmas Carols and Hymns for School and Choir,} 1910}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 112
}

sopMusic = \relative c' {
  d4 g g4. fis8 |  g4 b b a |  d d d4. c8 |  b4 a b2 |
  d,4 g g4. fis8 |  g4 b b a |  d a a4. fis8 |  fis4 e d2 |
  d'4 d d g, |  c b b a |  d d d g, |  c b b a |
  e' e e d |  c b c2 |  a4 b8 c d4. g,8 |  g4 a b2 |
  e4. e8 e4 d |  c b c2 |  a4 b8 c d4. g,8 |  g4 a g2 \bar "|."
}


altoMusic = \relative c' {
  d4 d d4. d8 |  d4 g g( fis) |  g fis e a |  g fis g2 |
  d4 d d4. d8 |  b4 g' g2 |  fis4 e fis4. d8 |  d4 cis d2 |
  d4 d d g |  a g g( fis) |  d d d g |  a g g( fis) |
  g g g gis |  a gis a2 |  fis4 fis g4. d8 |  e4 fis g2 |
  c4 c c b |  a gis a2 |  d,4 fis g4. d8 |  d4 fis d2 \bar "|."
}


altoWords = \lyricmode {
  \set stanza = #"Orig. "
  Hark! the her -- ald an -- gels sing, __ _ “Glo -- ry to the new -- born King!
  Peace on earth, and
  mer -- cy mild; __ _
  God and sin -- ners re -- con -- ciled.”
  Joy -- ful all ye na -- tions, rise; __ _
  Join the tri -- umph of the skies; __ _
  With th’an -- gel -- ic hosts pro -- claim,
  “Christ is __ _ born in Beth -- le -- hem.”


  Hark the her -- ald
  an -- gels sing,
  Glo -- ry __ _ to the new -- born King.
}


tenorMusic = \relative c' {
  b4 b b4. a8 |  g4 d' d2 |  d4 d e e |  d d d2 |
  b4 b b4. a8 |  g4 d' e2 |  d4 e a,4. a8 |  b4 g fis2 |
  d'4 d d d |  d d d2 |  d4 d d d |  d d d2 |
  e4 e c d |  e e e2 |  d4 d d4. b8 |  b4 d d2 |
  e4 e e d |  c e e2 |  d4 d d4. b8 |  b4 c b2 \bar "|."
}

bassMusic = \relative c' {
  g4 g g d |  b g d'2 |  b4 b c c |  d d g,2 |
  g'4 g g d |  e d cis4.( a8) |  b4 cis d fis, |  g a d2 |
  d'4 d d b |  fis g d2 |  d'4 d d b |  fis g d2 |
  c4 c c b |  a e' a2 |  c4 c b g |  e d g,2 |
  c'4 c c b |  a e a( g) |  fis c' b g |  d d g2 \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I want to eat some -- thing cool __ _
like a tur -- tle on a biscuit.
Per -- haps I could make some gruel __ _
for that cat to eat to -- night.
Per -- haps gruel __ _ would be nice __ _
for that cat, and for it's price. __ _
It is made of oat -- meal, too.
But cats __ _ aren't made of oat -- meal.
Gruel is made of oat -- meal, yes.
But it is not __ _ made for cats.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I think the cat would like to eat
lots of meat; fresh, nice and sweet.
I think cats, they like to eat
bugs that crawl with six or eight feet.
Creep -- y crawl -- y lit -- tle bugs. __ _
Crunch -- y, snack -- y lit -- tle bugs. __ _
Why do cats eat all the bugs?
I thought they al -- so ate some mice.
Why do cats eat all the bugs?
When there are love -- ly tast -- y mice?
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Have you thought what cats could cook __ _
if they'd hands in -- stead of feet?
Have you thought of what they cook __ _
with their tails and just two feet.
Could the cats __ _ taste it all __ _
with -- out sweet -- ness on their tongue? __ _
What would cats cook for the chic?
If they __ _ cooked an -- _ y -- thing?
Would bugs be on the me -- nu?
Or would we be stuck eat -- ing mice?
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
Have you e -- ver thought of eat -- ing
mouse pa -- té or may -- be flank?
Have you e -- ver thought of mak -- ing
lots of things stuffed in a steak?
I once thought I'd eat it all, __ _
an -- y -- thing and none at all. __ _
Would you eat an -- y -- thing made
by love -- ly cats with their sharp claws?
Would you eat an -- y -- thing made,
if they made you some -- thing to eat?
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
}

lyricsH = \lyricmode {
    \set stanza = #"8. "
}

lyricsI = \lyricmode {
    \set stanza = #"9. "
}

lyricsJ = \lyricmode {
    \set stanza = #"10. "
}


lyricsK = \lyricmode {
    \set stanza = #"11. "
}

lyricsL = \lyricmode {
    \set stanza = #"12. "
}

lyricsM = \lyricmode {
    \set stanza = #"13. "
}

lyricsN = \lyricmode {
    \set stanza = #"14. "
}

lyricsO = \lyricmode {
    \set stanza = #"15. "
}

\bookpart{
    \tocItem \songTitle
    \header {
        title = \songTitle
        poet = \songPoet
        dedication = \songDedication
        %translator = \songTranslator
        composer = \tuneComposer
        arranger = \tuneArranger
        source = \tuneSource
        copyright = \albumCopyright
        tagline = \albumTagline
    }

    \score {
        <<
            \new Staff \new Voice = "sopranos" { \global \sopMusic }
            \new Lyrics \lyricsto "sopranos" \lyricsA
            \new Lyrics \lyricsto "sopranos" \lyricsB
            \new Lyrics \lyricsto "sopranos" \lyricsC
            \new Lyrics \lyricsto "sopranos" \lyricsD
            \new Lyrics \lyricsto "sopranos" \lyricsE
            \new Lyrics \lyricsto "sopranos" \lyricsF
            \new Lyrics \lyricsto "sopranos" \lyricsG
            \new Lyrics \lyricsto "sopranos" \lyricsH
            \new Lyrics \lyricsto "sopranos" \lyricsI
            \new Lyrics \lyricsto "sopranos" \lyricsJ
            \new Lyrics \lyricsto "sopranos" \lyricsK
            \new Lyrics \lyricsto "sopranos" \lyricsL
            \new Lyrics \lyricsto "sopranos" \lyricsM
            \new Lyrics \lyricsto "sopranos" \lyricsN
            \new Lyrics \lyricsto "sopranos" \lyricsO
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}


