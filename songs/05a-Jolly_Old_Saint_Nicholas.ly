\version "2.14.2"

songDedication = \markup {for N.C.}
songTitle = "Gun Christmas"
songPoet = "S.W. Black"

tuneArranger = \markup {tune of \italic { Jolly Old Saint Nicholas }}
tuneComposer = "Anonymous, 19th Century"
tuneSource = \markup { from \italic {HymnsAndCarolsOfChristmas.com}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key bes \major
    \time 2/4
    \tempo 4 = 90
    \autoBeamOff
}

sopMusic = \relative c' {
  d'8 d d d |  c c c4   |  bes8 bes bes bes |  d2 |
  g,8 g g g |  f f bes4 |  a8 bes c d       |  c2 |
  d8 d d d  |  c c c4   |  bes8 bes bes bes |  d2 |
  g,8 g g g |  f f bes4 |  c8 bes c d       |  bes2 \bar "|."
}

altoMusic = \relative c' {
  bes'8 bes bes bes |  a a a4 |  g8 g g d |  f2 |
  ees8 ees ees ees |  d d d4 |  f8 f f f |  f4( a) |
  bes8 bes bes bes |  a a a4 |  g8 g g d |  f2 |
  ees8 ees ees ees |  d d d4 |  ees8 d ees f |  d2 \bar "|."
}


lyricsA = \lyricmode {
    \set stanza = #"1. "
I would __ _ like to __ _ sing a __ _ lit -- tle song.
Not just for __ _ you, __ _ for your __ _ whole __ _ crew.
I would __ _ like to __ _ sing a __ _ lit -- tle song.
Not for __ _ you, __ _ for __ _ your __ _ whole __ _ crew.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I think __ _ you might __ _  like my __ _ lit -- tle song.
I've been __ _ prac -- tic -- ing it oh, __ _ so __ _ long.
I think __ _ you might __ _ like my __ _ lit -- tle song.
I've been __ _ prac -- tic -- ing it for __ _ so __ _ long.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I tried __ _ real hard __ _ to find __ _ you a song
that you __ _ would like, __ _ but per -- _ haps I'm wrong.
I tried __ _ real hard __ _ to find __ _ you a song
that you __ _ would like, __ _ but per -- _ haps I'm wrong.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I tought __ _ you liked __ _ to hear __ _ your  __ _ songs
with some -- _ thing more __ _ con -- ser -- va -- tive and strong.
I thought __ _ you liked __ _ to hear __ _ your __ _ songs
with some -- _ thing more __ _ con -- ser -- va -- tive and strong.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
This is __ _ why __ _ I've __ _ add -- _ ed more guns
to __ _ this __ _ Christ -- _ mas song, __ _ though __ _ long.
that is __ _ why I __ _ add -- ed much more __ _ guns
I hope __ _ you like __ _ your Christ -- mas gun __ _ song.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
Bang, __ _ bang! __ _ Bang bang bang bang bang bang! so long.
I'm shoot -- _ ing up __ _ this Christ -- mas gun __ _ song.
Bang __ _ bang! __ _ Bang bang bang bang! Christ -- mas gun song.
Please se -- _ cure __ _ your __ _ guns __ _ all day long.
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
I think __ _ you might __ _ like my __ _ Christ -- mas song.
I think __ _ you might __ _ like to keep your guns long.
Please would __ _ you keep __ _ them se -- _ cur'd. Please? Please?
I think __ _ you might __ _ like my Christ -- mas gun song.
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  Jol -- ly old Saint Ni -- cho -- las,
  Lean your ear this way!
  Don’t you tell a sin -- gle soul
  What I’m going to say; __
  Christ -- mas Eve is com -- ing soon;
  Now, you dear old man,
  Whis -- per what you’ll bring to me;
  Tell me what you can.
}



tenorMusic = \relative c' {
  f8 f f f |  ees ees ees4 |  d8 d d bes |  a4( c) |
  bes8 bes bes bes |  bes bes bes4 |  c8 d ees d |  ees2 |
  f8 f f f |  ees ees ees4 |  d8 d d bes |  a4( c) |
  bes8 bes bes bes |  bes bes bes4 |  a8 bes a f |  f2 \bar "|."
}


bassMusic = \relative c {
  bes'8 bes bes bes |  f f f4 |  g8 g g g |  d2 |
  ees8 ees ees ees |  bes bes bes4 |  f'8 f a bes |  a4( f) |
  bes8 bes bes bes |  f f f4 |  g8 g g g |  d2 |
  ees8 ees ees ees |  bes bes bes4 |  f'8 f f f |  bes,2 \bar "|."
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
            \new Lyrics  \lyricsto "sopranos" \lyricsF
            \new Lyrics  \lyricsto "sopranos" \lyricsG
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

