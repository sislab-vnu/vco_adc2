*  Generated for: FineSimPro
*  Design library name: vco_adc2_65nm
*  Design cell name: vco_adc_65nm_crst_tb
*  Design view name: schematic
.option search='/home/dkits/tsmc_65/65MSRFGP_PDK/pdk_rf_1p9m_6X1Z1U/models/hspice'
.option finesim_output=wdf


.param vin_freq=1k vd1=1.2 vsup=1.2 vb1=0.7 vin_os=0.4 vin_amp=0.2004 vin_del=20u
+ w_br2=4u v_laux=2u v_lmain=2u d_wn=3u d_wp=3u w_br1=3u d_laux=1.8u
+ d_lmain=1.8u v_wn=0.8u v_wp=0.4u vb3=0
.temp 25
.lib 'crn65gplus_2d5_lk_v1d0.l' TT
.lib 'crn65gplus_2d5_lk_v1d0.l' TT_hvt
.lib 'crn65gplus_2d5_lk_v1d0.l' TT_lvt

*Custom Compiler Version O-2018.09-SP1-3
*Sat Feb 24 11:42:08 2024

.global gnd! vcca! vccd!
********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : alib_IDAC_nvt
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt alib_idac_nvt d_ctrl isup vbs1 vbs3 l_lk=100n w_lk=200n l_br=100n w_br1=200n
+  w_br2=200n
r17 net27 gnd! r=5k
xi21 lock open vccd! gnd! invd1
xi20 d_ctrl lock vccd! gnd! invd1
m14 isup vbs1 vcca! vcca! pch l='l_br' w='(w_br1*1)' m=1 nf=1 sd=0.2u ad=4e-14
+ as=7e-14 pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0
+ scc=0
m12 add_pwr vbs3 vcca! vcca! pch l='l_br' w='(w_br2*2)' m=1 nf=2 sd=0.2u ad=4e-14
+ as=7e-14 pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0
+ scc=0
m10 isup lock add_pwr vcca! pch l='l_lk' w='(w_lk*10)' m=1 nf=10 sd=0.2u ad=4e-14
+ as=7e-14 pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0
+ scc=0
m3 net27 open add_pwr vcca! pch l='l_lk' w='(w_lk*10)' m=1 nf=10 sd=0.2u ad=4e-14
+ as=7e-14 pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0
+ scc=0
m9 add_pwr open isup gnd! nch l='l_lk' w='(w_lk*8)' m=1 nf=8 sd=0.2u ad=3.5e-14
+ as=3.5e-14 pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0
+ scb=0 scc=0
m5 add_pwr lock net27 gnd! nch l='l_lk' w='(w_lk*8)' m=1 nf=8 sd=0.2u ad=3.5e-14
+ as=3.5e-14 pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0
+ scb=0 scc=0
.ends alib_idac_nvt

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : aux_inv
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt aux_inv in out vgnd vpwr l_aux=60n wp=200n wn=200n
m0 out in vgnd gnd! nch l='l_aux' w='(wn*2)' m=1 nf=2 sd=0.2u ad=3.5e-14 as=3.5e-14
+ pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m1 out in vpwr vpwr pch l='l_aux' w='(wp*1)' m=1 nf=1 sd=0.2u ad=4e-14 as=7e-14
+ pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
.ends aux_inv

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : main_inv
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt main_inv in out vgnd vpwr l_main=60n wp=200n wn=200n
m0 out in vgnd gnd! nch l='l_main' w='(wn*2)' m=1 nf=2 sd=0.2u ad=3.5e-14 as=3.5e-14
+ pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m1 out in vpwr vpwr pch l='l_main' w='(wp*2)' m=1 nf=2 sd=0.2u ad=4e-14 as=7e-14
+ pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
.ends main_inv

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : cc_inv
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt cc_inv inn inp outn outp vgnd vpwr l_main=60n l_aux=60n wp=200n wn=200n
xi3 outn outp vgnd vpwr aux_inv l_aux='l_aux' wp='wp' wn='wn'
xi2 outp outn vgnd vpwr aux_inv l_aux='l_aux' wp='wp' wn='wn'
xi1 inn outn vgnd vpwr main_inv l_main='l_main' wp='wp' wn='wn'
xi0 inp outp vgnd vpwr main_inv l_main='l_main' wp='wp' wn='wn'
.ends cc_inv

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : alib_adt_gnd
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt alib_adt_gnd adt_gnd d_ctrl w_high=1u w_low=1u
m7 net4 vcca! net3 gnd! nch_hvt l=0.5u w='(w_high*1)' m=1 nf=1 sd=0.2u ad=1.75e-13
+ as=1.75e-13 pd=2.35e-06 ps=2.35e-06 nrd=0.1 nrs=0.1 sa=0.175u sb=0.175u sca=0
+ scb=0 scc=0
m9 net2 vcca! gnd! gnd! nch_hvt l=0.5u w='(w_high*1)' m=1 nf=1 sd=0.2u ad=1.75e-13
+ as=1.75e-13 pd=2.35e-06 ps=2.35e-06 nrd=0.1 nrs=0.1 sa=0.175u sb=0.175u sca=0
+ scb=0 scc=0
m6 net5 vcca! net4 gnd! nch_hvt l=0.5u w='(w_high*1)' m=1 nf=1 sd=0.2u ad=1.75e-13
+ as=1.75e-13 pd=2.35e-06 ps=2.35e-06 nrd=0.1 nrs=0.1 sa=0.175u sb=0.175u sca=0
+ scb=0 scc=0
m52 adt_gnd vcca! net5 gnd! nch_hvt l=0.5u w='(w_high*1)' m=1 nf=1 sd=0.2u ad=1.75e-13
+ as=1.75e-13 pd=2.35e-06 ps=2.35e-06 nrd=0.1 nrs=0.1 sa=0.175u sb=0.175u sca=0
+ scb=0 scc=0
m8 net3 vcca! net2 gnd! nch_hvt l=0.5u w='(w_high*1)' m=1 nf=1 sd=0.2u ad=1.75e-13
+ as=1.75e-13 pd=2.35e-06 ps=2.35e-06 nrd=0.1 nrs=0.1 sa=0.175u sb=0.175u sca=0
+ scb=0 scc=0
m5 adt_gnd d_ctrl gnd! gnd! nch_hvt l=0.5u w='(w_low*8)' m=1 nf=8 sd=0.2u ad=3.5e-14
+ as=3.5e-14 pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0
+ scb=0 scc=0
.ends alib_adt_gnd

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : dlib_freq_div4
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt dlib_freq_div4 div4 in
xi37 net14 in div2 net14 vccd! gnd! dfd1
xi38 net8 div2 div4 net8 vccd! gnd! dfd1
.ends dlib_freq_div4

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : alib_level_shifter
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt alib_level_shifter in low_vdd out
xi30 in net24 low_vdd gnd! invd1
m3 out net23 vcca! vcca! pch l=60n w=0.26u m=1 nf=1 sd=0.2u ad=4.55e-14 as=4.55e-14
+ pd=8.7e-07 ps=8.7e-07 nrd=0.384615384615 nrs=0.384615384615 sa=0.175u sb=0.175u
+ sca=0 scb=0 scc=0
m1 net23 out vcca! vcca! pch l=60n w=0.26u m=1 nf=1 sd=0.2u ad=4.55e-14 as=4.55e-14
+ pd=8.7e-07 ps=8.7e-07 nrd=0.384615384615 nrs=0.384615384615 sa=0.175u sb=0.175u
+ sca=0 scb=0 scc=0
m4 net23 in gnd! gnd! nch l=60n w=0.195u m=1 nf=1 sd=0.2u ad=3.4125e-14 as=3.4125e-14
+ pd=7.4e-07 ps=7.4e-07 nrd=0.512820512821 nrs=0.512820512821 sa=0.175u sb=0.175u
+ sca=0 scb=0 scc=0
m2 out net24 gnd! gnd! nch l=60n w=0.195u m=1 nf=1 sd=0.2u ad=3.4125e-14 as=3.4125e-14
+ pd=7.4e-07 ps=7.4e-07 nrd=0.512820512821 nrs=0.512820512821 sa=0.175u sb=0.175u
+ sca=0 scb=0 scc=0
.ends alib_level_shifter

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : alib_dco
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt alib_dco vb1 vb3 d_ctrl enb out l_main=100n l_aux=100n wp=1u wn=500n
+ w_br1=2u w_br2=4u
xi0 d_ctrl d_pwr vb1 vb3 alib_idac_nvt l_lk=0.5u w_lk=4u l_br=0.5u w_br1='w_br1'
+  w_br2='w_br2'
xi6 pn[1] p[1] pn[2] p[2] v_bot d_pwr cc_inv l_main='l_main' l_aux='l_aux' wp='wp'
+  wn='wn'
xi5 pn[0] p[0] pn[1] p[1] v_bot d_pwr cc_inv l_main='l_main' l_aux='l_aux' wp='wp'
+  wn='wn'
xi2 pn[2] p[2] pn[0] p[0] v_bot d_pwr cc_inv l_main='l_main' l_aux='l_aux' wp='wp'
+  wn='wn'
xi11 vccd! enb pn[0] vccd! gnd! buftd1
xi75 v_bot d_ctrl alib_adt_gnd w_high=0.8u w_low=4u
xi46 out p_osc dlib_freq_div4
xi45 p[0] d_pwr p_osc alib_level_shifter
.ends alib_dco

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : dlib_udc
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt dlib_udc z dn up
xi11 br2 dn plt2 br1 vccd! gnd! dfd1
xi10 br1 up br2 plt1 vccd! gnd! dfd1
xi12 br1 br2 z vccd! gnd! xor2d1
.ends dlib_udc

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : aux_inv_crst
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt aux_inv_crst in out vbot vtop l_aux=60n wp=200n wn=200n
m3 out in net23 vcca! pch l='l_main' w='(wp*1)' m=1 nf=1 sd=0.2u ad=4e-14 as=7e-14
+ pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m2 net23 in net25 vcca! pch l='l_main' w='(wp*1)' m=1 nf=1 sd=0.2u ad=4e-14 as=7e-14
+ pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m1 net25 in net27 vcca! pch l='l_main' w='(wp*1)' m=1 nf=1 sd=0.2u ad=4e-14 as=7e-14
+ pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m0 net27 in vtop vcca! pch l='l_main' w='(wp*1)' m=1 nf=1 sd=0.2u ad=4e-14 as=7e-14
+ pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m7 out in net24 gnd! nch l='l_main' w='(wn*1)' m=1 nf=1 sd=0.2u ad=3.5e-14 as=3.5e-14
+ pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m6 net24 in net26 gnd! nch l='l_main' w='(wn*1)' m=1 nf=1 sd=0.2u ad=3.5e-14 as=3.5e-14
+ pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m5 net26 in net28 gnd! nch l='l_main' w='(wn*1)' m=1 nf=1 sd=0.2u ad=3.5e-14 as=3.5e-14
+ pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m4 net28 in vbot gnd! nch l='l_main' w='(wn*1)' m=1 nf=1 sd=0.2u ad=3.5e-14 as=3.5e-14
+ pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
.ends aux_inv_crst

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : main_inv_crst
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt main_inv_crst in out vbot vtop l_main=60n wp=200n wn=200n
m4 out in vbot gnd! nch l='l_main' w='(wn*1)' m=1 nf=1 sd=0.2u ad=3.5e-14 as=3.5e-14
+ pd=7.5e-07 ps=7.5e-07 nrd=0.5 nrs=0.5 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
m0 out in vtop vcca! pch l='l_main' w='(wp*1)' m=1 nf=1 sd=0.2u ad=4e-14 as=7e-14
+ pd=8e-07 ps=1.5e-06 nrd=0.25 nrs=0.25 sa=0.175u sb=0.175u sca=0 scb=0 scc=0
.ends main_inv_crst

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : cc_inv_crst
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt cc_inv_crst inn inp outn outp vgnd vpwr l_main=60n l_aux=60n wp=200n wn=200n
xi3 outn outp vgnd vpwr aux_inv_crst l_aux='l_aux' wp='wp' wn='wn'
xi2 outp outn vgnd vpwr aux_inv_crst l_aux='l_aux' wp='wp' wn='wn'
xi1 inn outn vgnd vpwr main_inv_crst l_main='l_main' wp='wp' wn='wn'
xi0 inp outp vgnd vpwr main_inv_crst l_main='l_main' wp='wp' wn='wn'
.ends cc_inv_crst

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : alib_vco_crst
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
.subckt alib_vco_crst a_freq anlg_in enb l_main=60n l_aux=60n wp=200n wn=200n
r0 net25 anlg_in r=200
r1 net25 net26 r=100
r2 net26 gnd! r=100
xi6 pn[4] p[4] pn[0] p[0] net25 vcca! cc_inv_crst l_main='l_main' l_aux='l_aux'
+ wp='wp' wn='wn'
xi2 pn[0] p[0] pn[1] p[1] net25 vcca! cc_inv_crst l_main='l_main' l_aux='l_aux'
+ wp='wp' wn='wn'
xi4 pn[2] p[2] pn[3] p[3] net25 vcca! cc_inv_crst l_main='l_main' l_aux='l_aux'
+ wp='wp' wn='wn'
xi3 pn[1] p[1] pn[2] p[2] net25 vcca! cc_inv_crst l_main='l_main' l_aux='l_aux'
+ wp='wp' wn='wn'
xi5 pn[3] p[3] pn[4] p[4] net25 vcca! cc_inv_crst l_main='l_main' l_aux='l_aux'
+ wp='wp' wn='wn'
xi8 vccd! enb pn[0] vccd! gnd! buftd1
xi7 p[0] a_freq vcca! net26 buffd1
.ends alib_vco_crst

