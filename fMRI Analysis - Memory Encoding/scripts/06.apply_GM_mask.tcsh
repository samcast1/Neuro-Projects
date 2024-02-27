#!/bin/tcsh



set subjdir=/mnt/c/Users/casti/Desktop/EPSCoR_Research/EPSCoR_REU/analysis/subjects/groupanalysis			

cd ${subjdir}/no_gm_mask/

3dresample -master 3dttest++_hit-miss_all_twosamp_coef.nii.gz -prefix GMmask_resamp_scene-pix_all.nii.gz -inset GM_sub_thr25_1mm_mask.nii.gz

echo "------Consider it resampled.-------"
3dcalc -a ${subjdir}/no_gm_mask/3dttest++_scene-pix_all_twosamp_coef.nii.gz -b ${subjdir}/no_gm_mask/GMmask_resamp_scene-pix_all.nii.gz -expr 'a*b' -prefix ${subjdir}/two-samp_decon_scene-pix_all_gm.nii.gz
# 3dcalc -a ${subj_dir}/no_gm_mask/3dttest++_hush_gen-read_reml.nii.gz -b ${subj_dir}/no_gm_mask/GMmask_2mm.nii.gz -expr 'a*b' -prefix ${subj_dir}/one-samp_reml_gen-read_gm.nii.gz
# 

#3dcalc -a 3dttest++_hush_gen-read_yyw.nii.gz -b GMmask_2mm.nii.gz -expr 'a*b' -prefix ../3dttest++_hush_gen-read_yyw_gm.nii.gz
#3dcalc -a 3dMEMA_hush_gen-read_yyw.nii.gz -b GMmask_2mm.nii.gz -expr 'a*b' -prefix ../3dMEMA_hush_gen-read_yyw_gm.nii.gz

end
