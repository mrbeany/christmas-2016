\version "2.14.2"

songDedication = \markup {for \italic B.E.L. }
songTitle = "Maybe in my lifetime"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic {What Child is This?}}
tuneComposer = "16th Century English Air"
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic{Christmas 2016.}
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
  g4 a8 b8.[ c16] b8 |
  a4 fis8 d8.[ e16] fis8 |
  g4 e8 e8.[ dis16] e8 |
  
  fis4. b,4  e8 |
  g4 a8 b8.[ c16] b8 |
  a4 fis8 d8.[ e16] fis8 |
  g8.[ fis16] e8 dis8.[ cis16] dis8 |
  e4. e |
  
  d'4. d8.[ cis16] b8 |
  a4 fis8 d8.[ e16] fis8 |
  g4 e8 e8.[ dis16] e8 |
  fis4 dis8 b4. |
  
  d'4. d8.[ cis16] b8 |
  a4 fis8 d8.[ e16] fis8 |
  g8.[ fis16] e8 dis8.[ cis16] dis8 |
  e4. e4 \bar "|."
}
  

altoMusic = \relative c' {
  b8 |
  e4 d8 d4 g8 |
  fis4 d8 d4 c8 |
  b4 b8 a4 e'8 |
  
  dis4. b4 b8 |
  e4 d8 d4 g8 |
  fis4 d8 d4 c8 |
  b4 c8 b4 b8 |
  b4. b |
  
  fis' b8.[ a16] g8 |
  fis4 d8 d4 c8 |
  b4 b8 a4 e'8 |
  dis4 b8 b4. |
  
  fis'4. b8.[ a16] g8 |
  fis4 d8 d4 c8 |
  b4 c8 b4 b8 |
  b4. b4 \bar "|."
}

lyricsA  = \lyricmode { 
    \set stanza = #"1." 
    I want to see __ a cool thing.
    Per -- haps a game where __ play -- ers' swing.
    I think per -- haps __ the Cubs might win. __
    But may -- be not~in my life -- time.

    Cubs! Cubs! __ Could you one day __
    win a love -- ly __ game of sports ball?
    Cubs! Cubs! Could you one day win?
    I __ love my~game of sports ball. 
}

lyricsB = \lyricmode { 
    \set stanza = #"2."
    I heard that they __ once won games
    but __ long a -- go and __ far a -- way.
    I've heard that they __ did once win games __
    but ne -- ver in __ my life -- time.

    Cubs! Cubs! __ Will you one day win
    a love -- ly __ game of sports ball?
    Cubs! Cubs! __ Will you one day win?
    I __ love my~game of sports ball. 
}

lyricsC = \lyricmode { 
    \set stanza = #"3."
    I thought I might sur -- vive just long __
    e -- nough to see __ the Cubs win.
    I thought that I __ might have just one __
    chance for~a win in __ my life -- time.

    Cubs! Cubs! __ Might you one day win
    a love -- ly game of sports ball?
    Cubs! Cubs! __ Might you one day win?
    I __ love my~game of sports ball. 
}

lyricsD = \lyricmode {
    \set stanza = #"4." 
    I thought that you might win this game __
    and sure enough, I~could not com -- plain.
    I may be old __ but you did it. __
    And I~saw it with~in my life -- time.

    Cubs! Cubs! I knew you would win the love -- ly game of sports ball!
    Cubs! Cubs! You real -- ly won the love -- ly game __ of sports ball.

}

tenorMusic = \relative c' {
  g8 |
  b4 a8 g4 b8 |
  d4 a8 fis4 a8 |
  g4 g8 e4 e8 |
  
  b'4. b4 g8 |
  b4 a8 g4 b8 |
  d4 a8 fis4 a8 |
  g4 a8 fis4 fis8 |
  g4. g |
  
  b4. d4 d8 |
  d4 a8 fis4 a8 |
  g4 g8 a4 e8 |
  b'4 fis8 b4. |
  
  b d4 d8 |
  d4 a8 fis4 a8 |
  g4 a8 fis4 fis8 |
  g4. g4 \bar "|."
}

bassMusic = \relative c {
  e8 |
  e4 fis8 g4 g8 |
  d4 d8 d4 dis8 |
  e4 e8 c4 c8 |
  
  b4. b'4 e,8 |
  e4 fis8 g4 g8 |
  d4 d8 d4 dis8 |
  e4 a,8 b4 b8 |
  e4. e |
  
  b' g4 g8 |
  d4 d8 d4 dis8 |
  e4 e8 c4 c8 |
  b4 b8 b4. |
  
  b' g4 g8 |
  d4 d8 d4 dis8 |
  e4 a,8 b4 b8 |
  e4. e4 \bar "|."
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
            \new Lyrics  \lyricsto "sopranos" \lyricsA
            \new Lyrics  \lyricsto "sopranos" \lyricsB
            \new Lyrics  \lyricsto "sopranos" \lyricsC
            \new Lyrics  \lyricsto "sopranos" \lyricsD
        >>
        \layout { } 
%       \midi { }
    }
}

