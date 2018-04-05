#! usr/bin/env perl6
=begin comment
Author: Taylor Cochran
Goal: Write a recrusive sub routine that accepts an integer and returns
the factorial of that number
=end comment

sub factorial (int $number) {
  ($number > 0) ?? $number * factorial($number - 1) !! 1;
}

sub MAIN {
  my Int $input;
  if (@*ARGS.elems == 1) {
      say factorial(@*ARGS[0].Int);
  }
  elsif (@*ARGS.elems == 0) {
    say "Enter a non-negative integer: ";
    $_ = get.gist.Int;
    say factorial($_);
  }
}
sub USAGE {
  say "USAGE:\n \tFactorial.p6\n\tFactorial.p6 n - where n is a non-negative integer";
}