********************************************************************************
* Library          : vco_adc2_65nm
* Cell             : vco_adc_65nm_crst_tb
* View             : schematic
* View Search List : hspice hspiceD schematic spice veriloga
* View Stop List   : hspice hspiceD
********************************************************************************
xi_dco vb1 vb3 d1 enb p_dco alib_dco l_main='d_lmain' l_aux='d_laux' wp='d_wp'
+ wn='d_wn' w_br1='w_br1' w_br2='w_br2'
vb1 vb1 gnd! dc='vb1'
vb3 vb3 gnd! dc='vb3'
vccd vccd! gnd! dc='vsup'
vcca vcca! gnd! dc='vsup'
vtest d1_test gnd! dc='vd1'
vclk clk gnd! pulse ( 0 'vsup' 0 1n 1n 19.835n 41.67n )
venb enb gnd! pulse ( 0 'vsup' 0 1n 1n 200n 1 )
xi15 dout fb vccd! gnd! del4
xi_udc1 d1 p_vco fb dlib_udc
xi_udc2 d2 p_dco fb dlib_udc
vsin anlg_in gnd! sin ( 'vin_os' 'vin_amp' 'vin_freq' 'vin_del' 0 0 )
xi_dqtz d2 clk dout plt_net vccd! gnd! dfd1
xi_vco p_vco anlg_in enb alib_vco_crst l_main='v_lmain' l_aux='v_laux' wp='v_wp'
+  wn='v_wn'

