%Changes the track files (.tck) to fixel files.  Then makes a mask
%thresholded to have at least 1% of tracks go through. 
%The abs value is calculated independently beforehand for each tract  Also generates a
%voxel mask from the fixel mask.  Command order. 


tck2fixel Cingulum_ret/Rret_track.tck path/to/input/ Cingulum_ret/ R_Cingulum_TDI.mif 
mrthreshold -abs  42.04 Cingulum_ret/R_Cingulum_TDI.mif Cingulum_ret/R_Cingulum_mask.mif 
fixel2voxel Cingulum_ret/R_Cingulum_mask.mif mean Cingulum_ret/R_fa_track.mif
