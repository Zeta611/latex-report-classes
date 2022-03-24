\RequirePackage{expl3}
\ProvidesExplClass
  {physreport}
  {2022/03/17}
  {0.1}
  {My custom physics report class}

\LoadClass[korean, twocolumn, 10pt]{myreport}

\newcommand*{\department}[1]{
  \newcommand*{\thedepartment}{#1}
}
\newcommand*{\studentid}[1]{
  \newcommand*{\thestudentid}{#1}
}
\newcommand*{\institute}[1]{
  \newcommand*{\theinstitute}{#1}
}
\newcommand*{\TA}[1]{
  \newcommand*{\theTA}{#1}
}
\newcommand*{\class}[1]{
  \newcommand*{\theclass}{#1}
}
\newcommand*{\expdate}[1]{
  \newcommand*{\theexpdate}{#1}
}

\newcommand*{\maketitlepage}{
  \begin{titlingpage}
    \begin{center}
      \vspace*{3em}
      {\LARGE\textbf{\themodule}}\\[1em]
      {\Huge\thetitle}\\[3em]
      {\Large\thedepartment{}~\theauthor\\\large\thestudentid}\\[1.4em]
      {\Large\theinstitute}
    \end{center}
    \vfill
    % \tableofcontents
    % \vfill
    \begin{flushright}
      \Large
      \begin{tblr}{rl}
        \hline[1pt]
        실험~분반 & \theclass \\
        담당~조교 & \theTA \\
        실험~일자 & \theexpdate \\
        작성~일자 & \thedate \\
        \hline[1pt]
      \end{tblr}
    \end{flushright}
  \end{titlingpage}
}

\setlength{\absleftindent}{0pt}
\setlength{\absrightindent}{0pt}
\abslabeldelim{dafsdf}

\pretitle{
  \begin{center}
    \LARGE
}

\RequirePackage{tabularray}
\UseTblrLibrary{booktabs}

\RequirePackage[font=small]{caption}

\RequirePackage{tikz}

\RequirePackage{siunitx}
