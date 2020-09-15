rm(list=ls())      # its like clear all
require(gdata)
## fEPSP measure
setwd("D:/zeinab_files/Dropbox/Dropbox/Paper_document/Published/AM_modulated/DATA/Organized Data/ALL/anova")
stimulation<-read.xls("D:/zeinab_files/Dropbox/Dropbox/Paper_document/Published/AM_modulated/DATA/Organized Data/ALL/anova/modulation_AM2khz_anova.xlsx",header = T)
summary(stimulation)
attach(stimulation)
require(car)
library(lme4)
library(lmerTest)

stimulation_anova<-lmer(Modulation~Intensity+(1|Slices),stimulation)
summary(stimulation_anova)
anova(stimulation_anova,type="III")
require(multcomp)
compare_tuky<-glht(stimulation_anova,linfct=mcp(Intensity="Tukey"))
summary(compare_tuky)
#

require(gdata)
stimulation_5hz<-read.xls("D:/zeinab_files/Dropbox/Dropbox/AM_modulated/DATA/Organized Data/ALL/anova/modulation_5hzsine_anova.xlsx",header = T)
summary(stimulation_5hz)
attach(stimulation_5hz)
require(car)
library(lme4)
library(lmerTest)

stimulation_anova_5hz<-lmer(Modulation~Intensity+(1|Slice),stimulation_5hz)
summary(stimulation_anova_5hz)
anova(stimulation_anova_5hz,type="III")
require(multcomp)
compare_tuky<-glht(stimulation_anova_5hz,linfct=mcp(Intensity="Tukey"))
summary(compare_tuky)

#

require(gdata)
stimulation_AM100<-read.xls("D:/zeinab_files/Dropbox/Dropbox/AM_modulated/DATA/Organized Data/ALL/anova/modulation_AM100hz_anova.xlsx",header = T)
summary(stimulation_AM100)
attach(stimulation_AM100)
require(car)
library(lme4)
library(lmerTest)

stimulation_anova_AM100<-lmer(Modulation~Intensity+(1|Slice),stimulation_AM100)
summary(stimulation_anova_AM100)
anova(stimulation_anova_AM100,type="III")
require(multcomp)
compare_tuky<-glht(stimulation_anova_AM100,linfct=mcp(Intensity="Tukey"))
summary(compare_tuky)
#
require(gdata)
stimulation_AM1khz<-read.xls("D:/zeinab_files/Dropbox/Dropbox/AM_modulated/DATA/Organized Data/ALL/anova/modulation_AM1khz_anova.xlsx",header = T)
summary(stimulation_AM1khz)
attach(stimulation_AM1khz)
require(car)
library(lme4)
library(lmerTest)

stimulation_anova_AM1khz<-lmer(Modulation~Intensity+(1|Slice),stimulation_AM1khz)
summary(stimulation_anova_AM1khz)
anova(stimulation_anova_AM1khz,type="III")
require(multcomp)
compare_tuky<-glht(stimulation_anova_AM1khz,linfct=mcp(Intensity="Tukey"))
summary(compare_tuky)



