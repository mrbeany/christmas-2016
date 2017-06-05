\version "2.14.2"

songDedication = \markup {for C.W.}
songTitle = "Have You Seen the Zombie Horde?"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{Angels We Have Heard on High}}
tuneComposer = "18th Century French Carol"
tuneSource = \markup{from \italic{Carols Old and Carols New}, 1916}

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
    \tempo 4 = 120
}

sopMusic = \relative c'' {
  b4 b b d |  d4. c8 b2 |  b4 a b d |  b4. a8 g2 |
  b4 b b d |  d4. c8 b2 |  b4 a b d |  b4. a8 g2 |
  d'2 e8 d c b |  c2 d8 c b a |  b2 c8 b a g |  a4. d,8 d2 |
  g4 a b c |  b2 a |   d2 e8 d c b |  c2 d8 c b a |
  b2 c8 b a g |  a4. d,8 d2 |  g4 a b c |  b2 a |  g2. b4\rest \bar "|."
}


altoMusic = \relative c'' {
  g4 g g g |  fis4. fis8 g2 |  g4 g g g |  fis4. fis8 g2 |
  g4 fis g g |  fis4. fis8 g2 |  g4 g g g |  fis4. fis8 g2 |
  g4( b8[ a] gis4 e~ |  e a8[ g] fis4 d~ |  d g8[ fis] e4 c~ |  c4.) d8 d2 |
  d4 d d e |  d( g) g( fis) |  g4( b8[ a] gis4 e~ |  e a8[ g] fis4 d~ |
  d g8[ fis] e4 c~ |  c4.) d8 d2 |  d4 d d e |  d( g2 fis4) |  d2. s4 \bar "|."
}


altoWords = \lyricmode {
    \set stanza = #"Orig. "
    An -- gels we have heard on high,
    Sweet -- ly sing -- ing o’er the plains;
    And the moun -- tains in re -- ply
    Ech -- o -- ing their joy -- ous strains.
    Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri --  a  in  ex --  cel --  sis  De --  o, __
    Glo -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ri --  a  in  ex --  cel --  sis  De --  _ o! __
}


tenorMusic = \relative c' {
  d4 d d d |  c d d2 |  d4 c d b |  d c b2 |
  d4 d e8[ d] c[ b]  c4 d d2 |  d4 e d b |  d c b2 |
  b2( e~ |  e d~ |  d c |  a4) g fis2 |
  g4 fis g g |  g( b) d4.( c8) |  b2( e~ |  e d~ |
  d c |  a4) g fis2 |  g4 fis g g |  g( b d4. c8) |  b2. s4 \bar "|."
}


bassMusic = \relative c' {
  g4 g g b |  a d, g2 |  g4 g g g |  d d g2 |
  g4 b e8[ d] c[ b] |  a4 d, g2 |  g4 c b g |  d d g2 |
  g2( e4 gis |  a2 d,4 fis |  g2 c,4 e |  fis) e d( c) |
  b a g c |  d2 d |  g2( e4 gis |  a2 d,4 fis |
  g2 c,4 e |  fis) e d( c) |  b a g c |  d1 |  g2. d4\rest \bar "|."
}


lyricsA = \lyricmode {
    \set stanza = #"1. "
Have you seen the zom -- bie horde?
It is just a zom -- bie horde
look -- ing for things to de -- vour.
Your flesh, my flesh and the dog.
I want to eat the zombies
be -- cause they want to eat me right __ _ back,
you see. Mu -- tu -- al -- ly eat -- ing.
I want to eat the zombies
because they want to eat me.
Mu -- tu -- al eating, you see.
Then we could all be well fed.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I would like to eat that dog.
What is wrong with his old knob?
I thought it was just a dog,
but mu -- tants, they're in the hall.
I thought these were just zombies
but these are not zombies.
They are real -- ly mu -- tant beasts.
How can I kill them all?
I thought that these were zombies,
but they are real -- ly strange
hor -- rib -- le mu -- tant beasts.
How do I kill them for sure?
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I think it might be real fun,
grab -- bing guns while on the run.
If it's just a vi -- deo game
it would certain -- ly not be lame.
But, please, don't send me out.
I don't want to die.
I think it is happ' -- ning now.
If it's just a game, but
I think I saw some -- thing strange
in the bushes eat -- ing flesh
and making rip -- ping sounds.
Please don't let them eat me, no.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I think it might be real nice
eat -- ing flesh and jump -- ing thrice
as high as I e -- ver could.
Mu -- tant pow -- ers, X -- men now.
I think I would like super pow -- ers
if I just got some of that mu -- tant stuff.
May -- be I would not turn.
I would hope that I could be mostly hu -- man,
but if I wasn't, then so~what, I guess.
At least I would be real cool.
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


