% iv054.sty
% style for homeworks for IB102 Automata, Grammars, and Complexity
% (c) 2013 Vladimír Štill, CC BY 3.0 (https://creativecommons.org/licenses/by/3.0/)

\ProvidesClass{iv054}[2013/06/29 v 0.1 IB102]
\NeedsTeXFormat{LaTeX2e}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions \relax
\LoadClass{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[a4paper, left=2.5cm, right=2.5cm, top=2.5cm, bottom=2.5cm]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage{fancyhdr}
\RequirePackage{ifthen}

\RequirePackage{pgf}
\RequirePackage{tikz}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsthm}   %důkazy
\usetikzlibrary{calc,arrows,automata}

\newcommand{\eps}{\varepsilon}
\newcommand{\coL}{co\mbox{$-$}L}
\newcommand{\move}{\rightarrow}
\newcommand{\set}[1]{\ensuremath{\{ #1 \}}}

%% BASIC COMMANDS

\addtolength{\headheight}{2.5cm}
\addtolength{\textheight}{-2.5cm}
\addtolength{\headsep}{-0.4cm}

\def\@studenta{}
\newcommand{\setstudenta}[1]{\def\@studenta{#1}}

\def\@studentb{}
\newcommand{\setstudentb}[1]{\def\@studentb{#1}}

\def\@ucoa{\hspace{3cm}$ $}
\newcommand{\setucoa}[1]{\def\@ucoa{#1}}

\def\@ucob{\hspace{3cm}$ $}
\newcommand{\setucob}[1]{\def\@ucob{#1}}

\def\@assignment{0}
\newcommand{\setassignment}[1]{\def\@assignment{#1}}

\def\@exercise{0}
\newcommand{\setexercise}[1]{\def\@exercise{#1}}


%% HEADER
\pagestyle{fancyplain}
\fancyhf{}

\lhead{\large
    \textbf{
		Sada: \@exercise
		\hfill
		Příklad: \@assignment
        \ifx\@solution\@empty
        {}
        \fi
        \hfill 
        IV003 Algoritmy a datové struktury II}
    \vspace{2mm}
    \hrule
    \vspace{2mm}
    Jméno: \@studenta\hfill{}UČO: \@ucoa
    \vspace{2mm}
    \hrule
    \vspace{2mm}
    Jméno: \@studentb\hfill{}UČO: \@ucob
}


\cfoot{\thepage}


