
albumTagline = \markup \abs-fontsize #8 { for \italic{Christmas 2016.}
                        If you can do better, fork it from
                        \with-url #"https://github.com/mrbeany/christmas-2016" {
                            https://github.com/mrbeany/christmas-2016
                        }
                      }

% "../book" works when building from either "book" or "songs" directories
albumCopyright = \markup {
    \column { \line {
        \abs-fontsize #8 \column {
            \vspace #0.5
            \line { Please duplicate, }
            \line { share, and use. }
        }
        \column {
            \with-url #"http://creativecommons.org/licenses/by/4.0/" {
                \general-align #Y #UP {
                    \epsfile #Y #4 #"../book/CC-BY.eps"
                }
            }
        }
        \abs-fontsize #8 \column {
            \vspace #0.5
            \line {
              \with-url #"http://creativecommons.org/licenses/by/4.0/" {
                  This work is licensed under a Creative Commons
              }
            }
            \line {
              \with-url #"http://creativecommons.org/licenses/by/4.0/" {
                  Attribution 4.0 International License.
              }
            }
        }
    }
}}


