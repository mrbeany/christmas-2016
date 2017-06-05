\version "2.14.2"

songDedication = \markup {for K.R.}
songTitle = "I Have No Shits to Give"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ What Child is This? } }
tuneComposer = "16th Century English Air"
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
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn
    \tempo 4 = 60
}

sopMusic = \relative c' {
  \partial 8 e8 |
  g4 a8 b8. c16 b8 |  a4 fis8 d8. e16 fis8 |  g4 e8 e8. dis16 e8 |

  fis4. b,4  e8 |  g4 a8 b8. c16 b8 |  a4 fis8 d8. e16 fis8 |
  g8. fis16 e8 dis8. cis16 dis8 |  e4. e |

  d'4. d8. cis16 b8 |  a4 fis8 d8. e16 fis8 |
  g4 e8 e8. dis16 e8 |  fis4 dis8 b4. |

  d'4. d8. cis16 b8 |  a4 fis8 d8. e16 fis8 |
  g8. fis16 e8 dis8. cis16 dis8 |  e4. e4 \bar "|."
}


altoMusic = \relative c' {
  b8 |  e4 d8 d4 g8 |  fis4 d8 d4 c8 |  b4 b8 a4 e'8 |
  dis4. b4 b8 |  e4 d8 d4 g8 |  fis4 d8 d4 c8 |  b4 c8 b4 b8 |  b4. b |
  fis' b8.[ a16] g8 |  fis4 d8 d4 c8 |  b4 b8 a4 e'8 |  dis4 b8 b4. |
  fis'4. b8.[ a16] g8 |  fis4 d8 d4 c8 |  b4 c8 b4 b8 |  b4. b4 \bar "|."
}


altoWords = \lyricmode {
  \set stanza = #"Orig."
  What Child is this, __ _ Who, laid
  to rest, __ _
  On Ma -- ry’s lap __ _ is sleep -- ing?
  Whom an -- gels greet __ _ with
  an -- thems sweet, __ _
  While shep -- _ herds watch __ _ are keep -- ing?

  This, this __ _ is
  Christ the King; __ _
  Whom shep -- herds guard __ _ and an -- gels sing:

  Haste, haste __ _ to
  bring Him laud, __ _
  The Babe, __ _ the Son __ _ of Ma -- ry!
}

tenorMusic = \relative c' {
  g8 |  b4 a8 g4 b8 |  d4 a8 fis4 a8 |  g4 g8 e4 e8 |
  b'4. b4 g8 |  b4 a8 g4 b8 |  d4 a8 fis4 a8 |  g4 a8 fis4 fis8 |  g4. g |
  b4. d4 d8 |  d4 a8 fis4 a8 |  g4 g8 a4 e8 |  b'4 fis8 b4. |
  b d4 d8 |  d4 a8 fis4 a8 |  g4 a8 fis4 fis8 |  g4. g4 \bar "|."
}


bassMusic = \relative c {
  e8 |  e4 fis8 g4 g8 |  d4 d8 d4 dis8 |  e4 e8 c4 c8 |
  b4. b'4 e,8 |  e4 fis8 g4 g8 |  d4 d8 d4 dis8 |  e4 a,8 b4 b8 |  e4. e |
  b' g4 g8 |  d4 d8 d4 dis8 |  e4 e8 c4 c8 |  b4 b8 b4. |
  b' g4 g8 |  d4 d8 d4 dis8 |  e4 a,8 b4 b8 |  e4. e4 \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I thought I might give a shit to -- night
but I guess the shits are all out~of me.
I thought I might give a shit to -- night
but I have no __ _ more shits to give. __ _
Shit! Shit! __ _ I don't have no more.
I've pooped them all __ _ up -- on the floor.
Shit! Shit! __ _ I had to clean that up
and now I have no shits to give.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I thought I might crack a smile to -- night
as I re -- lat -- ed that poop -- y story.
I thought I might crack a smile to -- night
but then I re -- _ mem -- bered the stink. __ _
Shit! Shit! __ _ It was all o -- ver
that stink -- y smell, __ _ it clung to me.
Shit! Shit! __ _ It was all o -- ver
and I did not want __ _ to smell it.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
That stink -- y stuff it did not just go
where I want -- ed it to, don't you know?
It just clung to me, all my clean -- ing stuff,
and I had to wash three or four times.
Shit! Shit! __ _ It's so stink -- y.
And it clings to things, __ _ don't you __ _ see?
Shit! Shit! __ _ It was such a mess.
And I real -- ly hate clean -- ing it up.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I used my gloves but it did not help.
My hands they stunk like __ _ no -- thing else.
I tried to clean it but I don't know
when my hands will __ _ e -- ver smell right. __ _
Shit! Shit! __ _ I can take no more.
This stink must be __ _ sent out the door.
Shit! Shit! __ _ I just can't take more.
Please, can you make this smell go a -- way?
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

