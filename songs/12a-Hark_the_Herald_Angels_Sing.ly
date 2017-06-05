\version "2.14.2"

songDedication = \markup {for I.W.}
songTitle = "External Digestion"
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
  d4 g g4. fis8 |  g4 b b( a) |  d d d4. c8 |  b4 a b2 |
  d,4 g g4. fis8 |  g4 b b( a) |  d a a4. fis8 |  fis4 e d2 |
  d'4 d d g, |  c b b( a) |  d d d g, |  c b b( a) |
  e' e e d |  c b c2 |  a4 b8[ c] d4. g,8 |  g4 a b2 |
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
  Hark! the her -- ald an -- gels sing, __ “Glo -- ry to the new -- born King!
  Peace on earth, and
  mer -- cy mild; __
  God and sin -- ners re -- con -- ciled.”
  Joy -- ful all ye na -- tions, rise; __
  Join the tri -- umph of the skies;
  With th’an -- gel -- ic hosts pro -- claim,
  “Christ is born in Beth -- le -- hem.”


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
I would love to eat some -- thing __
that would not sit in my stomach
I could eat it while I sing
and I don't think I would need
to chew my food, not at all __
it would not taste like the fall. __
Would it taste like a -- ny -- thing
if it __ didn't hit my mouth?
Would it taste like a -- ny -- thing
if I could __ _ not taste __ _ one bit?
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
Have you thought of eat -- ing food __
that was green and some -- times rude?
It could in -- sult your __ _ knife __
and say things like, "\"Don't" use that!
You should not poke or __ _ stab __
things that were liv -- ing and bled. __
On -- ly eat your ve -- geta -- "bles!\""
At least~thats what my ra -- dish said.
"\"On" -- ly eat your ve -- geta -- "bles!\""
At least that's what my ra -- dish said.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Have you con -- sid -- ered eat -- ing __
love -- ly beets pur -- ple and~not mean?
Have you con -- sid -- ered eat -- ing
some -- thing green and quite sli -- my?
I'm think -- ing brus -- sels __ _ sprouts. __
Yes, those nas -- ty brus -- sels sprouts. __
I have heard they have i -- ron
if you __ need that mi -- ner -- al
Do you need some i -- ron? __ _
You could eat that in -- stead of meat.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
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
            \new Lyrics  \lyricsto "sopranos" \lyricsA
            \new Lyrics  \lyricsto "sopranos" \lyricsB
            \new Lyrics  \lyricsto "sopranos" \lyricsC
            \new Lyrics  \lyricsto "sopranos" \lyricsD
            \new Lyrics  \lyricsto "sopranos" \lyricsE
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}


