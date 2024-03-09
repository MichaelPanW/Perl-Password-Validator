sub validate_password {
    my ($password) = @_;

    # Check length
    my $length = length($password);
    return 0 if $length < 8;

    # Check complexity based on length
    if ($length >= 8 && $length <= 11) {
        # Requires mixed case letters, numbers and symbols
        return 1 if $password =~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&+=]).{8,}$/;
    } elsif ($length >= 12 && $length <= 15) {
        # Requires mixed case letters and numbers
        return 1 if $password =~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{12,}$/;
    } elsif ($length >= 16 && $length <= 19) {
        # Requires mixed case letters
        return 1 if $password =~ /^(?=.*[a-z])(?=.*[A-Z])(?!.*\d).{16,}$/;
    } else {
        return 1;
    }

    return 0;
}
1; # Return true to indicate successful module load