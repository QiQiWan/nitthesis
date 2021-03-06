%%%%%%%%%%% NitThesis %%%%%%%%%%%
%%%	Designed by EatRice-万琪伟
%%% Contact: 1521371275@qq.com
%%% Thanks for the help from: 园, Ellie Badge, Saino, 金融21叶静雯

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nitthesis}
% Inherit from the article class
\LoadClass[UTF8, 12pt,twoside,a4paper]{ctexart}

% Add packages
\RequirePackage{amssymb,mathrsfs,amsmath}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{graphicx} % Figure
\RequirePackage{float} % The position of a figure
\RequirePackage{subcaption} % subfigure
\usepackage{varioref}\captionsetup{subrefformat=parens}\labelformat{subfigure}{\thefigure(#1)}

\RequirePackage[colorlinks,linkcolor=blue]{hyperref}% code block
\RequirePackage{xcolor}
\RequirePackage[normalem]{ulem}

\RequirePackage{titletoc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fancyhdr}

\RequirePackage{setspace}
% The support for a long table
\RequirePackage{longtable}
% Modify the format of enumrate environment
\RequirePackage{enumitem}

\RequirePackage{listings}
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\definecolor{deeppink}{RGB}{255, 20, 147}
\lstset{
	numbers=left,  
	frame=tb,
	aboveskip=3mm,
	belowskip=3mm,
	showstringspaces=false,
	columns=flexible,
	framerule=1pt,
	rulecolor=\color{gray!35},
	backgroundcolor=\color{gray!5},
	basicstyle={\ttfamily},
	numberstyle=\tiny\color{gray},
	keywordstyle=\color{blue},
	commentstyle=\color{dkgreen},
	stringstyle=\color{mauve},
	breaklines=true,
	breakatwhitespace=true,
	tabsize=3,
}
\linespread{1.5}
\definecolor{GrayShell}{RGB}{248, 248, 248}
\newcommand{\Code}[1]{
	\hl{ #1 }
}

\newcommand\hl{\bgroup\markoverwith
  {\textcolor{GrayShell}{\rule[-.5ex]{2pt}{2.5ex}}}\ttfamily \color{deeppink}\ULon}

\newcommand{\CodeBlock}[1]{
	\linespread{1}
	\begin{lstlisting}
#1
	\end{lstlisting}
	\linespread{1.5}
}


\RequirePackage{a4wide}

% Algorithm block
\RequirePackage[top=2.5cm, bottom=2cm, left=2.5cm, right=2cm]{geometry}
\RequirePackage{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}
% \RequirePackage[ruled,linesnumbered]{algorithm2e}
% Explainations list
\RequirePackage{pifont}
% Line number
\RequirePackage{lineno}
% underline support
\RequirePackage{underscore}
% Indent at the first line in every paragraph
\RequirePackage{indentfirst}

% Import references
\usepackage[numbers,sort]{natbib}
\renewcommand{\refname}{References}
\newcommand{\bibfile}[1]{
	\MainContenttrue
	\bibliographystyle{unsrt}
	% \bibliographystyle{plainnat}
	\linespread{0.5}
	\newpage
	\fancyhead[CE]{\zihao{5}\zihao{5}\MakeUppercase{References}}
	{\zihao{5}\bibliography{#1}}
	\addcontentsline{toc}{section}{\refname} %Add into the content
}

\newcommand{\Section}[1]{
	\newpage
	\MainContenttrue
	\section{#1}
	\ifCHMode
		\setlength{\parindent}{2em}%
	\fi
	\setcounter{figure}{0}
	\setcounter{table}{0}
	\zihao{-4}
}
\setlength{\headheight}{15pt}

% Set the indent of the first line in a paragrapha
\setlength{\parindent}{1em}

% Set the  of the skip between the equation and text
\setlength\abovedisplayskip{0pt}
\setlength\belowdisplayskip{0pt}

% Add a equation with the thick vspace
\newenvironment{shrinkeq}[1]{\bgroup\addtolength\abovedisplayshortskip{#1}\addtolength\abovedisplayskip{#1}\addtolength\belowdisplayshortskip{#1}\addtolength\belowdisplayskip{#1}}{\egroup\ignorespacesafterend}

% Set the quotation environment
\newenvironment{Quotation}[2]
{\newcommand{\quotesource}{#1}
\newcommand{\quoteauthor}{#2}
	\flushleft
	\begin{quotation}}
	{\par\hfill---{\zihao{5}\quoteauthor}《\textit{\quotesource}》
	\end{quotation}}

\renewcommand{\algorithmicrequire}{\textbf{Input:}}  % Use Input in the format of Algorithm
\renewcommand{\algorithmicensure}{\textbf{Output:}} % Use Output in the format of Algorithm
\setlength{\parskip}{1ex plus0.5ex minus0.1ex} 


% Define some command
\graphicspath{{img/}}

\newenvironment{Abstract}{
	\newpage
	\begin{center}
		\Large\textbf{Abstract}
	\end{center}
	\addcontentsline{toc}{section}{Abstract}
	}{
	}

% Define the Chinese abstract
\newenvironment{CHAbstract}{
	\newpage
	\setlength{\parindent}{2em}
	\begin{center}
		\Large\textbf{摘要}
	\end{center}
	\addcontentsline{toc}{section}{摘要}
	}{}

% Define the key words
\newenvironment{KeyWords}{\textbf{Key words:}}{}

% Define the Chinese key words
\newenvironment{CHKeyWords}{\textbf{关键词：}}{}


% Make the title page
\newcommand{\MakeTitlePage}{
	\MainContentfalse
	\begin{titlepage}
		\begin{center}
			\zihao{1} \heiti \textbf{南昌工程学院本(专)科毕业论文（设计）}\\
			\vspace*{1.5cm}
			\quad
			\includegraphics[width=5.5cm,height=5.5cm]{figures/nit-logo.jpg}\\{}
			\vskip 2cm
			\large{
				\makebox[60mm]{系 （院）}
				\underline{\makebox[80mm][c]{ \School}}\\
				\vskip 0.4cm
				\makebox[60mm]{专\quad \quad 业}
				\underline{\makebox[80mm][c]{ \Major}}\\
				\vskip 0.4cm
				\makebox[60mm]{毕业论文（设计）题目}
				\underline{\makebox[80mm][c]{ \normalsize \Title}}\\
				\vskip 0.4cm
				\makebox[60mm]{学生姓名}
				\underline{\makebox[80mm][c]{ \Author}}\\
				\vskip 0.4cm
				\makebox[60mm]{班\qquad  级}
				\underline{\makebox[80mm][c]{ \Class}}\\
				\vskip 0.4cm
				\makebox[60mm]{学\qquad 号}
				\underline{\makebox[80mm][c]{ \StudentID}}\\
				\vskip 0.4cm
				\makebox[60mm]{指导老师}
				\underline{\makebox[80mm][c]{ \Instructor}}\\
				\vskip 0.4cm
				\makebox[60mm]{完成日期}
				\underline{\makebox[80mm][c]{ \CompleteDate}}\\%日期
				\vskip 2cm
				\heiti \Large \textbf{ {\number \year }年{\number\month}月{\number\day}日}
			}
		\end{center}
	\end{titlepage}
}

% Make the Submit Page
\newcommand{\MakeSubmitPage}{
	\MainContentfalse
	\begin{titlepage}
		\begin{center}
			\vspace{4.5cm}
			\songti \zihao{-2} \ziju{0.6} 南昌工程学院 \\
			\songti \zihao{1} \ziju{0.6} \textbf{毕业论文（设计）}	\\
			\vspace{2cm} \ziju{0}
			\underline{\makebox[50mm][c]{\songti \zihao{-2} \School}} \makebox[25mm]{\zihao{3} 系（院）} \underline{\makebox[35mm][c]{\kaishu \zihao{4} \ziju{0} \Major}} \makebox[20mm][l]{\zihao{3}专业} \\
			\vspace{3cm}
			\songti \zihao{-3} \ziju{0} 毕业论文题目 \underline{\zihao{4} \Title} \\
			\vspace{3.2cm}
			\makebox[30mm]{学生姓名}
			\underline{\makebox[80mm][c]{ \Author}}\\
			\vskip 0.4cm
			\makebox[30mm]{班\qquad  级}
			\underline{\makebox[80mm][c]{ \Class}}\\
			\vskip 0.4cm
			\makebox[30mm]{学\qquad 号}
			\underline{\makebox[80mm][c]{ \StudentID}}\\
			\vskip 0.4cm
			\makebox[30mm]{指导老师}
			\underline{\makebox[80mm][c]{ \Instructor}}\\
			\vskip 3.2cm
			\songti \zihao{-4} \makebox[16mm]{\ziju{0}完成日期}\quad \underline{\number\year}年\underline{\number\month}月\underline{\number\day}日
		\end{center}
	\end{titlepage}
}

% Yaohu Title Page
\newcommand{\MakeYaohuTitlePage}{
	\MainContentfalse
	\begin{titlepage}
		\ding{72}全日制本科生
		\vspace*{2.4cm}
		\begin{center}
			\zihao{-0} \heiti \ziju{0.4} \textbf{本科学士学位论文}\\
			\vspace*{1.5cm}
			\ziju{0}
			\vskip 3.8cm
			\large{ \songti
				\makebox[30mm]{论文题目}
				\underline{\makebox[120mm][c]{\zihao{4} \Title}}\\
				\vskip 0.4cm
				\makebox[30mm]{专\quad \quad 业}
				\underline{\makebox[120mm][c]{ \Major}}\\
				\vskip 0.4cm
				\makebox[30mm]{学\qquad 号}
				\underline{\makebox[120mm][c]{ \StudentID}}\\
				\vskip 0.4cm
				\makebox[30mm]{一级学科}
				\underline{\makebox[120mm][c]{ \FirstMajor}}\\
				\vskip 0.4cm
				\makebox[30mm]{二级学科}
				\underline{\makebox[120mm][c]{ \SecondMajor}}\\
				\vskip 0.4cm
				\makebox[30mm]{论文编号}
				\underline{\makebox[120mm][c]{ \ThesisID}}\\
				\vskip 2.8cm
				\heiti \zihao{4} \textbf{ {\number \year }年{\number\month}月{\number\day}日}
			}
		\end{center}
	\end{titlepage}
}

% The Cover page
\newcommand{\MakeCover}{
	\newpage
	\MainContentfalse
	% \rightline{\quad\includegraphics[width=5cm,height=1cm]{figures/nit-title.jpg}}
	\vspace*{3cm}
	\begin{center}
	{\bfseries\zihao{1}\CTitle} % Chinese title
	\vskip 0.5cm
	% \rightline { #2 }
	\vskip 2.5cm
	{\bfseries\zihao{2}\ETitle}% English title
	\end{center}
	\vskip 12cm
	\begin{flushleft}
		\large
		总计\makebox[50mm]{毕业论文（设计）}  \underline{\makebox[25mm][c]{ \PageNumber}} 页\\
		\quad \quad \makebox[50mm]{表\qquad \quad \qquad 格}  \underline{\makebox[25mm][c]{ \TableNumber}} 个\\
		\quad \quad \makebox[50mm]{插\qquad \quad\qquad 图}  \underline{\makebox[25mm][c]{ \FigureNumber}}幅\\
	\end{flushleft}
	\setlength{\parindent}{1em}
	\thispagestyle{empty}
	\newpage
}

\newcommand{\MakeAbstract}{
	\MainContenttrue
	\newpage
	\setcounter{page}{1}
	\pagenumbering{Roman}
	\pagestyle{plain}
	\ifCHMode
		\include{CHAbstract}
		\include{Abstract}
	\else
		\include{Abstract}
		\include{CHAbstract}
	\fi
	\newpage
}

\newcommand{\SetPages}[1]{
	\def\PageNumber{#1}
}

\newcommand{\SetTables}[1]{
	\def\TableNumber{#1}
}

\newcommand{\SetFigures}[1]{
	\def\FigureNumber{#1}
}


% Create the content
\dottedcontents{section}[3.5em]{}{4.5em}{5pt}
\renewcommand{\contentsname}{Contents}
\CTEXsetup[
	name={Chapter\hspace*{0.2em},},
	number={\arabic{section}}
	]{section}

\newcommand{\MakeContent}{
	\newpage
	\MainContentfalse
	\pdfbookmark[1]{\contentsname}{anchor}
	\pagestyle{empty}
	\tableofcontents
	\ifodd\value{page}
		\BlankPage
	\else
		\newpage
	\fi
	\setcounter{page}{1}
	\pagenumbering{arabic}

	\PageHeader
}

% Define the blank page
\newif\ifMainContent\MainContentfalse
\newcommand{\BlankPage}{
	\newpage
	\vspace{\textheight}
	\hspace{0.8\linewidth}
	\ifMainContent
	\else
		\thispagestyle{empty}
	\fi
	\newpage
}

% Define the summary section
\def\SummaryName{Summary}
\newenvironment{Summary}{
	\newpage
	\section*{\SummaryName}
	\fancyhead[CE]{\zihao{5}\zihao{5}\MakeUppercase{\SummaryName}}
	\addcontentsline{toc}{section}{\SummaryName}
}{\newpage}

% Define the Acknowledgement
\newcommand{\acknowledgementname}{Acknowledgement}
\newenvironment{Acknowledgement}{
	\newpage
	\section*{\acknowledgementname}
	\fancyhead[CE]{\zihao{5}\MakeUppercase{\acknowledgementname}}
	\addcontentsline{toc}{section}{\acknowledgementname}
}{\newpage}

% Define the Undergraduate thesis
\def\UndergraduateThesisName{Undergraduate thesis}
\newenvironment{UndergraduateThesis}{
	\newpage
	\section*{\UndergraduateThesisName}
	\fancyhead[CE]{\zihao{5}\MakeUppercase{\UndergraduateThesisName}}
	\addcontentsline{toc}{section}{\UndergraduateThesisName}
}{\newpage}

% Add the appendixes
\renewcommand{\appendixname}{Appendix}
\newenvironment{Appendix}{
	\newpage
	\section*{\appendixname}
	\fancyhead[CE]{\zihao{5}\MakeUppercase{\appendixname}}
	\addcontentsline{toc}{section}{\appendixname}
	\linespread{1}
}{\newpage}
% Define headings in the appendix

\newcounter{AppendixSection}
\renewcommand{\theAppendixSection}{\Alph{AppendixSection}}
\newcommand{\AppendixSection}[1]{ \Large{ \refstepcounter{AppendixSection}\textbf{\theAppendixSection}\hspace{0.5em} #1} \normalsize
	\setcounter{AppendixSubSection}{0}
}

% Define subheadings in the appendix

\newcounter{AppendixSubSection}
\renewcommand{\theAppendixSubSection}{\theAppendixSection-\arabic{AppendixSubSection}}
\newcommand{\AppendixSubSection}[1]{ \large \refstepcounter{AppendixSubSection} \theAppendixSubSection{} \hspace*{0.1cm} #1 \normalsize}

\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}

% Set the number of the figures and tables
\renewcommand{\thefigure} {\thesubsection-\arabic{figure}}
\renewcommand{\thetable} {\thesection.\arabic{table}}
\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}
% \numberwithin{figure}{section}

\newcommand{\EnglishTitle}[1]{
	\def\ETitle{#1}
}

\newcommand{\ChineseTitle}[1]{
	\def\CTitle{#1}
}
\def\Title{\ETitle}

\newcommand{\UpCite}[1]{
	\textsuperscript{\cite{#1}}
}

\newcommand{\FancyTitle}{Chapter \thesection \hspace{0.2cm}\leftmark}
\newcommand{\PageHeader}{
	\pagestyle{fancy}
	\fancyhf{}
	\fancyhead{}
	\fancyhead[CE]{\zihao{5}\FancyTitle}  %Odd page header
	\fancyhead[CO]{\zihao{5}南昌工程学院本（专）科毕业论文（设计）}   %Even page header
	\cfoot{\thepage}
}

\newcommand{\SetSchool}[1]{
	\def\School{#1}
}	
\newcommand{\SetMajor}[1]{
	\def\Major{#1}
}
\newcommand{\SetAuthor}[1]{
	\ifBlindTrial
		\def\Author{XXX}
	\else
		\def\Author{#1}
	\fi
}
\newcommand{\SetClass}[1]{
	\ifBlindTrial
		\def\Class{XXX}
	\else
		\def\Class{#1}
	\fi
}
\newcommand{\SetStudentID}[1]{
	\ifBlindTrial
		\def\StudentID{XXXXXXXXXX}
	\else
		\def\StudentID{#1}
	\fi
}
\newcommand{\SetInstructor}[1]{
	\ifBlindTrial
		\def\Instructor{XXX}
	\else
		\def\Instructor{#1}
	\fi
}
\newcommand{\SetCompleteDate}[1]{
	\def\CompleteDate{#1}
}
\newcommand{\SetFirstMajor}[1]{
	\def\FirstMajor{#1}
}
\newcommand{\SetSecondMajor}[1]{
	\def\SecondMajor{#1}
}
\newcommand{\SetThesisID}[1]{
	\def\ThesisID{#1}
}


% Format the Section module
\usepackage{titlesec}
\titleformat{\section}{\centering\bfseries\Large}{Chapter \thesection }{1em}{}

\newif\ifCHMode\CHModefalse
% Chinese mode
\newcommand{\ChineseMode}{
	\CHModetrue
	% \captionsetup[subcaption]{font={tiny}}
	\dottedcontents{section}[3.5em]{}{3.5em}{4pt}
	\titleformat{\section}{\centering\bfseries\Large}{第\chinese{section} 章} {1em}{}
	\def\Title{\CTitle}
	\renewcommand{\FancyTitle}{第\chinese{section} 章 \hspace{0.2cm}\leftmark}
	\renewcommand{\figurename}{图}
	\renewcommand{\tablename}{表}
	\renewcommand{\contentsname}{目录}
	\renewcommand{\refname}{参考文献}
	\renewcommand{\appendixname}{附录}
	\renewcommand{\acknowledgementname}{致谢}
	\floatname{algorithm}{算法}
	\def\SummaryName{毕业论文（设计）总结}
	\def\UndergraduateThesisName{本科期间发表的论文}
	\CTEXsetup[
		name={第,章},
		number={\chinese{section}}
		]{section}
}

% Blind trial mode
\newif\ifBlindTrial\BlindTrialfalse
\newcommand{\BlindTrialMode}{
	\BlindTrialtrue
}