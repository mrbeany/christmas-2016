\version "2.14.2"

songDedication = \markup {for J.O.}
songTitle = \markup {That Badger Boone}
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ Away In A Manger } }
tuneComposer = "William Kirkpatrick (1838–1921)"
tuneSource = \markup {from \italic {ChristmasCarolMusic.org}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
  \key f \major
  \time 3/4
  \autoBeamOff
    \tempo 4 = 66
}

sopMusic = \relative c' {
  \partial
  4 c4 |  f f g8 a |  f4 f a8 bes] |  c4 c d |  bes2 g8 a |  bes4 bes c |
  a a f8 a |  g4 d f |  e2 c4 |  f f g8 a |  f4 f a8 bes |
  c4 c d |  bes2 g8 a |  bes4 bes c |  a4 a f8 a |  g4 d e |  f2
  \bar "|."
}


altoMusic = \relative c' {
  c4 |  a a e' |  a, a a8[ c] |  f4 f f |  g2 d4 |  g d e |  f f d |
  d d c | c2 c4 |  a a e' |  a, a a8[ c] |  f4 f f |  g2 d4 |  g d e |
  f f d |  d d bes |  c2 \bar"|."
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  A -- way in a __ _ man -- ger,
  No __ _ crib for His bed,
  The __ _ lit -- tle Lord Je -- sus
  Laid __ _ down His sweet head:
  The stars in the heav -- ens
  Look’d __ _ down where He lay,
  The __ _ lit -- tle Lord Je -- sus
  A -- _ sleep in the hay.
}


tenorMusic = \relative c' {
  c4 |  c d g, |  c c c8[ g] |  a4 a bes |  d2 c4 |  d g, g |  a a a8[ f] |
  bes4 bes g |  g2 c4 |  c d g, |  c c c8[ g] |  a4 a bes |  d2 c4 |  d g, g |
  a a a8[ f] |  bes4 bes c |  a2 \bar"|."
}


bassMusic = \relative c {
  c4 |  f d c |  d f f8[ e] |  f4 f bes, |  g'2 g4 |  g g c, |  d d d |
  g g c, |  e8([ d] c4) c4 |  f d c |  d f f8[ e] |  f4 f bes, |  g'2 g4 |
  g g c, |  d d d |  g g g8[ c,] |  f2 \bar"|."
}


lyricsA = \lyricmode {
    \set stanza = #"1. "
I won -- der how you might like
on -- ion soup from pick -- les.
But the pick -- les have on -- ions
and my soup that I know.
I thought it might be ev -- il,
so I smashed with a spoon
that lech -- er -- ous bad -- ger
whose name I thought might've been Boone.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
That bad -- ger how I hat -- ed
see -- ing him twitch and flail.
So I poked and I prod -- ded him
with my really good pail.
So the bad -- ger has de -- ci -- ded
to give up leering and
he de -- ci -- ded that in -- stead
he'll be a~good bad -- ger now.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
And bad -- gers they can be kind
but if you see one soon.
You should ques -- tion his mo -- tives
as he leaves __ _ the room.
And bad -- gers they're not ev -- il
just one that I do know.
For some bad -- gers, like some people
are pret -- ty e -- vil, yo'.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
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

