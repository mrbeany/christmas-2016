\version "2.14.2"

songDedication = \markup {for C.B.}
songTitle = "Eat Lovely Things"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{God Rest You Merry, Gentlemen} }
tuneComposer = "Traditional"
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key g \major
    \time 2/2
    \tempo 4 = 130
}

sopMusic = \relative c' {
    \partial 4
    e4 |
    e b' b a |
    g fis e d |
    e fis g a |
    b2.  e,4 |
    
    e b' b a |
    g fis e d |
    e fis g a |
    b2 b4\rest  b |
    
    c a b c |
    d e b a |
    g e fis g |
    a2 
    
    g4 a |
    b2 c4 b |
    b a g fis |
    e2 g8 \noBeam fis e4 |
    a2 g4 a |
    b c d e |
    b a g fis |
    e2. 
}

altoMusic = \relative c' {
  e4 |
  e g fis dis |
  e( d?) c b |
  e dis e e |
  dis2. e4 |
  
  e g fis dis |
  e( d?) c b |
  e dis e e |
  dis2 s4 e |
  
  e d d g |
  f( e) d dis |
  e cis d g |
  fis2 
  
  g4( d) |
  d2 e4 d |
  g( fis) e dis |
  e2 b8\noBeam b cis4 |
  d2 e4( fis) |
  g2 g4 g |
  g( fis) e dis |
  e2.
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I like to eat love -- ly things, love -- ly things __ _ all day. __ _
I want to eat love -- ly things __ _ in a love -- ly way. __ _
Love -- ly, love -- ly, love -- ly, love -- ly things for you. __ _
I think you might love to eat some -- thing love -- ly, love -- ly too.
Yes, I think you might like to eat some -- thing love -- ly, too. 
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    I think we all might en -- joy 
to eat some -- thing quite nice. __ _
Have you con -- si -- dered mice and some -- thing fro -- zen in some rice?
I think that it might quench your thirst if you would give it chance.
And if you like it, I can bring some more o -- ver from France
Yes, if you like it I'll bring more from __ _ France. 
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Have you consi -- dered lo -- custs? They are a kosh -- er, kos -- her dish.
I think they might like taste quite like some -- thing crunch -- y in~a dish.
They are real -- ly nice to snack on, if they have eat -- en crops.
But not if they have scour -- ed flesh from rocks, not __ _ from rocks.
Do not eat them if they've scour -- ed flesh from rocks. 
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I think you might've con -- fus'd some -- thing like lo -- custs with a bunch
of nas -- ty sli -- my crit -- ters com -- ing o -- ver from __ _ space.
The space crit -- ters want to eat us and I am pret -- ty sure
that it will be sad when they're out the door, out __ _ the door.
It will be quite sad when they are out the door. 
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
I think you might like to eat some -- thing that is not mov -- ing.
I don't eat mov -- ing food and I have heard that it can sting.
Well, at least if it has a sting -- er or a tail __ _ swash
or per -- haps claws to poke and grip your tongue, ton -- sils and such.
Per -- haps if it has claws to poke and to crunch. 
}

altoWords = \lyricmode {
    \set stanza = #"Orig."
    God rest you mer -- ry, 
    gen -- tle -- men,
    Let noth -- ing you dis -- may,
    Re -- mem -- ber Christ our Sav -- _ ior Was born on Christ -- mas Day,
    To save us all from
    Sa -- tan’s 
    pow’r When we were gone a -- stray;
    O __ _ ti -- dings of com -- _ fort and joy, com -- fort and joy, O __ _ ti -- _ dings of com -- _ fort and joy. 
}

tenorMusic = \relative c {
  e4 |
  g e fis b |
  \slurDotted b( b) g g |
  \slurSolid
  g b b e, |
  fis2. e4 |
  
  g e fis b |
  \slurDotted b( b) g g |
  \slurSolid
  g b b e, |
  fis2 s4 g |
  
  a a g g |
  \slurDotted g( g) g fis |
  \slurSolid
  g g a d |
  d( c) 
  
  b( a) |
  g2 g4 g |
  d'( c) b b |
  g2 g8\noBeam g g4 |
  fis( a) d( c) |
  b( g) d' c |
  d( c) b b |
  g2.
}


bassMusic = \relative c {
  e4 |
  e e dis b |
  \slurDotted e( b) c g |
  \slurSolid
  c b e c |
  b2. e4 |
  
  e e dis b |
  \slurDotted e( b) c g |
  \slurSolid
  c b e c |
  b2 d4\rest e |
  
  a fis g e |
  \slurDotted b( c) g b |
  \slurSolid
  e e d b |
  d2 
  
  e4( fis) |
  g2 c,4 g' |
  g,( a) b b |
  e2 e8\noBeam e e4 |
  d( c) b( a) |
  g( e') b c |
  g( a) b b |
  e2.
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>

        \layout { } 
%        \midi { }
    }
}



