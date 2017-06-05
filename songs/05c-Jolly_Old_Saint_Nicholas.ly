\version "2.14.2"

songDedication = \markup {for R.G.}
songTitle = "Cheese Song"
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
I would like to sing a song per -- haps a -- bout cheese.
Have you ev -- er con -- sid -- ered some -- thing blue or green?
I real -- ly like to eat cheese all the live long day.
I real -- ly thought you might like to eat cheese that way.

}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    Have you ev -- er con -- sid -- ered eat -- ing some more cheese?
    Love -- ly litt -- le chees -- y bits, cheese down to my knees.
Have you ever con -- sid -- ered
cheese on cheese on crack -- ers?
Cheese stacked up on cheese a -- gain.
It's not that quack -- ers.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I thought you might like to eat a bit of my cheese.
And by just a lit -- tle bit, I meant pounds of cheese.
I thought you would like to eat pounds and pounds of cheese.
Or per -- haps this real -- ly is just sil -- ly old me.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I quite thought you might like to eat some more block cheese.
Sliced cheese and shred -- ded cheese and love -- ly string -- y cheese.
Have you ev -- er con -- sid -- ered lots of love -- ly cheese?
I real -- ly like cream cheese to cheese up -- on my cheese.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
I have heard that they put cheese in cof -- fee quite fair.
I have heard that they might put cheese up -- on my hair.
Cheese might help my hair, it grow. Grow and bring de -- light.
Love -- ly and soft like soft cheese it would be quite nice.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
Cheese and cheese and love -- ly cheese. Please bring me more cheese.
Don't mind if I nev -- er poop it's on -- ly 'cause cheese.
I'm going to take more pic -- tures, please could you just cheese?
Cheese and love -- ly cheese a -- gain. More of this good cheese.

}

lyricsG = \lyricmode {
    \set stanza = #"7. "
Please would you shred some more cheese? Cheese, just please for me.
I would like some love -- ly cheese. Cheese up -- on my cheese.
Cheese would you smile a bit more. Cheese, would you please cheese?
Cheese, you're such a chees -- y chap. Cheese -- y down to knees.
}

lyricsH = \lyricmode {
    \set stanza = #"8. "
I thought you might like this good cheese song, if you please.
I thought you were a chees -- y, chees -- y breez -- y breeze.
I thought you could use some more lit -- tle slice -- y cheese.
Per -- haps up -- on your crack -- ers or left in your cheeks.
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

