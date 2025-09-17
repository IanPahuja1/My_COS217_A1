#include <stdio.h>
#include <ctype.h>

/*states */
enum State {
    OUTSIDE_COMMENT, /* accept */
    INSIDE_COMMENT, /* reject */
    FIRST_SLASH, /* accept */
    SECOND_ASTRICK, /* reject */
    CHARACTER_LITERAL, /* accept */
    STRING_LITERAL, /* accept */
    ESCAPED_CHARACTER_IN_CHAR_LITERAL, /* accept */
    ESCAPED_CHARACTER_IN_STRING_LITERAL /* accept */
};

int main(void) {
    enum State state = OUTSIDE_COMMENT; /* start state */
    int line_number = 1;
    int comment_start_line = -1;

    int ch; /* go through different states until we reach the end of the file*/
    while ((ch = getchar()) != EOF) {
        switch (state) {

        case OUTSIDE_COMMENT: /* starting state outside of comments or literals*/
            if (ch == '/') {
                state = FIRST_SLASH;
            }
            else if (ch == '\'') {
                putchar('\'');
                state = CHARACTER_LITERAL;
            }
            else if (ch == '"') {
                putchar('"');
                state = STRING_LITERAL;
            }
            else {
                putchar(ch);
            }
            break;

        case FIRST_SLASH: /* when we reach a slash we need to check if next is an asterick*/
            if (ch == '*') {
                putchar(' ');
                state = INSIDE_COMMENT;
                /* keeps track of the line the comment starts in case we need to report error*/
                comment_start_line = line_number;
            }
            else if (ch == '\'') {
                putchar('/');
                putchar('\'');
                state = CHARACTER_LITERAL;
            }
            else if (ch == '"') {
                putchar('/');
                putchar('"');
                state = STRING_LITERAL;
            }
            else if (ch == '/') {
                putchar('/');
                state = FIRST_SLASH;
            }
            else {
                putchar('/');
                putchar(ch);
                state = OUTSIDE_COMMENT;
            }
            break;

        case INSIDE_COMMENT: /* when we are inside a comment we need to check for astericks*/
            if (ch == '*') {
                state = SECOND_ASTRICK;
            }
            else if (ch == '\n') {
                putchar('\n');
            }
            break;

        case SECOND_ASTRICK: /* if we are in a comment and then find an asterick, we check if next is a slash*/
            if (ch == '/') {
                state = OUTSIDE_COMMENT;
            }
            else if (ch == '*') {
                state = SECOND_ASTRICK;
            }
            else {
                if (ch == '\n') putchar('\n');
                state = INSIDE_COMMENT;
            }
            break;

        case CHARACTER_LITERAL: /* once we hit a ' we are in character literal until we hit another '*/
            if (ch == '\'') {
                putchar('\'');
                state = OUTSIDE_COMMENT;
            }
            else if (ch == '\\') {
                putchar('\\');
                state = ESCAPED_CHARACTER_IN_CHAR_LITERAL;
            }
            else if (ch == '/') {
                putchar('/');
            }
            else {
                putchar(ch);
            }
            break;

        case STRING_LITERAL: /* once we hit a " we are in string literal until we hit another "*/
            if (ch == '"') {
                putchar('"');
                state = OUTSIDE_COMMENT;
            }
            else if (ch == '\\') {
                putchar('\\');
                state = ESCAPED_CHARACTER_IN_STRING_LITERAL;
            }
            else if (ch == '/') {
                putchar('/');
            }
            else {
                putchar(ch);
            }
            break;

        case ESCAPED_CHARACTER_IN_CHAR_LITERAL: /* handles escaped characters*/
            putchar(ch);
            state = CHARACTER_LITERAL;
            break;

        case ESCAPED_CHARACTER_IN_STRING_LITERAL: /* handles escaped characters*/
            putchar(ch);
            state = STRING_LITERAL;
            break;
        }
        /* keep track of line number*/
        if (ch == '\n') line_number++;
    }
    /* check if the end state is rejected and if so print an error*/
    if (state == INSIDE_COMMENT || state == SECOND_ASTRICK) {
        if (comment_start_line < 0) comment_start_line = line_number;
        fprintf(stderr, "Error: line %d: unterminated comment\n", comment_start_line);
        return 1;
    }
    /* this is needed for an edge case*/
    if (state == FIRST_SLASH) {
        putchar('/');
    }
    return 0;
}
