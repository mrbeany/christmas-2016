\version "2.14.2"

songDedication = \markup {for J.B.}
songTitle = "I Guess It Ate Me Up"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ O Little Town of Bethlehem } }
tuneComposer = "Lewis H. Redner (1831–1908)"
tuneSource = \markup {from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key g \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 95
}

sopMusic = \relative c'' {
  \partial 4 b4 |  b b ais b |   d c e, a |   g fis8 g a4 d, |  b'2.  b4 |
  b b e d |  d c e, a |  g fis8 g b4. a8 |  g2.  b4 |
  b b a g |  fis2 fis4 fis |  e fis g a |  b2.  b4 |
  b b ais b |  d c e, e' |  d g, b4. a8 |  g2. \bar "|."
}

altoMusic = \relative c' {
  d4 |
  d d cis d |
  \slurDotted f( e) c e |
  d d d d |
  d2. d4 |

  d g gis gis |
  a e c e |
  d d fis fis |
  g2. g4 |

  g g fis e |
  dis2 dis4 dis |
  e fis g e |
  fis2. g4 |

  d d cis d |
  \slurSolid e e c e8[ fis] |
  g4 cis, d4 c |
  b2. \bar "|."
}
altoWords = \lyricmode {
  \set stanza = #"Orig. "
  O lit -- tle town of Beth -- le -- hem,
  How still we __ _ see thee lie!
  A -- bove thy deep and dream -- less sleep
  The si -- lent _ stars go by;
  Yet in thy dark streets shin -- eth
  The ev -- er -- last -- ing Light;
  The hopes and fears of all the years
  Are met in thee to -- night.
}

tenorMusic = \relative c' {
  g4 |  g g g g |   gis( a) a c |   b a8[ b] c4 c |  b2. g4 |
  g b b e |  e e e c |  b a8[ b] d4 c |  b2. d4 |
  d b c cis |  dis2 dis4 b |  e, fis g e' |  dis2. d4 |
  d b g g |  gis a a a |  b a8[ g] g4 fis |  g2. \bar "|."
}

bassMusic = \relative c' {
  g4 |  g g g g |   c,( c) c c |  d d d d |  g,2. g'4 |
  g f e e |  a a a, c |  d4. d8 d4 d |  g2. g4 |
  g g a ais |  b2 b4 b, |  e fis g c |  b2. g4 |
  g g g g |  c, c c c |  d e d4 d |  g,2. \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I thought I could sur -- vive the beast but I guess it ate me up.
I'm deep in -- side this dra -- gon now and I think I feel it's guts.
It's ve -- ry warm in here and there are al -- so these bones.
I'm hop -- ing he -- roes can slice it's sto -- mach and take me home.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I thought it would be quite ex -- cit -- ing to vi -- sit dra -- gon's lair.
But I was gob -- bled all up as I was caught quite un -- a -- ware.
That dra -- gon's lair was some -- thing piled high with gold and gems.
I thought I saw some -- thing love -- ly and I want -- ed to win.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
But winn -- ers they are just lose -- rs who have man -- aged to sur -- vive.
And I think I might have a chance if I can a -- void de -- mise.
I thought there was a duck here, but it is just this dross.
The di -- ges -- tive juice they turn your flesh to this gro -- tesque sauce.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I thought it would be fun to ex -- plore the drag -- on's fanc -- y lair.
I saw such ex -- quis -- ite trin -- kets that I could not have dis -- pair.
I thought I would be wealth -- y but now I am so not.
I'm wal -- low -- ing in jui -- ces and I won't have chance to rot.
}

lyricsE = \lyricmode {
  \set stanza = #"5. "
I saw a pile of iv' -- ry in the lair carved and po -- lished bright.
It seems that when we are spat out we will make some -- thing real nice.
I thought that I might steal one and give it to my ma.
As my mom, she likes shi -- ny things and that's the skull of pa.
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

