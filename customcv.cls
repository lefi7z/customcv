% This is a simple but custom design that I use 
% for my curriculum vitae. It follows the guidelines
% by James Allen (https://www.overleaf.com). 
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{customcv}[2020/09/01 A custom curriculum vitae class]
\RequirePackage{titlesec}

\titleformat{\section}
  {\Large\scshape\raggedright}  % section font
  {}{0em}			% no prefix
  {}				% can be used to insert code before..
  []				% ..or after the heading


\newcommand{\cvsection}[1]{%
  \section*{#1}
}

\newcommand{\cvsubsection}[4]{%
   \begin{tabular}{p{3.5cm}|l}
             #1      & \bf{#3}
       \\ \qquad- #2 & \quad \footnotesize{#4} \\
   \end{tabular} \\
}
