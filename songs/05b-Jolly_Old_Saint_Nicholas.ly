\version "2.14.2"

songDedication = \markup {for R.B.}
songTitle = "Cat Hat"
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
I would like to pet a cat, pet it all the time.
And sing it a lit -- tle song per -- haps it could rhyme.
I would like to pet a cat, pet it all the time.
And I would sing it a song that __ _  could __ _ rhyme.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
And I would like real -- ly to pet all of the cats.
But I don't have all the hands so I can do that.
Right now I just have two hands, that is where I'm at.
So I can on -- ly pet two lit -- _ tle __ _ cats.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
One day I may grow real big and real strong like that.
But I would still on -- ly have two hands for the cats.
Per -- haps I might grow some -- thing quite like a nice hat
that could hold a big and strong, love -- _ ly __ _ cat.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
Would you like to wear a cat per -- haps on your hat?
They will be the fash -- ion soon, be ass -- ured of that.
Snug -- gly cat hats are real -- ly where it will be at.
I think that I might like my love -- ly cat __ _ hat.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
Cat hats they are real -- ly swell. Real -- ly they are that.
I would real -- ly like to wear my love -- ly cat hat.
It would al -- low me to car -- ry so ma -- ny cats.
That is why I want to make my love -- ly cat hat.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
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
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