* Created: Tue Jan 23 16:17:14 2024

.subckt INVD1 I ZN VDD VSS
MU1-M_u2 ZN I VSS VSS nch w=0.39u l=0.06u
MU1-M_u3 ZN I VDD VDD pch w=0.52u l=0.06u
.ends



.subckt BUFTD1 I OE Z VDD VSS
M_u17-M_u2 net31 OE VSS VSS nch w=0.39u l=0.06u
M_u7 Z INEN VSS VSS nch w=0.3u l=0.06u
MU19-M_u4 INEN I VSS VSS nch w=0.39u l=0.06u
MU19-M_u3 INEN net31 VSS VSS nch w=0.39u l=0.06u
MU18-M_u4 XU18-net6 I VSS VSS nch w=0.23u l=0.06u
MU18-M_u3 INEP OE XU18-net6 VSS nch w=0.23u l=0.06u
M_u17-M_u3 net31 OE VDD VDD pch w=0.52u l=0.06u
MU19-M_u1 XU19-net8 net31 VDD VDD pch w=0.52u l=0.06u
MU19-M_u2 INEN I XU19-net8 VDD pch w=0.52u l=0.06u
MU18-M_u2 INEP I VDD VDD pch w=0.23u l=0.06u
MU18-M_u1 INEP OE VDD VDD pch w=0.23u l=0.06u
M_u6 Z INEP VDD VDD pch w=0.45u l=0.06u
.ends



