%%% Compile Command
% ptex2pdf -u -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style -shell-escape" Op.lhs
% or by chain
% uplatex -synctex=1 -interaction=nonstopmode -file-line-error-style -shell-escape Set.lhs

\documentclass[11pt,a4paper,dvipdfmx]{ujarticle}
\usepackage[margin=24mm]{geometry}
\usepackage{preamble-jp}

\author{}
\title{Mobius Strip}
\和暦

\begin{document}

\maketitle
\begin{abstract}
\begin{code}
{-# OPTIONS_GHC -Werror=incomplete-patterns
                -Werror=missing-methods
                -Werror=overlapping-patterns #-}
{-# LANGUAGE NoImplicitPrelude #-}
module Mobius where
\end{code}
\end{abstract}
\tableofcontents
\newpage

\begin{comment}
\begin{code}
import qualified Prelude as P
--import Prelude hiding ((>>), (<=), (>=))
import Prelude (($), Float, Show, show, Int, Bool, (.), (==), (/=), (&&), Maybe(..), compare, snd, Eq, Enum, (+), (-), abs, otherwise, flip, print)
import Data.List
\end{code}
\end{comment}

\begin{comment} % Following is not shown in LaTeX doc
\begin{code}
notImplemented = P.error "Function not implemented" -- Comment out this line in production
\end{code}
\begin{code}
unreachable = P.error "Reached a supposed unreachable branch, possibly due to having different `U`"
\end{code}
\end{comment}

\section{Perfect Mobius Strip}

For a Mobius Strip $M$ with diameter $r$ and a width $h$:

\begin{equation}
M(r, h)=
\left\{
    [r, \theta]+[d, \frac{\theta}{2}] \,|\, d\in[-\frac{h}{2},\frac{h}{2}], \theta=[0, 2\pi)
    \right\}
\end{equation}


\newpage
\appendix


\end{document}
