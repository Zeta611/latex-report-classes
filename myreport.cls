\RequirePackage{expl3}
\ProvidesExplClass
  {myreport}
  {2022/03/10}
  {0.2}
  {My custom report class}

\RequirePackage{l3keys2e}
\keys_define:nn { module } {
  korean  .bool_set:N = \l_myreport_korean_bool,
  twocolumn .bool_set:N = \l_myreport_twocolumn_bool,
  10pt .bool_set:N = \l_myreport_tenpt_bool,
}
\ProcessKeysOptions { module }

\LoadClass [ a4paper, microtype
  \bool_if:NF \l_myreport_korean_bool { ,nokorean }
  \bool_if:NT \l_myreport_twocolumn_bool { ,twocolumn }
  \bool_if:NT \l_myreport_tenpt_bool { ,10pt }
] { oblivoir }
\OnehalfSpacing

\RequirePackage{kotex}

\newcommand*{\module}[1]{
  \newcommand*{\themodule}{#1}
}

\pretitle{
  \begin{center}
    \textsc{\Large\themodule}\\
    \LARGE
}
\posttitle{
  \end{center}\vskip0.5em%
}

%%% Math settings
\RequirePackage{amssymb,amsmath} % Before unicode-math
\RequirePackage[math-style=TeX,bold-style=TeX]{unicode-math}

\newfontfamily{\fallbackfont}{EB~Garamond}
\DeclareTextFontCommand{\textfallback}{\fallbackfont}
\RequirePackage{newunicodechar}
\newunicodechar{⩴}{\textfallback{⩴}}

%% Font settings
\bool_if:NTF \l_myreport_korean_bool
  {
    \setmainfont{Libertinus~Serif}[Scale=1.13]
    \setsansfont{Libertinus~Sans}[Scale=MatchUppercase]
    \setmonofont{Inconsolata}[Scale=MatchLowercase]

    \setmathfont{Libertinus~Math}[Scale=MatchUppercase] % Before set*hangulfont

    \setmainhangulfont{Noto~Serif~CJK~KR}
    \setsanshangulfont[BoldFont={*~Bold}]{KoPubWorldDotum_Pro}
    \setmonohangulfont{D2Coding}[Scale=MatchLowercase]
  }
  {
    \setmainfont{Libertinus~Serif}
    \setsansfont{Libertinus~Sans}[Scale=MatchUppercase]
    \setmonofont{Inconsolata}[Scale=MatchLowercase]

    \setmathfont{Libertinus~Math}[Scale=MatchUppercase] % Before set*hangulfont

    \setmainhangulfont{Noto~Serif~CJK~KR}[Scale=.885]
    \setsanshangulfont[BoldFont={*~Bold}]{KoPubWorldDotum_Pro}[Scale=.885]
    \setmonohangulfont{D2Coding}[Scale=MatchLowercase]
  }

%% Custom packages
\RequirePackage[per-mode=symbol]{siunitx}
\RequirePackage{tikz}

\RequirePackage{tabularray}
\UseTblrLibrary{booktabs}
\UseTblrLibrary{siunitx}

\RequirePackage{hyperref}

\RequirePackage[font=small]{caption}
