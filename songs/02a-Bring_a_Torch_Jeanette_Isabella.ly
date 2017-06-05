\version "2.14.2"

songDedication = \markup {for M.A.}
songTitle = "Butterflies"
songPoet = "S.W. Black"

tuneArranger = \markup{ Tune is \italic{Un flambeau, Jeannette, Isabelle}}
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
}

sopMusic = \relative c'' {
  d4 g,8 |  g fis  g |  a b c |  b4 a8 |  
  d4 g,8 |  g fis  g |   a b a |  g4 r8 |
  
  d'4 d8 |
  d8 c b |
  b a g | 
  g4 fis8 | 
  
  e fis g |
  d4 d8 |
  c'4 c8 |
  b4 a8 \bar "||"
  
  g4 r8 |
  a4 r8 | 
  b8 c b | 
  a4 d8 |
  b4 a8 |
  
  g4 r8 |
  a4 r8 |
  b c b |
  a4 d8 |
  g,4.~ |
  g8 r r \bar "|."
}

altoMusic = \relative c'' {
  g4 d8 |
  e4 e8 |
  e4 e8 |
  d4 d8 |
  
  d4 d8 |
  e4 e8 | 
  fis4 fis8 |
  g4 s8 |
  
  g4 g8 |
  g fis g |
  d d cis |
  d4. |
  
  e4 e8 |
  d4 d8 |
  e4 e8 |
  d4 fis8 |
  
  g4 s8 |
  fis4 s8 |
  g4 g8 |
  
  
  a4 fis8 |
  g4 fis8 |
  
  g4 s8 |
  e4 s8 |
  d4 e8 |
  fis4 fis8 |
  g4.~ |
  g8 s4 \bar "|."
}

tenorMusic = \relative c' {
  b4 b8 |
  b8( a) b |
  a( gis) a |
  fis4 fis8 |
  
  g4 g8 |
  b8( a) b |
  
  
  c4 c8 |
  b4 s8 |
  
  d4 d8 |
  d4 d8 |
  g, a a |
  a4. |
  
  
  c4 g8 |
  g4 g8 |
  g4 g8 |
  fis4 c'8 |
  
  b4 s8 |
  d4 s8 |
  d8( e) d |
  
  
  d4 d8 |
  d4 c8 |
  
  b4 s8 |
  e,4 s8 |
  g4 g8 |
  c4 c8 |
  b4.~ |
  b8 s4 \bar "|."
  
}

bassMusic = \relative c' {
  g4 g8 |
  e4 e8 |
  c( b) a |
  d4 c8 |
  
  b4 b8 |
  e4 e8 |
  
  d4 d8 |
  g4 r8 |
  
  b4 b8 |
  b( a) g |
  g fis e |
  d4. |
  
  
  c4 c8 |
  b4 b8 |
  a4 a8 |
  d4 d8 |
  
  e4 r8 |
  d4 r8 |
  g4 g8 |
  
  
  fis4 d8 |
  g4 d8 |
  
  e4 r8 |
  c4 r8 |
  b4 c8 |
  d4 d8 |
  g4.~ |
  g8 r r \bar "|."
}



lyricsA = \lyricmode { 
    \set stanza = #"1. "
    But -- ter -- flies could you turn a poor hu -- man?
    But -- ter -- flies could you make me one~of you?
    I  want to be a lit -- _ tle but --_  ter -- fly 
    and fly a -- round all day 
    and flit --  ter flut -- ter my wings and fly a -- long
    and dance in the gar -- den light. __
}

lyricsB = \lyricmode { 
    \set stanza = #"2. "
    But -- ter -- flies would you stay in my gar -- den
    But -- ter -- flies, would you eat that milk -- weed.
    I  plan -- ted that milk -- weed __ _ just for __ _ you yes -- ter -- day
    but it is full grown  now. 
    I hope that you en -- joy eat -- ing it.
    Yum~my milk -- weed it is so great. __
}

lyricsC = \lyricmode { 
    \set stanza = #"3. "
    But -- ter -- flies would you come a -- gain next year
    But -- ter -- flies would you come a -- gain then
    I  know that the fall  chill makes you  go a -- way for a while
    and some -- times die and that's sad
    I want you to live for -- ev -- er
    but your kids will be here soon. __
}

lyricsD = \lyricmode { 
    \set stanza = #"4. "
    But -- ter -- flies do you like my __ _ song __ _
    But -- ter -- flies would you like __ _ my song
    I've __ _ been prac -- tic -- ing it for so long
    and __ _ I hope that you might like it, yes, yes.
    Please would you like my lit -- tle song
    Yes. Please would you like my song. __
}

lyricsE = \lyricmode { 
    \set stanza = #"5. "
    But -- ter -- flies would you stay in my gar -- den?
    But -- ter -- flies would you stay all sum -- mer?
    I  would like to play  in __ _ my gar -- _ den
    and __ _ see you dance a -- round in sun -- light
    sit -- ting a -- top the flow -- ers so bright
    eat -- ing their nice pol -- len. __
}

lyricsF = \lyricmode { 
    \set stanza = #"6. "
    Let's plant flo -- wers all in the gar -- _ den
    Let's plant so __ _ ma -- ny that  we sneeze.
    I  would like to have so ma -- _ ny
    flow -- _ ers  in the gar -- _ den so the but -- ter --
    flies will have some -- thing to eat.
    Yum -- my pol -- len for them to eat. __
}

lyricsG = \lyricmode { 
    \set stanza = #"7. " 
    Look at all of these lo -- ver -- ly flow -- ers
    Look at all these lo -- ver -- ly flow -- ers.
    I  would like to set some __ _ a -- side
    and not __ _ pick them or bring them in -- side
    so but ter -- flies can find them  and eat them
    Yes, they can eat the pol -- len. __
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
%       \midi { }
    }
}

