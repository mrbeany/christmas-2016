\version "2.14.2"

songDedication = \markup {for C.B.}
songTitle = "Food for this Cute Fish"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ Un flambeau, Jeannette, Isabelle}}
tuneComposer = "16th Century French Carol"
tuneSource = \markup{from \italic{The Home and Community Song-Book}, 1922}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key g \major
    \time 3/8
    \tempo "Brightly" 4 = 90
    \autoBeamOff
}

sopMusic = \relative c'' {
  d4 g,8  |  g fis  g |  a b c  |  b4 a8  |
  d4 g,8  |  g fis  g |  a b a  |  g4 r8  |
  d'4 d8  |  d8 c b   |  b a g  | g4 fis8 |
  e fis g |  d4 d8    |  c'4 c8 |  b4 a8 \bar "||"

  g4 r8 |  a4 r8 |  b8 c b |  a4 d8 |  b4 a8 |
  g4 r8 |  a4 r8 |  b  c b |  a4 d8 |  g,4.~ |  g8 r r \bar "|."
}

altoMusic = \relative c'' {
  g4 d8 |   e4 e8 |   e4 e8   |  d4 d8   |
  d4 d8 |   e4 e8 | fis4 fis8 |  g4 s8   |
  g4 g8 | g fis g |  d d cis  |  d4.     |
  e4 e8 |   d4 d8 |  e4 e8    |  d4 fis8 |

  g4 s8 | fis4 s8 | g4 g8 |   a4 fis8 | g4 fis8 |
  g4 s8 |   e4 s8 | d4 e8 | fis4 fis8 | g4.~    |  g8 s4 \bar "|."
}

tenorMusic = \relative c' {
  b4 b8 |  b8( a) b |  a( gis) a |  fis4 fis8 |
  g4 g8 |  b8( a) b |      c4 c8 |    b4 s8   |
  d4 d8 |  d4 d8    |  g, a a    |    a4.     |
  c4 g8 |  g4 g8    |   g4 g8    |  fis4 c'8  |

  b4 s8 | d4 s8  | d8( e) d | d4 d8 | d4 c8 |
  b4 s8 | e,4 s8 | g4 g8    | c4 c8 | b4.~  | b8 s4 \bar "|."
}

bassMusic = \relative c' {
  g4 g8 |  e4 e8  | c( b) a | d4 c8 |
  b4 b8 |  e4 e8  |  d4 d8  | g4 r8 |
  b4 b8 | b( a) g | g fis e | d4.   |
  c4 c8 |  b4 b8  |  a4 a8  | d4 d8 |

  e4 r8 | d4 r8 | g4 g8 | fis4 d8 | g4 d8 |
  e4 r8 | c4 r8 | b4 c8 | d4 d8   | g4.~  | g8 r r \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
    Bring me my food for this __ _ cute fish -- y!
    Bring me my food for this __ _ cute fish!

    This fish -- y looks __ _ oh, so hun -- gry!
    And I think it needs some __ _ good food. Oh, yes! Yes!
    Bring my some ba -- con! Oh, __ _ yes! Yes!
    And per -- _ haps some seeds! __
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    Bring me some -- _ thing love -- ly and sil -- ver.
    This fish, it real -- ly loves __ _ sil -- ver.
    I think that's be -- cause it is a ro -- _ bot of __ _ a fish
    made by some -- one far, far, far a -- way.
    And they dropped it off, off, so that it could ex -- plore. __
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
    Hey, I think I would like __ _ some fish -- es.
    Hey, I think I would like __ _ some fish
    that could fly __ _ through the air __ _
    with wings made of __ _ go -- sim -- mer and feath -- ers.
    May -- be fish -- es could learn to fly through
    the air that would be just the way. __
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
    I think I would like to live with fish -- es
    I think I would like to live with fish.
    I think we __ _ could live in a big hab -- i -- tat down in the deep sea
    and it would be real -- ly cool and we would be nice
    but there would be no, no air. __
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
    I think it might be real -- ly cool 
    and I think, per -- haps we could get some stuff done.
    I will start the gen -- e -- tic ex -- per -- i -- ments
    to cre~ate hu -- mans that can live in wa -- ter
    so that I can be -- come a fish hu -- man
    and that would be swell. __
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
    Hey, I think we might live on for -- ev -- er.
    Hey, I think we might just fin -- ish death.
    If we can on -- ly be -- _ come like fish -- es
    and live in seas
    and live on the al -- gae
    dwel -- ling on the star -- light and sun -- shine.
    I think that would be swell. __
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
}


altoWords = \lyricmode {
  \set stanza = #"1. "
  Bring a torch, __ _ Jean -- nette, Is -- a -- bel -- la!
  Bring a torch, to the cra -- _ dle, run!
  It is Je -- sus, good folk of the vil -- lage;
  Christ _ is born and Ma -- ry’s call -- ing:
  Ah! ah! beau -- ti -- ful is the Moth -- er;
  Ah! ah! beau -- ti -- ful is her Son! __ _
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

