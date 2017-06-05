\version "2.14.2"

songDedication = \markup {for D.O.}
songTitle = "It would not be lame."
songPoet = \markup {S.W. Black}

tuneArranger = \markup { tune of \italic{ Jolly Old Saint Nicholas } }
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

altoWords = \lyricmode {
  \set stanza = #"Orig. "
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

lyricsA = \lyricmode {
    \set stanza = #"1. "
I thought that per -- haps the game would go on long -- er.
So I went to the kit -- chen to make me some food.
I thought that the base -- ball game would have gone on longer.
So I was a -- way when the game, __ _ it was won.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
Would you have ever thought that the Cubs, they could win it?
I was pret -- ty sure that they would lose once a -- gain.
Have you have ever thought that the Cubs, they would win it?
I was pret -- ty sure that they would lose once a -- gain.

}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Have you ev -- er thought that perhaps the Cubs they like games?
They like to sing and dance and some -- times throw a ball.
Base -- ball it in -- volves some bats and some leat -- her gloves
I think that sounds really cool per -- haps with a leo -- tard.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
Have you ev -- er thought of may -- be play -- ing more games?
Per -- haps with a diff' -- rent bat or a diff' -- rent ball?
I have real -- ly found that base -- ball can not com -- plain.
They bring lots of mo -- ney to their very wealth -- y teams.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
But you know the Cubs are not the most wealth -- y team,
so it is ver -- y hard when they pick all their players.
Foot -- ball is non -- pro -- fit so they don't have that issue.
They can pick from the best when pick -- ing it is fair.

}

lyricsF = \lyricmode {
    \set stanza = #"6. "
With base -- ball they're not play -- ing on a le -- vel field.
It is like the wealth -- y they get __ _ all the best.
Base -- ball it is like they're not play -- ing on a field.
It is like a mount -- ain side; some of them are blest.
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
Have you e -- ver thought that base -- ball could be bet -- ter
if it weren't so corp' -- rate with their mon -- eyed bet -- ters.
Have you ev -- er thought that base -- ball could be bet -- ter
if they were more so -- cial -- ist: played on the le -- vel.
}

lyricsH = \lyricmode {
    \set stanza = #"7. "
I have of -- ten thought we, per -- haps, could do one, too.
We could make our -- selves a game, here __ _ with our crew.
I have quite of -- ten thought that we should play our game.
We could bring the best of bits. It would not be lame.
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
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