.subckt DFD1 D CP Q QN VDD VSS
MI4 net43 INCPB VSS VSS nch w=0.37u l=0.06u
MI5 net072 D net43 VSS nch w=0.37u l=0.06u
MI47 net072 INCP net50 VSS nch w=0.15u l=0.06u
MI48 net50 net051 VSS VSS nch w=0.15u l=0.06u
MI55 net053 INCPB net055 VSS nch w=0.15u l=0.06u
MI50 net051 INCP net055 VSS nch w=0.2u l=0.06u
MI57-M_u2 net053 net068 VSS VSS nch w=0.195u l=0.06u
MI32-M_u2 INCP INCPB VSS VSS nch w=0.18u l=0.06u
MI31-M_u2 INCPB CP VSS VSS nch w=0.195u l=0.06u
MI29-M_u2 QN net053 VSS VSS nch w=0.39u l=0.06u
MI27-M_u2 Q net068 VSS VSS nch w=0.39u l=0.06u
MI53-M_u2 net068 net055 VSS VSS nch w=0.39u l=0.06u
MI13-M_u2 net051 net072 VSS VSS nch w=0.39u l=0.06u
MI57-M_u3 net053 net068 VDD VDD pch w=0.26u l=0.06u
MI32-M_u3 INCP INCPB VDD VDD pch w=0.26u l=0.06u
MI31-M_u3 INCPB CP VDD VDD pch w=0.26u l=0.06u
MI29-M_u3 QN net053 VDD VDD pch w=0.52u l=0.06u
MI27-M_u3 Q net068 VDD VDD pch w=0.52u l=0.06u
MI53-M_u3 net068 net055 VDD VDD pch w=0.52u l=0.06u
MI13-M_u3 net051 net072 VDD VDD pch w=0.52u l=0.06u
MI6 net072 D net74 VDD pch w=0.46u l=0.06u
MI7 net74 INCP VDD VDD pch w=0.46u l=0.06u
MI52 net051 INCPB net055 VDD pch w=0.215u l=0.06u
MI54 net053 INCP net055 VDD pch w=0.15u l=0.06u
MI45 net072 INCPB net86 VDD pch w=0.15u l=0.06u
MI43 net86 net051 VDD VDD pch w=0.15u l=0.06u
.ends



