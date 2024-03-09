# Include the module containing the validate_password function
use lib '.';
use validate_password;

# Get the password from the command line arguments
my $password = $ARGV[0];

# Check if a password was provided
if (!defined $password) {
    die "Usage: perl run_validate_password.pl <password>\n";
}

# Test the provided password
if (validate_password($password)) {
    print "Password '$password' is valid.\n";
} else {
    print "Password '$password' is invalid.\n";
}
