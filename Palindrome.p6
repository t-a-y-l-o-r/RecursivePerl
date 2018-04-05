#! usr/bin/env perl6
=begin comment
Author: Taylor Cochran
Goal: To determine whether or not a phrase is a palindrome
=end comment

sub reverse (Str $input){
  ($input eq "") ?? $input !! ($input.substr($input.codes - 1) ~
                          reverse($input.substr(0, $input.codes - 1)));
}

sub isPalindrome (Str $_) {
  ($_ eq reverse($_));
}

sub MAIN {
  if (@_.elems == 1) {
    say "{@*ARGS[0]} is a palindrome: {isPalindrome(@*ARGS[0])}";
  }
  elsif (@_.elems == 0) {
    say "Enter a string: ";
    $_ = get.gist;
    say isPalindrome($_);
  }
}

sub USAGE {
  say "USAGE:\n \tPalindrome.p6\n\tPalindrome.p6 Str - where Str is a string";
}
