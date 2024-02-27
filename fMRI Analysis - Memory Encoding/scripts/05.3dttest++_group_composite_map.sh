#!/bin/tcsh -f		
echo "---------Who doesn't love a good t-test?--------" 
							
set subjdir = /mnt/c/Users/casti/Desktop/EPSCoR_Research/EPSCoR_REU/analysis/subjects
foreach subj ( X002 X003 X004 X005 X006 X007 X008 X009 ) #without X004, X008, X009

#mkdir ${subjdir}/groupanalysis

#cd ${subjdir}/${subj}
#cp ${subj}_scene_deob2_attention_nuisreg_block+tlrc.BRIK ${subjdir}/groupanalysis/subject_data
#cp ${subj}_scene_deob2_attention_nuisreg_block+tlrc.HEAD ${subjdir}/groupanalysis/subject_data
cd ${subjdir}/groupanalysis/subject_data

3dttest++	-mask ${subjdir}/group_automask.nii.gz -paired -prefix ${subjdir}/groupanalysis/no_gm_mask/3dttest++_scene-pix_all_twosamp_coef.nii.gz \
-setA 'X001_scene_attention_nuisreg_block+tlrc.BRIK[2]'\
'X002_scene_attention_nuisreg_block+tlrc.BRIK[2]'\
'X003_scene_attention_nuisreg_block+tlrc.BRIK[2]'\
'X004_scene_deob2_attention_nuisreg_block+tlrc.BRIK[2]'\
'X005_scene_attention_nuisreg_block+tlrc.BRIK[2]'\
'X006_scene_attention_nuisreg_block+tlrc.BRIK[2]'\
'X007_scene_deob2_attention_nuisreg_block+tlrc.BRIK[2]'\
'X008_scene_deob2_attention_nuisreg_block+tlrc.BRIK[2]'\
'X009_scene_deob2_attention_nuisreg_block+tlrc.BRIK[2]'\
-setB 'X001_scene_attention_nuisreg_block+tlrc.BRIK[6]'\
'X002_scene_attention_nuisreg_block+tlrc.BRIK[6]'\
'X003_scene_attention_nuisreg_block+tlrc.BRIK[6]'\
'X004_scene_deob2_attention_nuisreg_block+tlrc.BRIK[6]'\
'X005_scene_attention_nuisreg_block+tlrc.BRIK[6]'\
'X006_scene_attention_nuisreg_block+tlrc.BRIK[6]'\
'X007_scene_deob2_attention_nuisreg_block+tlrc.BRIK[6]'\
'X008_scene_deob2_attention_nuisreg_block+tlrc.BRIK[6]'\
'X009_scene_deob2_attention_nuisreg_block+tlrc.BRIK[6]'
#echo ">>>>>>>> IT'S CLUSTERIN' TIME!!!!!!!<<<<<<<<" 

#3dttest++ -mask ${subjdir}/group_automask.nii.gz  -prefix /mnt/c/Users/casti/Desktop/EPSCoR_Research/EPSCoR_REU/analysis/subjects/groupanalysis/no_gm_mask/3dttest++_scene-pixel_no_outlier_onesamp_coef.nii.gz \
#-setA 'X001_scene_attention_nuisreg_block+tlrc.BRIK[10]' 'X002_scene_attention_nuisreg_block+tlrc.BRIK[10]' 'X003_scene_attention_nuisreg_block+tlrc.BRIK[10]' 'X005_scene_attention_nuisreg_block+tlrc.BRIK[10]' 'X006_scene_attention_nuisreg_block+tlrc.BRIK[10]' 'X007_scene_attention_nuisreg_block+tlrc.BRIK[10]' 


end 
end
#gen - read 
#gen > read = red + 
#read > gen = blue
