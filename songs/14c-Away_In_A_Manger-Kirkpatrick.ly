\version "2.14.2"

songDedication = \markup {for N.S.B.}
songTitle = \markup {As It Filled Her Whole Sight}
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
  d d c |  c2 c4 |  a a e' |  a, a a8[ c] |  f4 f f |  g2 d4 |
  g d e |  f f d |  d d bes |  c2 \bar"|."
}

altoWords = \lyricmode {
  \set stanza = #"Orig. "
  A -- way in a __ _ man -- ger,
  No __ _ crib for His bed,
  The __ _ lit -- tle Lord Je -- sus
  Laid __ _ down His sweet head:
  The stars in the __ _ heav -- ens
  Look’d __ _ down where He lay,
  The __ _ lit -- tle Lord Je -- sus
  A -- _ sleep in the hay.
}

tenorMusic = \relative c' {
  c4 |  c d g, |  c c c8[ g] |  a4 a bes |  d2 c4 |  d g, g |  a a a8[ f] |
  bes4 bes g |  g2 c4 |  c d g, |  c c c8[ g] |  a4 a bes |  d2 c4 |
  d g, g |  a a a8[ f] |  bes4 bes c |  a2 \bar"|."
}


bassMusic = \relative c {
  c4 |  f d c |  d f f8[ e] |  f4 f bes, |  g'2 g4 |  g g c, |  d d d |
  g g c, |  e8([ d] c4) c4 |  f d c |  d f f8[ e] |  f4 f bes, |  g'2 g4 |
  g g c, |  d d d |  g g g8[ c,] |  f2 \bar"|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I thought I could __ _ take one less __ _ poop be -- fore bed,
but I pooped and I pooped and it __ _ got on my head.
My mo -- ther, she did change me,
while ex -- claim -- ing with fright,
how that poop it did bo -- ther
as it filled her whole sight.

}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I thought that my poop would smell good __ _ as I am young.
Poop it al -- ways gets smell -- ier
as you grow your long thumb.
Your ear -- lobes keep on grow -- ing
just __ _ like your poor nose.
But your thumbs they don't real -- ly,
ex -- cept for ar -- thritis woes.

}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I thought that my poop would be wiped __ _ right a -- _ way.
But a rash I have ac -- quired and it's spread -- ing like hay.
I want -- ed to be cleared up so I guess I will start
to __ _ sit on the pot -- ty as I poop or I fart.
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

