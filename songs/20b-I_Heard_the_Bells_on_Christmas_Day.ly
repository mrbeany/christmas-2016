\version "2.14.2"

songDedication = \markup {for C.E.}
songTitle = "This is What I'll Give You"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ I Heard the Bells on Christmas Day } }
tuneComposer = \markup { \italic { John Baptiste Calkin (1827–1905) } }
tuneSource = \markup{from \italic{HymnsAndCarolsOfChristmas.com}}
%\markup \fill-line { \concat{ "from " \italic"Carols Old and Carols New" ", 1916, via " \italic"HymnsAndCarolsOfChristmas.com" }}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key ees \major
    \time 4/4
    \tempo 4 = 105
}

sopMusic = \relative c' {
  \partial 4
  ees4 |  g4. fis8 g4 g4 |  aes4. g8 aes4 a |  bes4 ees d c |  c4. bes8 bes4
  bes4 |  bes4. aes8 g4 aes |  g4. f8 ees4 f |  g aes bes c |  d,4. f8 ees4
  \bar "|."
}

altoMusic = \relative c' {
  ees4 |  ees4. ees8 ees4 des |  d4. cis8 d4 ees |  ees g g ees |  f4. f8 f4
  ees4 |  ees4. ees8 ees4 c |  b4. b8 c4 ees |  ees ees ees ees |  d4. d8 ees4
  \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"Orig. "
  I heard the bells on Christ -- mas Day Their old fa -- mil -- iar car -- ols play,
  And wild and sweet the words re -- peat Of peace on earth, good will to men.
}

tenorMusic = \relative c' {
  g4 |  bes4. a8 bes4 bes |  bes4. bes8 bes4 c |  bes4 bes bes bes |  d4. d8 d4
  ees4 |  c4. c8 bes4 ees, |  g4. g8 g4 a |  bes c bes f |  f4. aes8 g4
  \bar "|."
}


bassMusic = \relative c {
  ees4 |  ees4. ees8 ees4 e |  f4. e8 f4 fis |  g ees ees g | aes4. aes8 aes4
  g4 |  aes4. aes8 ees4 ees |  d4. d8 c4 c |  bes aes g aes |  bes4. bes8 ees4
  \bar "|."
}


lyricsA = \lyricmode {
    \set stanza = #"1. "
I would like to sing this song
and it is not the best that I've had
but it's a song, yes, I guess so.
So this is what I'll give you. Oh!
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I think I owe you an ap -- o -- lo -- gy,
if that's al -- right.
But you are stuck with this old song.
Just re -- mem -- ber, it is a brand new song.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
So that makes it a new song
not a stink -- y old song. So you know.
And know -- ing it is im -- por -- tant
for these things on the T. -- V. show.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I thought it would be quite, quite nice
if I just sang a lit -- tle song
but this here song is not too small
it is my great big love -- ly song.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
I would like to sing you a song
and this is what you'll get to -- day
it's not the best song that I've sung
but this is your good gift to -- day.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
I thought you might like a good song
a -- bout some -- thing real -- ly swell like
a gi -- ant pum -- per -- knick -- le lump
named Wil -- liam Bar -- ry Bush -- el Bell.
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
But, I did not sing that song, no.
So you're get -- ting this song in -- stead.
I guess it is o -- kay now, at least
it will be be -- fore the end.
}

lyricsH = \lyricmode {
    \set stanza = #"8. "
Now, this here song, it has no end
and that is part of the deal here.
I thought this song it would go on
un -- til I found me a good beer.
}

lyricsI = \lyricmode {
    \set stanza = #"9. "
But per -- haps not a beer, I want.
Per -- haps I want some ears to -- day.
To hear my good song and de -- clare
that it is such a love -- ly song.
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

