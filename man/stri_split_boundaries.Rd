\name{stri_split_boundaries}
\alias{stri_split_boundaries}
\title{Split Strings at Specific Text Boundaries}
\usage{
stri_split_boundaries(str, boundary = "line-break", locale = NULL)
}
\arguments{
  \item{str}{character vector or an object coercible to}

  \item{boundary}{character vector, each string is one of
  \code{character}, \code{line-break}, \code{sentence}, or
  \code{word}}

  \item{locale}{\code{NULL} or \code{""} for text boundary
  analysis following the conventions of the default locale,
  or a single string with locale identifier, see
  \link{stringi-locale}.}
}
\value{
Returns a list of character vectors.
}
\description{
This function locates specific text boundaries (like
character, word, line, or sentence boundaries) and splits
strings at the indicated positions.
}
\details{
Vectorized over \code{str} and \code{boundary}.

Text boundary analysis is the process of locating
linguistic boundaries while formatting and handling text.
Examples of this process include:

\itemize{ \item Locating appropriate points to word-wrap
text to fit within specific margins while displaying or
printing. \item Counting characters, words, sentences, or
paragraphs. \item Making a list of the unique words in a
document. \item Capitalizing the first letter of each word.
\item Locating a particular unit of the text (For example,
finding the third word in the document). }

This function uses \pkg{ICU}'s \code{BreakIterator} to
split given strings at specific boundaries. The
\code{character} boundary iterator tries to match what a
user would think of as a ``character'' -- a basic unit of a
writing system for a language -- which may be more than
just a single Unicode code point. The \code{word} boundary
iterator locates the boundaries of words, for purposes such
as ``Find whole words'' operations. The \code{line_break}
iterator locates positions that would be appropriate points
to wrap lines when displaying the text. On the other hand,
a \code{sentence}-break iterator locates sentence
boundaries.

For technical details on different classes of text
boundaries refer to the \pkg{ICU} User Guide, see below.
For extracting individual words from the text using a
\code{BreakIterator}, see \code{\link{stri_extract_words}}.
}
\examples{
\dontrun{
stri_split_boundaries("The\\u00a0above-mentioned packages are...", boundary='line')
}
}
\references{
\emph{Boundary Analysis} -- ICU User Guide,
\url{http://userguide.icu-project.org/boundaryanalysis}
}
\seealso{
Other locale_sensitive: \code{\link{\%!=\%}},
\code{\link{\%<=\%}}, \code{\link{\%<\%}},
\code{\link{\%==\%}}, \code{\link{\%>=\%}},
\code{\link{\%>\%}}, \code{\link{\%stri!=\%}},
\code{\link{\%stri<=\%}}, \code{\link{\%stri<\%}},
\code{\link{\%stri==\%}}, \code{\link{\%stri>=\%}},
\code{\link{\%stri>\%}}; \code{\link{stri_cmp}},
\code{\link{stri_cmp_eq}}, \code{\link{stri_cmp_ge}},
\code{\link{stri_cmp_gt}}, \code{\link{stri_cmp_le}},
\code{\link{stri_cmp_lt}}, \code{\link{stri_cmp_neq}},
\code{\link{stri_compare}}; \code{\link{stri_count_fixed}};
\code{\link{stri_detect_fixed}};
\code{\link{stri_duplicated}},
\code{\link{stri_duplicated_any}};
\code{\link{stri_enc_detect2}};
\code{\link{stri_extract_words}};
\code{\link{stri_locate_all_fixed}},
\code{\link{stri_locate_all_fixed,}},
\code{\link{stri_locate_first_fixed}},
\code{\link{stri_locate_first_fixed,}},
\code{\link{stri_locate_last_fixed}},
\code{\link{stri_locate_last_fixed}};
\code{\link{stri_locate_boundaries}};
\code{\link{stri_locate_words}};
\code{\link{stri_opts_collator}}; \code{\link{stri_order}},
\code{\link{stri_sort}};
\code{\link{stri_replace_all_fixed}},
\code{\link{stri_replace_all_fixed}},
\code{\link{stri_replace_first_fixed}},
\code{\link{stri_replace_first_fixed}},
\code{\link{stri_replace_last_fixed}},
\code{\link{stri_replace_last_fixed}};
\code{\link{stri_split_fixed}},
\code{\link{stri_split_fixed}};
\code{\link{stri_trans_tolower}},
\code{\link{stri_trans_totitle}},
\code{\link{stri_trans_toupper}};
\code{\link{stri_unique}}; \code{\link{stri_wrap}};
\code{\link{stringi-locale}};
\code{\link{stringi-search-fixed}}

Other search_split: \code{\link{stri_split_charclass}},
\code{\link{stri_split_charclass}};
\code{\link{stri_split_fixed}},
\code{\link{stri_split_fixed}};
\code{\link{stri_split_lines}},
\code{\link{stri_split_lines}},
\code{\link{stri_split_lines1}},
\code{\link{stri_split_lines1}};
\code{\link{stri_split_regex}},
\code{\link{stri_split_regex}}; \code{\link{stri_split}};
\code{\link{stringi-search}}

Other text_boundaries: \code{\link{stri_extract_words}};
\code{\link{stri_locate_boundaries}};
\code{\link{stri_locate_words}}; \code{\link{stri_wrap}}
}
