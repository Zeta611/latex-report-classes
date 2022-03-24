\RequirePackage{expl3}
\ProvidesExplClass
  {highlights}
  {2022/03/17}
  {0.1}
  {Summarize key concepts}

\RequirePackage{l3keys2e}
\keys_define:nn { highlights } {
  testmode .bool_set:N = \l_highlights_testmode_bool,
}
\ProcessKeysOptions { highlights }

\LoadClass[a4paper]{article}

%%% Math settings
\RequirePackage{amssymb, amsmath} % Before unicode-math
\RequirePackage[math-style=TeX, bold-style=TeX]{unicode-math}

%% Font settings
\RequirePackage{fontspec}
\setmainfont{Libertinus~Serif}
\setsansfont{Libertinus~Sans}
\setmonofont{Inconsolata}
\setmathfont{Libertinus~Math}

%% Custom packages
\RequirePackage{xcolor}
\definecolor{niceorange}{HTML}{F8A092}
\colorlet{niceorangeback}{niceorange!12}
\colorlet{memorizecolor}{black}

\RequirePackage[skins]{tcolorbox}
\tcbuselibrary{xparse, breakable}
\NewTColorBox { concept } { m }
  {
    enhanced~jigsaw,
    breakable,
    colframe = niceorange,
    colback = niceorangeback,
    title = {#1}
  }

\NewDocumentCommand { \memorize } { m }
  {
    \textcolor{memorizecolor}{#1}
  }

\AtBeginDocument{
  \bool_if:NT \l_highlights_testmode_bool
    { \colorlet{memorizecolor}{niceorangeback} }
}
