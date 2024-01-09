
##
# Ask for a password and replace the entered charecter with asterix
#
# Use it like this:
# pwd="$(ask Password)"
#
# Reference:
# https://stackoverflow.com/questions/1923435/how-do-i-echo-stars-when-reading-password-with-read
# https://stackoverflow.com/a/63503388/18539543

ask() {
    charcount='0'
    prompt="${1}: "
    reply=''
    while IFS='' read -n '1' -p "${prompt}" -r -s 'char'
    do
        case "${char}" in
            # Handles NULL
            ( $'\000' )
            break
            ;;
            # Handles BACKSPACE and DELETE
            ( $'\010' | $'\177' )
            if (( charcount > 0 )); then
                prompt=$'\b \b'
                reply="${reply%?}"
                (( charcount-- ))
            else
                prompt=''
            fi
            ;;
            ( * )
            prompt='*'
            reply+="${char}"
            (( charcount++ ))
            ;;
        esac
    done
    printf '\n' >&2
    printf '%s\n' "${reply}"
}

