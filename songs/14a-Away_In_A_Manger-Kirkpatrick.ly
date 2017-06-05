\version "2.14.2"

songDedication = \markup {for M.F.}
songTitle = "Football"
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
  \partial 4 c4 |
  f f g8 a |  f4 f a8 bes |  c4 c d |  bes2 g8  a  |  bes4 bes c |
  a a f8 a |  g4 d f |  e2 c4 |  f f g8 a |  f4 f a8 bes |

  c4 c d |  bes2 g8 a |  bes4 bes c |
  a4 a f8[ a] |  g4 d e |
  f2 \bar "|."
}


altoMusic = \relative c' {
  c4 |  a a e' |  a, a a8[ c] |  f4 f f |
  g2 d4 |  g d e |  f f d |

  d d c |  c2 c4 |  a a e' |  a, a a8[ c] |
  f4 f f |  g2 d4 |  g d e |  f f d |  d d bes |
  c2 \bar"|."
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  A -- way in a __ _ man -- ger,
  No crib for His bed,
  The __ _ lit -- tle Lord Je -- sus
  Laid __ _ down His sweet head:
  The stars in the heav -- ens
  Look’d __ _ down where He lay,
  The __ _ lit -- tle Lord Je -- sus
  A -- sleep in the hay.
}

tenorMusic = \relative c' {
  c4 |  c d g, |  c c c8[ g] |  a4 a bes |
  d2 c4 |  d g, g |  a a a8[ f] |

  bes4 bes g |  g2 c4 |  c d g, |  c c c8[ g] |  a4 a bes |
  d2 c4 |  d g, g |  a a a8[ f] |  bes4 bes c |
  a2 \bar"|."
}


bassMusic = \relative c {
  c4 |  f d c |  d f f8[ e] |  f4 f bes, |
  g'2 g4 |  g g c, |  d d d |

  g g c, |  e8([ d] c4) c4 |  f d c |  d f f8[ e] |
  f4 f bes, |  g'2 g4 |  g g c, |  d d d |  g g g8[ c,] |
  f2 \bar"|."
}


lyricsA = \lyricmode {
    \set stanza = #"1. "
    Foot -- ball is the __ _ best sport
    be -- _ cause they're so keen.
    They know their games need mo -- ney
    but not all are the same.
    So they share all their mo -- ney
    in a soc -- ial -- ist way
    and it makes for the best games,
    as __ I like to say.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    I thought that per -- haps base -- ball
    was the A -- mer~i -- can game.
    But it's greed -- y
    just like U. S. for -- eign pol -- i -- cy.
    But not for good old foot -- ball
    for as can clear -- ly see,
    the Non -- profit Foot -- ball League,
    yes, it __ does right by me.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
    I thought that per -- haps what I need -- _ ed to __ _ 
    see was some foot -- ball for me on the __ _ foot -- ball T. V.
    My T. V. was shap'd like a foot -- _ ball in my mind.
    Ex -- cept it could show~the whole screen or __ so I did find.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
    I thought that per -- haps foot -- ball __ was the best game to see.
    I liked to sit and watch it while I was drink -- ing tea.
    I thought that per -- haps I might enjoy for -- eign pol -- i -- cy.
    But it was greed -- y, just like I __ see on T. V.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
    Those base -- ball teams are greed -- y
    just like for -- eign pol~i -- cy.
    They're not like foot -- ball
    as play'd in the non -- pro -- fit league.
    I like foot -- ball __ _ be -- cause 
    they're so so -- cial -- ist, see.
    It is quite nice be -- cause it levels all fields for me.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
    I like to watch my foot -- ball and I like that I see
    all those love -- ly men~in their un -- i -- forms for me
    to ogle while they chase~that pig -- _ skin on T. V.
    though I thought it might be bet -- ter if there were more for me to see.
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
    I won -- der if they could go back to Greek metho -- dolo -- gy
    where they all played in the nude
    and __ _ greased up their sleeves.
    Ex -- cept they wore no sleeves
    be -- cause they just greased their skin.
    And it would make for such slip -- per -- y things to see.
}

lyricsH = \lyricmode {
    \set stanza = #"8. "
    I want -- ed to do some -- thing while all of them just screamed.
    I thought per -- haps foot -- ball food, that it might be quite keen.
    They all make such great yummy things for the big gam -- ing scene.
    Want -- ing just to eat such food was__ my on -- ly dream.
    
    I wanted to do some -- thing sup -- er nice.
    Like watch foot ball and watch them all greased up sublime.
    But they were wearing way too much padding as I could see.
    There was nothing for me...
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

