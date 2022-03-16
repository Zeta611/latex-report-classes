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
}
\ProcessKeysOptions { module }

\LoadClass [ a4paper, microtype
  \bool_if:NF \l_myreport_korean_bool { ,nokorean }
  \bool_if:NT \l_myreport_twocolumn_bool { ,twocolumn }
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
\setmainfont{Libertinus~Serif}[Scale=1.13]
\setsansfont{Libertinus~Sans}[Scale=1.13]
\setmonofont{Inconsolata}[Scale=1.13]

\setmathfont{Libertinus~Math}[Scale=1.13] % Before set*hangulfont

\setmainhangulfont{Noto~Serif~CJK~KR}
\setsanshangulfont[BoldFont={*~Bold}]{KoPubWorldDotum_Pro}
\setmonohangulfont{D2Coding}

%% Custom packages
\usepackage{tabularray}
\usepackage{hyperref}
