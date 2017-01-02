#! /usr/bin/perl

use v5.14;
use Expect;

my $command = "openvpn";
my @params = ("--config", "/home/genadyp/bin/OpenVPN/client.ovpn");


my $timeout = 10;  # in sec
my $user = undef;  # set your username here
my $pass = undef;  # set your password here

sub run {
  my $exp = Expect->spawn($command, @params);
  $exp->expect(
    $timeout,
    [
      qr/Enter Auth Username/i,
      sub {
        my $self = shift;
        $self->send($user . "\n");
        exp_continue;
      }
    ],
    [
      qr/Enter Auth Password/i,
      sub {
        my $self = shift;
        $self->send($pass . "\n");
        exp_continue;
      }
    ],
    [
      qr/killed expiring key/i,
      sub {
        say "Expired. Exiting";
        $exp->soft_close();
      }
    ],
    [
      eof => sub {
        say "Got EOF";
      }
    ],
    [
      timeout => sub {
        #say "TIMEOUT";
        exp_continue;
      }
    ]
  );

#$exp->soft_close();
}

#######################
# Main
#######################
while (1) {
  run;
  say "=============== RESTART ==============="
}