.subckt DEL4 I Z VDD VSS
MI3-M_u2 Z net010 VSS VSS nch w=0.39u l=0.06u
MI7-M_u2 net010 net08 VSS VSS nch w=0.3u l=1u
MI8-M_u2 net08 net12 VSS VSS nch w=0.3u l=1u
MI4-M_u2 net12 net10 VSS VSS nch w=0.3u l=1u
MI5-M_u2 net10 net8 VSS VSS nch w=0.3u l=1u
MI6-M_u2 net8 I VSS VSS nch w=0.39u l=0.06u
MI3-M_u3 Z net010 VDD VDD pch w=0.52u l=0.06u
MI7-M_u3 net010 net08 VDD VDD pch w=0.3u l=1u
MI8-M_u3 net08 net12 VDD VDD pch w=0.3u l=1u
MI4-M_u3 net12 net10 VDD VDD pch w=0.3u l=1u
MI5-M_u3 net10 net8 VDD VDD pch w=0.3u l=1u
MI6-M_u3 net8 I VDD VDD pch w=0.52u l=0.06u
.ends



.subckt XOR2D1 A1 A2 Z VDD VSS
M_u6-M_u3 net4 net10 net14 VSS nch w=0.32u l=0.06u
MI1-M_u3 net6 A1 net14 VSS nch w=0.31u l=0.06u
M_u2-M_u2 net4 A2 VSS VSS nch w=0.39u l=0.06u
M_u5-M_u2 net6 net4 VSS VSS nch w=0.19u l=0.06u
M_u4-M_u2 Z net14 VSS VSS nch w=0.39u l=0.06u
M_u8-M_u2 net10 A1 VSS VSS nch w=0.195u l=0.06u
M_u6-M_u2 net4 A1 net14 VDD pch w=0.34u l=0.06u
MI1-M_u2 net6 net10 net14 VDD pch w=0.31u l=0.06u
M_u2-M_u3 net4 A2 VDD VDD pch w=0.52u l=0.06u
M_u5-M_u3 net6 net4 VDD VDD pch w=0.21u l=0.06u
M_u4-M_u3 Z net14 VDD VDD pch w=0.52u l=0.06u
M_u8-M_u3 net10 A1 VDD VDD pch w=0.26u l=0.06u
.ends



