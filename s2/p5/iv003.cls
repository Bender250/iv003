\ProvidesClass{iv003}[2014/02/25 v 0.1 IV003]
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

%% BASIC COMMANDS

\addtolength{\headheight}{2.5cm}
\addtolength{\textheight}{-2.5cm}
\addtolength{\headsep}{-0.4cm}

\def\@studentI{}
\newcommand{\setstudentI}[1]{\def\@studentI{#1}}

\def\@studentII{}
\newcommand{\setstudentII}[1]{\def\@studentII{#1}}

\def\@group{}
\newcommand{\setgroup}[1]{\def\@group{#1}}

\def\@ucoI{\hspace{3cm}$ $}
\newcommand{\setucoI}[1]{\def\@ucoI{#1}}

\def\@ucoII{\hspace{3cm}$ $}
\newcommand{\setucoII}[1]{\def\@ucoII{#1}}

\def\@assignment{0}
\newcommand{\setassignment}[1]{\def\@assignment{#1}}

\def\@exercise{0}
\newcommand{\setexercise}[1]{\def\@exercise{#1}}

%% HEADER
\pagestyle{fancyplain}
\fancyhf{}

\lhead{\large
    \textbf{IV003 -- sada \@assignment, príklad \@exercise
        \ifx\@solution\@empty
        {} -- riešenie
        \fi
        \hfill}
    \vspace{2mm}
    \hrule
    \vspace{2mm}
    Vypracovali: \hfill{}\@studentI \space \@ucoI \\
				\hfill{}\@studentII \space \@ucoII
}

%% DOCUMENT ENVIRONMENTS

\newenvironment{zadani}{%
    \noindent
    \textbf{\@exercise.}
}{\bigskip\bigskip\noindent}

\newenvironment{reseni}{\global\let\@solution\@empty}{}

\cfoot{\thepage}

