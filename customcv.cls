% This is a simple but custom design that I use 
% for my curriculum vitae. It follows the guidelines
% by James Allen (https://www.overleaf.com). 
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{customcv}[2020/09/13 A custom curriculum vitae class]

\RequirePackage{titlesec}
\RequirePackage[x11names]{xcolor}
\RequirePackage[top=2cm,bottom=2cm,left=2cm,right=2cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{enumitem}
\RequirePackage{hyperref}

\hypersetup{
	colorlinks=true,
	urlcolor=cyan,
	filecolor=magenta,
}

\setlist{nolistsep}	% more compact itemizations
\thispagestyle{empty}  	% no need for site enumeration!

\titleformat{\section}
  {\Large\scshape\raggedright}  % section font
  {}{0em}			% no prefix
  {}				% can be used to insert code before..
  []				% ..or after the heading


\newcommand{\cvsection}[1]{% sectiontitle
  \section*{#1}
}

\newcommand{\cvsubsection}[4]{% from, to, title, description
   \begin{tabular}{p{3.5cm}|l}
             #1      & \bf{#3}
       \\ \qquad- #2 & \quad \footnotesize{#4} \\
   \end{tabular} \\
}

\newcommand{\cvheader}[5]{% name, contact (3x), picture
  \begin{minipage}{0.55\textwidth}
    \begin{flushleft}
      \textsc{\huge{#1}} \\
      \vspace{0.8cm}
	#2 \\
      \vspace{0.4cm}
	#3 \\
      \vspace{0.4cm}
	#4 \\
    \end{flushleft}
  \end{minipage}
  \begin{minipage}{0.4\textwidth}
    \begin{flushright}
      \raisebox{0.1cm}{\includegraphics[height=5cm]{#5}}
    \end{flushright}
  \end{minipage}
  \hfill
  \vspace{0.4cm}
  {\color{Azure2}\par\noindent\rule{\textwidth}{5.4pt}}
}
