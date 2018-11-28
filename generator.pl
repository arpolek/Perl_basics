#!/usr/bin/perl

$profileid = 0;

for (my $organisationid=1; $organisationid <= 100; $organisationid++) {

print "    <Profile=\"profile_$profileid\"\n";
print "        <Organization=\"abc$organisationid\">\n";
print "            <bucket userNameTemplate=\"abc<DEVICE_ID>\" deviceNameTemplate=\"abc<DEVICE_ID>\" idRange=\"$profileid\"\n";
print "                <Watch contentLogging=\"Yes\">\n";
print "					 <NotificationsRange entityNameTemplate=\"abc:abc_<DEC_ID>\@abc$organisationid\" idRange=\"1-300\"\n";
print "                </Watch>\n";
print "            </bucket>\n";
print "        </Organization>\n";
print "    </Profile>\n";

$profileid = $profileid + 1;
}

