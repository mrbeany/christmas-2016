\version "2.14.2"

songDedication = \markup {for K.O.}
songTitle = "A little hair"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ I Saw Three Ships } }
tuneComposer = "Traditional English (Derbyshire)"
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key g \major
    \time 6/8
    \autoBeamOff
    \tempo "Briskly" 4 = 120
}

sopMusic = \relative c' {
    \partial 8
    d8 | g4 g8 a4 b8 | d4 b8 a4 c8 |
    b4 g8 g4 b8 | a4 fis8 d4 d8 | g4 g8 a4 b8 |
    d4 b8 a4 c8 | b4 g8 g\noBeam a\noBeam b | a4. g4
}

altoMusic = \relative c' {
  d8 | d4 d8 d4 d8 | d4 d8 d4 d8 |
  d4 d8 d4 d8 | d4 d8 d4 c8 | b4 e8 d4 g8 |
  g[ fis] g8 fis4 a8 | g4 d8\noBeam e\noBeam fis\noBeam g | fis4. g4
}

altoLyrics = \lyricmode {
  \set stanza = #"Orig. "
  I saw three ships come sail -- ing in,
  On Christ -- mas day, on Christ -- mas day,
  I saw three ships come sail -- ing in,
  On Christ -- mas day in the morn -- ing.
}

tenorMusic = \relative c {
  d8 | b'4 b8 c4 b8 | a4 g8 fis4 a8 |
  g4 b8 b4 g8 | fis4 a8 fis4 fis8 | g4 b8 a4 d8 |
  d[ c] b d4 d8 | d4 b8 c\noBeam c\noBeam d | d4. b4
}

bassMusic = \relative c {
  d8 | g4 g8 g4 g8 | fis4 g8 d4 fis8 |
  g4 g8 g4 g8 | d4 d8 d4 d8 | e4 e8 fis4 g8 |
  b[ a] g d4 fis8 | g4 g8 c\noBeam a\noBeam g | d'4. g,4
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I thought I might grab me a hair
A big old hair. A lit -- tle hair.
I thought I might grab me a hair
and put it right on my fore -- head.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I thought that I might have a beer.
A love -- ly beer. A lit -- tle beer.
Of course it would be a root beer,
as I don't drink an -- y hard stuff.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
The e -- le -- phant it grabs my hair.
It pulls my hair. It tugs my hair.
The e -- le -- phant it grabs my hair
and plays dress up in the morn -- ing.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
And what pray -- tell did I see here?
My eyes see here? My eyes see here?
And what pray -- tell did my eyes see there
at three o'clock in the morn -- ing?
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
My phone woke me at three o' -- clock.
At three o' -- clock. At three o' -- clock.
My phone woke me at three o' -- clock
when mod -- est peo -- ple are sleep -- ing.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
And what pray -- tell did I read there?
Did I read there? Did I read there?
And what pray -- tell did I read there?
At three o' -- clock in the morn -- ing?
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
My Face -- book it had gone off -- line.
Had gone off -- line. Had gone off -- line.
My Face -- book it had gone off -- line
at three o' -- clock in the morn -- ing.
}

lyricsH = \lyricmode {
    \set stanza = #"8. "
And why did my ac -- count go off -- line?
Account go off -- line? Account go off -- line?
Why did my page go off -- line
at three o' -- clock in the morn -- ing.
}

lyricsI = \lyricmode {
    \set stanza = #"9. "
It turned out some -- one had scammed my ac -- count.
Grabbed my ac -- count. Stole my ac -- count.
It turned out some -- one had stole my ac -- count
at three o'clock in the morning.
}

lyricsJ = \lyricmode {
    \set stanza = #"10. "
But what did I de -- cide to do?
De -- cide to do? De -- cide to do?
But what did I de -- cide to do
at three o' -- clock in the morn -- ing.
}

lyricsK = \lyricmode {
    \set stanza = #"11. "
I got in to a Twit -- ter war.
A Twit -- ter war. A Twit -- ter war.
I got in to a Twit -- ter war
at three o' -- clock in the morn -- ing.
}

lyricsL = \lyricmode {
    \set stanza = #"12. "
Who did I get in war with then?
In war with then? In war with then?
Who did I get in war with then?
at three o' -- clock in the morn -- ing.
}

lyricsM = \lyricmode {
    \set stanza = #"13. "
It was lit -- tle Don -- nie him -- self.
He took the bait. He screamed and moaned.
It was sure to make the pap -- ers,
and it start -- ed in the morn -- ing.
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
%            \new Lyrics \lyricsto "sopranos" \altoLyrics
        >>
        \layout { }
%        \midi { }
    }
}

