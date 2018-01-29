label PCTL_GiftTimeLast_REV = 'Transformed GiftTimeLast_REV';
length PCTL_GiftTimeLast_REV $36;
if (GiftTimeLast_REV eq .) then PCTL_GiftTimeLast_REV="";
else
if (GiftTimeLast_REV < -20) then
PCTL_GiftTimeLast_REV = "01:low--20";
else
if (GiftTimeLast_REV >= -20 and GiftTimeLast_REV < -18) then
PCTL_GiftTimeLast_REV = "02:-20--18";
else
if (GiftTimeLast_REV >= -18 and GiftTimeLast_REV < -16) then
PCTL_GiftTimeLast_REV = "03:-18--16";
else
if (GiftTimeLast_REV >= -16) then
PCTL_GiftTimeLast_REV = "04:-16-high";
