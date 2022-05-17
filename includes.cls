\ProvidesClass{includes}[2020/02/18 CV]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{scrartcl}
}
\ProcessOptions\relax
\LoadClass{scrartcl}

\usepackage[english,spanish]{babel}
\usepackage[utf8x]{inputenc}
\usepackage[default,scale=0.95]{opensans}
\usepackage[T1]{fontenc}

\usepackage[protrusion=true,expansion=true]{microtype}
\usepackage{amsmath,amsfonts,amsthm}
\usepackage[pdftex]{graphicx}
\usepackage{wrapfig}
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}

\usepackage{sidecap}
\usepackage{geometry}
\usepackage{url}
\usepackage{float}

\usepackage{dirtytalk}

% Better looking spacings after periods
\frenchspacing

% Hyperlinks
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=cyan,
}

% No pagenumbers/headers/footers
\pagestyle{empty}

% Color definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{191919}
\definecolor{headings}{HTML}{025178}
\definecolor{subheadings}{HTML}{002648}

% Custom sectioning (sectsty package)
\usepackage{sectsty}
\sectionfont{\usefont{OT1}{phv}{b}{n}\sectionrule{0pt}{0pt}{-5pt}{3pt}}
\subsectionfont{\color{headings}\usefont{OT1}{phv}{b}{n}}
\subsubsectionfont{\sectionrule{0pt}{0pt}{-5pt}{3pt}}

% Remove numbers from sections
\renewcommand{\@seccntformat}[1]{%
	\ifcsname prefix@#1\endcsname
	\csname prefix@#1\endcsname
	\else
	\csname the#1\endcsname\quad
	\fi}
\newcommand\prefix@section{}

% Macros
% ------------------------------------------------

% If english is true use it, otherwise use spanish
\newif\ifen
\newcommand{\en}[2]{\ifen#1\else#2\fi}

% Skill levels
\newcommand{\basic}[0]{\ifen{Basic}\else{Básico}\fi}
\newcommand{\intermediate}[0]{\ifen{Intermediate}\else{Intermedio}\fi}
\newcommand{\advanced}[0]{\ifen{Advanced}\else{Avanzado}\fi}
\newcommand{\beginner}[0]{\ifen{Beginner}\else{Principiante}\fi}
\newcommand{\native}[0]{\ifen{Native}\else{Nativo}\fi}
\newcommand{\professional}[0]{\ifen{Professional}\else{Profesional}\fi}

% Box style
\newlength{\spacebox}
\settowidth{\spacebox}{8888888888} % Box to align text
\newcommand{\sepspace}{\vspace*{1em}} % Vertical space macro

\newcommand{\MyName}[1]{
	\huge \usefont{OT1}{phv}{b}{n} \hfill \textcolor{headings}{#1}
	\par \normalsize \normalfont
}

\sectionfont{\color{headings}}
\newcommand{\NewPart}[2]{\en{\section{\uppercase{#1}}}{\section{\uppercase{#2}}}}

\newcommand{\SkillsEntry}[2]{      % Same as \PersonalEntry
	\noindent\hangindent=2em\hangafter=0 % Indentation
	\parbox{\spacebox}{        % Box to align text
	\textit{#1}}               % Entry name (birth, address, etc.)
	\hspace{1.5em} #2 \par     % Entry value
}

\newcommand{\WorkEntry}[9]{
	\begin{minipage}{0.08\linewidth}
		\includegraphics[width=1.2cm] {#9}
	\end{minipage}%
	\begin{minipage}{0.84\linewidth}
		\noindent {\color{subheadings}\bfseries\uppercase {\en{#1}{#2}}}, {\color{subheadings}\textit{\en{#3}{#4}}}
		\hfill {\color{headings}\fontsize{10pt}{12pt}\en{#5}{#6}}
		\par
		\noindent\hangindent=2em\hangafter=0 \small \en{#7}{#8} % Description
		\normalsize \par
	\end{minipage}
}

\newcommand{\EducationEntry}[9]{
	\begin{minipage}{0.08\linewidth}
		\includegraphics[width=1.2cm] {#9}
	\end{minipage}%
	\begin{minipage}{0.84\linewidth}
		\noindent {\color{subheadings}\bfseries\uppercase {\en{#1}{#2}}}
		\hfill {\color{headings}\fontsize{10pt}{12pt}\en{#3}{#4}}
		\par
		\noindent {\color{subheadings}\textit{\en{#5}{#6}}} \par
		\noindent\hangindent=2em\hangafter=0 \small \en{#7}{#8} % Description
		\normalsize \par
	\end{minipage}
}

\newcommand{\flag}[1]{
	\includegraphics[height=9pt, width= 15pt]{#1}
}

\newcommand{\software}[1]{
	\includegraphics[height=9pt]{#1}
}

\newcommand{\softwareb}[1]{
	\raisebox{-.6\height}{\includegraphics[height=18pt]{#1}}
}
