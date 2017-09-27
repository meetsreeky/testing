
open FILE,shift(@ARGV);
$V_Select="N";
$V_View="SDP Report Portfolio View";
$V_Print="N";
foreach (<FILE>){

if($V_Select eq "Y" || $_ =~ m/SELECT/ ){ $V_Select="Y"; }

	if ($V_Select eq "Y"){
			push(@a,$_);
			
			if ($_ =~ m/$V_View/ && $_ =~ /Bind variable 1/ ){ $V_Print="Y";
if ($_ =~ m/,UI/ && $_ =~ /Bind variable 1/){$V_Print="N";}
                                              }


			if ($_ =~ m/SQL Statement Initial Fetch Time/){   if ($V_Print eq "Y"){print @a;
											    $V_Print="N";
											   }
										undef(@a);
										$V_Select=N;
							                    }
			}
		}



