\RequirePackage{expl3}
\ProvidesExplClass
  {highlights}
  {2022/03/17}
  {0.1}
  {Summarize key concepts}

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

\RequirePackage[skins]{tcolorbox}
\tcbuselibrary{xparse, breakable}
\NewTColorBox { concept } { m }
  {
    enhanced~jigsaw,
    breakable,
    colframe = niceorange,
    colback = niceorange!12,
    title = #1
  }
