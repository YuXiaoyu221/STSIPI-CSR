clc
clear

str_exe1='.tif';
str_inputpath='..\Data';

PatchSize=4; SlideWidth=2;  %% define the parameters

[Multi_Data,Multi_DataMask]=ReadTensorData(str_inputpath);
I_DL=Multitemporal_ReconstructionD_5_improved3(Multi_Data,Multi_DataMask,SlideWidth,PatchSize,str_inputpath);
for i=1:size(Multi_DataMask,3)
    imwrite(uint8(I_DL(:,:,:,i)),[str_inputpath,'\result\','I',num2str(i),'_Re_CDR5_',num2str(PatchSize),'_',num2str(SlideWidth),str_exe1]);
end
