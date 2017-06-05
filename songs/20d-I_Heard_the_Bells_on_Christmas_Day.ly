\version "2.14.2"

songDedication = \markup {for A.B.}
songTitle = "Something That's Blue"
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
  bes4 |  bes4. aes8 g4 aes |  g4. f8 ees4 f |  g aes bes c |  d,4. f8 ees4 \bar "|."
}


altoMusic = \relative c' {
  ees4 |  ees4. ees8 ees4 des |  d4. cis8 d4 ees |  ees g g ees |  f4. f8 f4
  ees4 |  ees4. ees8 ees4 c |  b4. b8 c4 ees |  ees ees ees ees |  d4. d8 ees4
  \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  I heard the bells on Christ -- mas Day Their old fa -- mil -- iar car -- ols play,
  And wild and sweet the words re -- peat Of peace on earth, good will to men.
}


tenorMusic = \relative c' {
  g4 |  bes4. a8 bes4 bes |  bes4. bes8 bes4 c |  bes4 bes bes bes |  d4. d8 d4  	  ees4 |  c4. c8 bes4 ees, |  g4. g8 g4 a |  bes c bes f |  f4. aes8 g4
  \bar "|."
}


bassMusic = \relative c {
  ees4 |  ees4. ees8 ees4 e |  f4. e8 f4 fis |  g ees ees g |  aes4. aes8 aes4
  g4 |  aes4. aes8 ees4 ees |  d4. d8 c4 c |  bes aes g aes |  bes4. bes8 ees4
  \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I want to eat some -- thing that's blue
and I was think -- ing blue al -- gae
It's an al -- gae and it is blue.
But it is only a lit -- tle blue.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
It's al -- so green, that blue al -- gae.
And some peo -- ple call~it sup -- er food.
But I'm not one of them, oh, no.
I just call it re -- gu -- lar food.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I hope you like my song to -- day.
I've made it just right for you.
I think it is real -- ly good to -- day
and I real -- ly hope that you like~it.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I thought that per -- haps you might like
to eat a love -- ly bis -- quit or~two.
Per -- haps some -- thing un -- us -- u -- al
like a gi -- ant ru -- ta -- beg -- a.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
But per -- haps you have ru -- ta -- be -- ga
o -- ver at your house, I hear.
Per -- haps you have some ru -- ta -- be -- ga
danc -- ing in your left~or right ear.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
I thought that you might find
some -- thing real -- ly love -- ly on your hair
but you have no hair and that's sad
be -- cause you are go -- ing bald up there.
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