.subckt BUFFD1 I Z VDD VSS
MI1-M_u2 Z net6 VSS VSS nch w=0.39u l=0.06u
MI2-M_u2 net6 I VSS VSS nch w=0.195u l=0.06u
MI1-M_u3 Z net6 VDD VDD pch w=0.52u l=0.06u
MI2-M_u3 net6 I VDD VDD pch w=0.26u l=0.06u
.ends




.tran 1n 12m start=0 simStart=0

.probe tran v(*) level=1
.probe tran v(xi_dco.d_pwr) v(xi_dco.v_bot) v(xi_dco.p[0]) v(xi_dco.p_osc)
+ v(xi_vco.p[0]) v(anlg_in) v(clk) v(d1) v(d2) v(dout) v(enb) v(fb) v(p_dco)
+ v(p_vco) i(vcca) i(vccd)

.option PARHIER = LOCAL

.print v(clk) v(dout) v(anlg_in)
.measure tran prd trig v(p_vco) val=0.8 rise=10 targ v(p_vco) val=0.8 rise=20
.measure tran freq_v param='10/prd'
.measure tran prd1 trig v(p_dco) val=0.8 rise=10 targ v(p_dco) val=0.8 rise=30
.measure tran freq_d param='20/prd1'
.measure tran I_analog avg i(vcca) from=0.1m to=1.1m
*.measure tran I_analog1 avg i(vcca1) from=0.1m to=1.1m
.measure tran I_digital avg i(vccd) from=0.1m to=1.1m
.measure tran A_power param='I_analog*1.2'
*.measure tran A_power1 param='I_analog1*1.2'
.measure tran D_power param='I_digital*1.2'
** options for finesim simulator
* .option finesim_fsdb_version=5.6
* .option finesim_output=fsdb
.option finesim_mode="alib*:spicead":subckt
.option finesim_mode="dlib*:promd":subckt
.option finesim_print_period=4n
*.option runlvl=7
*.option accurate=1
*.option finesim_mode=alib_vco:spicehd:subckt
.option finesim_mode=prohd




.end
