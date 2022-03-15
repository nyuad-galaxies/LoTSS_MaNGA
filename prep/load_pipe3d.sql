DROP TABLE IF EXISTS p3d CASCADE;

CREATE TABLE p3d (
    name                varchar(17), --	char[32]		manga-plate-ifudsgn unique name
    plate               integer, --	int64		plate ID of the MaNGA cube
    ifudsgn             integer, --	char[32]		IFU bundle ID of the MaNGA cube
    plateifu            varchar(11) PRIMARY KEY, --	char[32]		code formed by the plate and ifu names
    mangaid             varchar(11), --	char[32]	--	MaNGA ID
    objra               real, --	float64	degree	RA of the object
    objdec              real, --	float64	degree	DEC of the object
    log_SFR_Ha          real, --	float64	log(Msun/yr)	Integrated star-formation rate derived from Ha
    FoV                 real, --	float64		Ratio between the diagonal radius of the cube and Re
    Re_kpc              real, --	float64	kpc	Effective radius in kpc
    e_log_Mass          real, --	float64	log(Msun)	Error of the integrated stellar mass
    e_log_SFR_Ha        real, --	float64	log(Msun/yr)	Error of the Integrated SFR derived from Ha
    log_Mass            real, --	float64	log(Msun)	Integrated stellar mass in units of the solar mass in log scale
    log_SFR_ssp         real, --	float64	log(Msun/yr)	Integrated SFR derived from the SSP analysis t<32Myr
    log_NII_Ha_cen      real, --	float64		logarithm of the [NII]6583/Halpha line ratio in the central 2.5 arcsec aperture
    e_log_NII_Ha_cen    real, --	float64		error in the logarithm of the [NII]6583/Halpha line ratio
    log_OIII_Hb_cen     real, --	float64		logarithm of the [OIII]5007/Hbeta line ratio in the central 2.5 arcsec aperture
    e_log_OIII_Hb_cen   real, --	float64		error in the logarithm of the [OIII]5007/Hbeta line ratio
    log_SII_Ha_cen      real, --	float64		logarithm of the [SII]6717+6731/Halpha line ratio in the central 2.5 arcsec aperture
    e_log_SII_Ha_cen    real, --	float64		error in the logarithm of the [SII]6717/Halpha line ratio
    log_OII_Hb_cen      real, --	float64		logarithm of the [OII]3727/Hbeta line ratio in the central 2.5 arcsec aperture
    e_log_OII_Hb_cen    real, --	float64		error in the logarithm of the [OII]3727/Hbeta line ratio
    EW_Ha_cen           real, --	float64	Angstrom	EW of Halpha in the central 2.5arcsec/aperture
    e_EW_Ha_cen         real, --	float64	Angstrom	error of the EW of Halpha in the central 2.5arcsec/aperture
    ZH_LW_Re_fit            real, --	float64	log(yr)	Luminosity weighted (LW) metallicity of the stellar population
    e_ZH_LW_Re_fit          real, --	float64	log(yr)	Error in the LW metallicity
    alpha_ZH_LW_Re_fit          real, --	float64		slope of the gradient of the LW log-metallicity
    e_alpha_ZH_LW_Re_fit            real, --	float64		Error of the slope of the gradient of the LW
    ZH_MW_Re_fit            real, --	float64	log(yr)	Mass weighted (MW) metallicity of the stellar population in log
    e_ZH_MW_Re_fit          real, --	float64	log(yr)	Error in the MW metallicity
    alpha_ZH_MW_Re_fit          real, --	float64		slope of the gradient of the MW metallicity
    e_alpha_ZH_MW_Re_fit            real, --	float64		Error of the slope of the gradient of the MW metallicity
    Age_LW_Re_fit           real, --	float64	log(yr)	Luminosity weighted age of the stellar population
    e_Age_LW_Re_fit         real, --	float64	log(yr)	Error in the luminosity weighted age of the stellar population
    alpha_Age_LW_Re_fit         real, --	float64		slope of the gradient of the LW log-age of the stellar population
    e_alpha_Age_LW_Re_fit           real, --	float64		Error of the slope of the gradient of the LW log-age
    Age_MW_Re_fit           real, --	float64	log(yr)	Mass weighted (MW) age of the stellar population in logarithm
    e_Age_MW_Re_fit         real, --	float64	log(yr)	Error in the MW age of the stellar population
    alpha_Age_MW_Re_fit         real, --	float64		slope of the gradient of the MW log-age of the stellar population
    e_alpha_Age_MW_Re_fit           real, --	float64		Error of the slope of the gradient of the MW log-age of
    Re_arc          real, --	float64	arcsec	effective radius in arcsec
    DL          real, --	float64		Adopted luminosity distance in Mpc
    DA          real, --	float64		Adopted angular-diameter distance in Mpc
    PA          real, --	float64	degrees	Adopted position angle in degrees
    ellip           real, --	float64		Adopted eccentricity
    log_Mass_gas            real, --	float64	log(Msun)	Integrated gas mass in units of the solar mass
    vel_sigma_Re            real, --	float64		Velocity/dispersion ratio for the stellar populations within 1Re
    e_vel_sigma_Re          real, --	float64		Error in the velocity/dispersion ratio for the stellar population
    log_SFR_SF          real, --	float64	log(Msun/yr)	Integrated SFR using only the spaxels compatible with SF
    log_SFR_D_C         real, --	float64	log(Msun/yr)	Integrated SFR diffuse corrected
    OH_O3N2_cen         real, --	float64	dex	Oxygen abundance using the calibrator O3N2 at the central region
    e_OH_O3N2_cen           real, --	float64	dex	Error in Oxygen abundance using the calibrator O3N2 at the central region
    OH_N2_cen           real, --	float64	dex	Oxygen abundance using the calibrator N2 at the central region
    e_OH_N2_cen         real, --	float64	dex	Error in Oxygen abundance using the calibrator N2 at the central region
    OH_ONS_cen          real, --	float64	dex	Oxygen abundance using the calibrator ONS at the central region
    e_OH_ONS_cen            real, --	float64	dex	Error in Oxygen abundance using the calibrator ONS at the central region
    OH_R23_cen          real, --	float64	dex	Oxygen abundance using the calibrator R23 at the central region
    e_OH_R23_cen            real, --	float64	dex	Error in Oxygen abundance using the calibrator R23 at the central region
    OH_pyqz_cen         real, --	float64	dex	Oxygen abundance using the calibrator pyqz at the central region
    e_OH_pyqz_cen           real, --	float64	dex	Error in Oxygen abundance using the calibrator pyqz at the central region
    OH_t2_cen           real, --	float64	dex	Oxygen abundance using the calibrator t2 at the central region
    e_OH_t2_cen         real, --	float64	dex	Error in Oxygen abundance using the calibrator t2 at the central region
    OH_M08_cen          real, --	float64	dex	Oxygen abundance using the calibrator M08 at the central region
    e_OH_M08_cen            real, --	float64	dex	Error in Oxygen abundance using the calibrator M08 at the central region
    OH_T04_cen          real, --	float64	dex	Oxygen abundance using the calibrator T04 at the central region
    e_OH_T04_cen            real, --	float64	dex	Error in Oxygen abundance using the calibrator T04 at the central region
    OH_dop_cen          real, --	float64	dex	Oxygen abundance using the calibrator dop at the central region
    e_OH_dop_cen            real, --	float64	dex	Error in Oxygen abundance using the calibrator dop at the central region
    OH_O3N2_EPM09_cen           real, --	float64	dex	Oxygen abundance using the calibrator O3N2_EPM09 at the central region
    e_OH_O3N2_EPM09_cen         real, --	float64	dex	Error in Oxygen abundance using the calibrator O3N2_EPM09 at the central region
    log_OI_Ha_cen           real, --	float64		logarithm of the [OI]6301/Ha within a central aperture of 2arcsec
    e_log_OI_Ha_cen         real, --	float64		error in the logarithm of the [OI]6301/Hbeta within a central aperture of 2arcsec
    Ha_Hb_cen           real, --	float64		Ratio between the flux of Halpha and Hbeta within a central aperture of 2arcsec
    e_Ha_Hb_cen         real, --	float64		error of Ha_Hb_cen
    log_NII_Ha_Re           real, --	float64		logarithm of the [NII]6583/Halpha line ratio at 1Re
    e_log_NII_Ha_Re         real, --	float64		error in the logarithm of the [NII]6583/Halpha at 1Re
    log_OIII_Hb_Re          real, --	float64		logarithm of the [OIII]5007/Hbeta line ratio at 1Re
    e_log_OIII_Hb_Re            real, --	float64		error in the logarithm of the [OIII]5007/Hbeta at 1Re
    log_SII_Ha_Re           real, --	float64		logarithm of the [SII]6717+6731/Halpha at 1Re
    e_log_SII_Ha_Re         real, --	float64		error in the logarithm of the [SII]6717/Halpha at 1Re
    log_OII_Hb_Re           real, --	float64		logarithm of the [OII]3727/Hbeta at 1Re
    e_log_OII_Hb_Re         real, --	float64		error in the logarithm of the [OII]3727/Hbeta at 1Re
    log_OI_Ha_Re            real, --	float64		logarithm of the [OI]6301/Ha at 1Re
    e_log_OI_Ha_Re          real, --	float64		error in the logarithm of the [OI]6301/Hbeta at 1Re
    EW_Ha_Re            real, --	float64	Angstrom	EW of Halpha at 1Re
    e_EW_Ha_Re          real, --	float64	Angstrom	error of the EW of Halpha at 1Re
    Ha_Hb_Re            real, --	float64		Ratio between the flux of Halpha and Hbeta within at 1Re
    e_Ha_Hb_Re          real, --	float64		error of Ha_Hb_Re
    log_NII_Ha_ALL          real, --	float64		logarithm of the [NII]6583/Halpha line ratio within the FoV
    e_log_NII_Ha_ALL            real, --	float64		error in the logarithm of the [NII]6583/Halpha within the FoV
    log_OIII_Hb_ALL         real, --	float64		logarithm of the [OIII]5007/Hbeta line ratio within the FoV
    e_log_OIII_Hb_ALL           real, --	float64		error in the logarithm of the [OIII]5007/Hbeta within the FoV
    log_SII_Ha_ALL          real, --	float64		logarithm of the [SII]6717+6731/Halpha within the FoV
    e_log_SII_Ha_ALL            real, --	float64		error in the logarithm of the [SII]6717/Halpha within the FoV
    log_OII_Hb_ALL          real, --	float64		logarithm of the [OII]3727/Hbeta within the FoV
    e_log_OII_Hb_ALL            real, --	float64		error in the logarithm of the [OII]3727/Hbeta within the FoV
    log_OI_Ha_ALL           real, --	float64		logarithm of the [OI]6301/Ha within the FoV
    e_log_OI_Ha_ALL         real, --	float64		error in the logarithm of the [OI]6301/Hbeta within the FoV
    EW_Ha_ALL           real, --	float64	Angstrom	EW of Halpha within the FoV
    e_EW_Ha_ALL         real, --	float64	Angstrom	error of the EW of Halpha within the FoV
    Ha_Hb_ALL           real, --	float64		Ratio between the flux of Halpha and Hbeta within the FoV
    Sigma_Mass_cen          real, --	float64	log(Msun/pc^2)	Stellar Mass surface density in the central 2arcsec
    e_Sigma_Mass_cen            real, --	float64	log(Msun/pc^2)	error in Stellar Mass density in the central 2arcsec
    Sigma_Mass_Re           real, --	float64	log(Msun/pc^2)	Stellar Mass surface density at 1Re
    e_Sigma_Mass_Re         real, --	float64	log(Msun/pc^2)	error in Stellar Mass density at 1Re
    Sigma_Mass_ALL          real, --	float64	log(Msun/pc^2)	Average Stellar Mass surface density within the FoV
    e_Sigma_Mass_ALL            real, --	float64	log(Msun/pc^2)	error in the Average Stellar Mass surface density within the FoV
    T30         real, --	float64	Gyr	Look Back time at which the galaxy has formed 30% of its mass
    ZH_T30          real, --	float64	dex	Stellar metallicity at T30 time
    ZH_Re_T30           real, --	float64	dex	Stellar metallicity at Re at T30 time
    a_ZH_T30            real, --	float64	dex	slope of the ZH gradient at time T30 time
    T40         real, --	float64	Gyr	Look Back time at which the galaxy has formed 40% of its mass
    ZH_T40          real, --	float64	dex	Stellar metallicity at T40 time
    ZH_Re_T40           real, --	float64	dex	Stellar metallicity at Re at T40 time
    a_ZH_T40            real, --	float64	dex	slope of the ZH gradient at time T40 time
    T50         real, --	float64	Gyr	Look Back time at which the galaxy has formed 50% of its mass
    ZH_T50          real, --	float64	dex	Stellar metallicity at T50 time
    ZH_Re_T50           real, --	float64	dex	Stellar metallicity at Re at T50 time
    a_ZH_T50            real, --	float64	dex	slope of the ZH gradient at time T50 time
    T60         real, --	float64	Gyr	Look Back time at which the galaxy has formed 60% of its mass
    ZH_T60          real, --	float64	dex	Stellar metallicity at T60 time
    ZH_Re_T60           real, --	float64	dex	Stellar metallicity at Re at T60 time
    a_ZH_T60            real, --	float64	dex	slope of the ZH gradient at time T60 time
    T70         real, --	float64	Gyr	Look Back time at which the galaxy has formed 70% of its mass
    ZH_T70          real, --	float64	dex	Stellar metallicity at T70 time
    ZH_Re_T70           real, --	float64	dex	Stellar metallicity at Re at T70 time
    a_ZH_T70            real, --	float64	dex	slope of the ZH gradient at time T70 time
    T80         real, --	float64	Gyr	Look Back time at which the galaxy has formed 80% of its mass
    ZH_T80          real, --	float64	dex	Stellar metallicity at T80 time
    ZH_Re_T80           real, --	float64	dex	Stellar metallicity at Re at T80 time
    a_ZH_T80            real, --	float64	dex	slope of the ZH gradient at time T80 time
    T90         real, --	float64	Gyr	Look Back time at which the galaxy has formed 90% of its mass
    ZH_T90          real, --	float64	dex	Stellar metallicity at T90 time
    ZH_Re_T90           real, --	float64	dex	Stellar metallicity at Re at T90 time
    a_ZH_T90            real, --	float64	dex	slope of the ZH gradient at time T90 time
    T95         real, --	float64	Gyr	Look Back time at which the galaxy has formed 95% of its mass
    ZH_T95          real, --	float64	dex	Stellar metallicity at T95 time
    ZH_Re_T95           real, --	float64	dex	Stellar metallicity at Re at T95 time
    a_ZH_T95            real, --	float64	dex	slope of the ZH gradient at time T95 time
    T99         real, --	float64	Gyr	Look Back time at which the galaxy has formed 99% of its mass
    ZH_T99          real, --	float64	dex	Stellar metallicity at T99 time
    ZH_Re_T99           real, --	float64	dex	Stellar metallicity at Re at T99 time
    a_ZH_T99            real, --	float64	dex	slope of the ZH gradient at time T99 time
    log_Mass_gas_Av_gas_OH          real, --	float64	log(Msun)	Gas mass estimated from the gas dust attenuation considering the oxygen abundance
    log_Mass_gas_Av_ssp_OH          real, --	float64	log(Msun)	Gas mass estimated from the stellar dust attenuation considering the oxygen abundance
    vel_ssp_2           real, --	float64	km/s	stellar velocity at 2Re
    e_vel_ssp_2         real, --	float64	km/s	error in vel_ssp_2
    vel_Ha_2            real, --	float64	km/s	Ha velocity at 2Re
    e_vel_Ha_2          real, --	float64	km/s	error in vel_Ha_2
    vel_ssp_1           real, --	float64	km/s	stellar velocity at 1Re
    e_vel_ssp_1         real, --	float64	km/s	error of vel_ssp_1
    vel_Ha_1            real, --	float64	km/s	Ha velocity at 1Re
    e_vel_Ha_1          real, --	float64	km/s	error of e_vel_Ha_1
    log_SFR_ssp_100Myr          real, --	float64	log(Msun/yr)	Integrated SFR derived from the SSP analysis t<100Myr
    log_SFR_ssp_10Myr           real, --	float64	log(Msun/yr)	Integrated SFR derived from the SSP analysis t<10Myr
    vel_disp_Ha_cen         real, --	float64	km/s	Ha velocity dispersion at the central regions
    vel_disp_ssp_cen            real, --	float64	km/s	Stellar velocity dispersion at the central regions
    vel_disp_Ha_1Re         real, --	float64	km/s	Ha velocity dispersion at 1 Re
    vel_disp_ssp_1Re            real, --	float64	km/s	Stellar velocity at 1 Re
    log_Mass_in_Re          real, --	float64	log(Msun)	Integrated stellar mass within one optical Re
    ML_int          real, --	float64	Msun/Lsun	V-band mass-to-light ratio from integrated quantities
    ML_avg          real, --	float64	Msun/Lsun	V-band mass-to-light ratio average across the FoV
    F_Ha_cen            real, --	float64	10^-16 erg/cm/s	Flux intensity of Halpha in the central 2.5arcsec/aperture
    e_F_Ha_cen          real, --	float64	10^-16 erg/cm/s	error of F_Ha_cen
    R50_kpc_V           real, --	float64	kpc	R50 in the V-band within the FoV of the cube
    e_R50_kpc_V         real, --	float64	kpc	error of R50_kpc_V
    R50_kpc_Mass            real, --	float64	kpc	R50 in Mass within the FoV of the cube
    e_R50_kpc_Mass          real, --	float64	kpc	error of R50_kpc_Mass
    log_Mass_corr_in_R50_V          real, --	float64	log(Msun)	Integrated stellar mass within one R50 in the V-band
    e_log_Mass_corr_in_R50_V            real, --	float64	log(Msun)	error of log_Mass_corr_in_R50_V
    log_Mass_gas_Av_gas_log_log         real, --	float64	log(Msun)	Gas mass estimated from the gas dust attenuation using the updated relation by Barrera-Ballesteros et al. 2020
    Av_gas_Re           real, --	float64	mag	Dust attenuation in the V-band derived from the Ha/Hb line ratios
    e_Av_gas_Re         real, --	float64	mag	Error of the dust attenuation in the V-band
    Av_ssp_Re           real, --	float64	mag	Dust attenuation in the V-band derived from the analysis of the stellar population
    e_Av_ssp_Re         real, --	float64	mag	Error of the dust attenuation in the V-band derived for the stellar population
    Lambda_Re           real, --	float64		Specific angular momentum (lambda parameter) for the stellar population
    e_Lambda_Re         real, --	float64		error in the specific angular momentum (lambda parameter)
    nsa_redshift            real, --	float64		Redshift extracted from the NSA catalog
    nsa_mstar           real, --	float64	Msun	Stellar Mass extracted from the NSA catalog
    nsa_inclination         real, --	float64	degree	Inclination of the galaxy extracted from the NSA catalog
    flux_OII3726_03_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [OII]3726.03 at 1Re
    e_flux_OII3726_03_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [OII]3726.03 at 1Re
    flux_OII3726_03_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [OII]3726.03 at 1Re
    e_flux_OII3726_03_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [OII]3726.03 at 1Re
    flux_OII3728_82_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [OII]3728.82 at 1Re
    e_flux_OII3728_82_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [OII]3728.82 at 1Re
    flux_OII3728_82_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [OII]3728.82 at 1Re
    e_flux_OII3728_82_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [OII]3728.82 at 1Re
    flux_HI3734_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line HI3734 at 1Re
    e_flux_HI3734_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line HI3734 at 1Re
    flux_HI3734_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line HI3734 at 1Re
    e_flux_HI3734_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line HI3734 at 1Re
    flux_HI3798_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line HI3798 at 1Re
    e_flux_HI3798_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line HI3798 at 1Re
    flux_HI3798_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line HI3798 at 1Re
    e_flux_HI3798_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line HI3798 at 1Re
    flux_HeI3889_Re_fit            real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line HeI3889 at 1Re
    e_flux_HeI3889_Re_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line HeI3889 at 1Re
    flux_HeI3889_alpha_fit            real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line HeI3889 at 1Re
    e_flux_HeI3889_alpha_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line HeI3889 at 1Re
    flux_HI3889_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line HI3889 at 1Re
    e_flux_HI3889_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line HI3889 at 1Re
    flux_HI3889_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line HI3889 at 1Re
    e_flux_HI3889_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line HI3889 at 1Re
    flux_HeI3965_Re_fit            real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line HeI3965 at 1Re
    e_flux_HeI3965_Re_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line HeI3965 at 1Re
    flux_HeI3965_alpha_fit            real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line HeI3965 at 1Re
    e_flux_HeI3965_alpha_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line HeI3965 at 1Re
    flux_NeIII_3967_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [NeIII]3967 at 1Re
    e_flux_NeIII_3967_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [NeIII]3967 at 1Re
    flux_NeIII_3967_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [NeIII]3967 at 1Re
    e_flux_NeIII_3967_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [NeIII]3967 at 1Re
    flux_CaII3968_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line CaII3968 at 1Re
    e_flux_CaII3968_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line CaII3968 at 1Re
    flux_CaII3968_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line CaII3968 at 1Re
    e_flux_CaII3968_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line CaII3968 at 1Re
    flux_Hepsilon3970_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line Hepsilon3970 at 1Re
    e_flux_Hepsilon3970_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line Hepsilon3970 at 1Re
    flux_Hepsilon3970_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line Hepsilon3970 at 1Re
    e_flux_Hepsilon3970_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line Hepsilon3970 at 1Re
    flux_Hdelta4102_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line Hdelta4102 at 1Re
    e_flux_Hdelta4102_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line Hdelta4102 at 1Re
    flux_Hdelta4102_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line Hdelta4102 at 1Re
    e_flux_Hdelta4102_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line Hdelta4102 at 1Re
    flux_Hgamma4340_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line Hgamma4340 at 1Re
    e_flux_Hgamma4340_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line Hgamma4340 at 1Re
    flux_Hgamma4340_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line Hgamma4340 at 1Re
    e_flux_Hgamma4340_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line Hgamma4340 at 1Re
    flux_Hbeta4861_Re_fit          real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line Hbeta4861 at 1Re
    e_flux_Hbeta4861_Re_fit            real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line Hbeta4861 at 1Re
    flux_Hbeta4861_alpha_fit          real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line Hbeta4861 at 1Re
    e_flux_Hbeta4861_alpha_fit            real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line Hbeta4861 at 1Re
    flux_OIII_4959_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line OIII_4959 at 1Re
    e_flux_OIII_4959_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line OIII_4959 at 1Re
    flux_OIII_4959_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line OIII_4959 at 1Re
    e_flux_OIII_4959_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line OIII_4959 at 1Re
    flux_OIII_5007_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line OIII_5007 at 1Re
    e_flux_OIII_5007_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line OIII_5007 at 1Re
    flux_OIII_5007_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line OIII_5007 at 1Re
    e_flux_OIII_5007_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line OIII_5007 at 1Re
    flux_HeI5016_Re_fit            real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line HeI5016 at 1Re
    e_flux_HeI5016_Re_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line HeI5016 at 1Re
    flux_HeI5016_alpha_fit            real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line HeI5016 at 1Re
    e_flux_HeI5016_alpha_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line HeI5016 at 1Re
    flux_NI5198_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [NI]5198 at 1Re
    e_flux_NI5198_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [NI]5198 at 1Re
    flux_NI5198_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [NI]5198 at 1Re
    e_flux_NI5198_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [NI]5198 at 1Re
    flux_NI5200_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [NI]5200 at 1Re
    e_flux_NI5200_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [NI]5200 at 1Re
    flux_NI5200_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [NI]5200 at 1Re
    e_flux_NI5200_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [NI]5200 at 1Re
    flux_HeI5876_Re_fit            real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line HeI5876 at 1Re
    e_flux_HeI5876_Re_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line HeI5876 at 1Re
    flux_HeI5876_alpha_fit            real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line HeI5876 at 1Re
    e_flux_HeI5876_alpha_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line HeI5876 at 1Re
    flux_NaI5890_Re_fit            real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line NaI5890 at 1Re
    e_flux_NaI5890_Re_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line NaI5890 at 1Re
    flux_NaI5890_alpha_fit            real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line NaI5890 at 1Re
    e_flux_NaI5890_alpha_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line NaI5890 at 1Re
    flux_NaI5896_Re_fit            real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line NaI5896 at 1Re
    e_flux_NaI5896_Re_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line NaI5896 at 1Re
    flux_NaI5896_alpha_fit            real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line NaI5896 at 1Re
    e_flux_NaI5896_alpha_fit          real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line NaI5896 at 1Re
    flux_OI6300_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [OI]6300 at 1Re
    e_flux_OI6300_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [OI]6300 at 1Re
    flux_OI6300_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [OI]6300 at 1Re
    e_flux_OI6300_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [OI]6300 at 1Re
    flux_NII6548_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [NII]6548 at 1Re
    e_flux_NII6548_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [NII]6548 at 1Re
    flux_NII6548_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [NII]6548 at 1Re
    e_flux_NII6548_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [NII]6548 at 1Re
    flux_Halpha6563_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line Halpha6563 at 1Re
    e_flux_Halpha6563_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line Halpha6563 at 1Re
    flux_Halpha6563_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line Halpha6563 at 1Re
    e_flux_Halpha6563_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line Halpha6563 at 1Re
    flux_NII6583_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [NII]6583 at 1Re
    e_flux_NII6583_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [NII]6583 at 1Re
    flux_NII6583_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [NII]6583 at 1Re
    e_flux_NII6583_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [NII]6583 at 1Re
    flux_SII6716_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [SII]6716 at 1Re
    e_flux_SII6716_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [SII]6716 at 1Re
    flux_SII6716_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [SII]6716 at 1Re
    e_flux_SII6716_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [SII]6716 at 1Re
    flux_SII6731_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [SII]6731 at 1Re
    e_flux_SII6731_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [SII]6731 at 1Re
    flux_SII6731_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [SII]6731 at 1Re
    e_flux_SII6731_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [SII]6731 at 1Re
    flux_ArIII7136_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [ArIII]7136 at 1Re
    e_flux_ArIII7136_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [ArIII]7136 at 1Re
    flux_ArIII7136_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [ArIII]7136 at 1Re
    e_flux_ArIII7136_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [ArIII]7136 at 1Re
    flux_HI9015_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line HI9015 at 1Re
    e_flux_HI9015_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line HI9015 at 1Re
    flux_HI9015_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line HI9015 at 1Re
    e_flux_HI9015_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line HI9015 at 1Re
    flux_SIII9069_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [SIII]9069 at 1Re
    e_flux_SIII9069_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [SIII]9069 at 1Re
    flux_SIII9069_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [SIII]9069 at 1Re
    e_flux_SIII9069_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [SIII]9069 at 1Re
    flux_FeII9471_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [FeII]9471 at 1Re
    e_flux_FeII9471_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [FeII]9471 at 1Re
    flux_FeII9471_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [FeII]9471 at 1Re
    e_flux_FeII9471_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [FeII]9471 at 1Re
    flux_SIII9531_Re_fit           real, --	float64	10^-16 erg/s/cm^2	Flux intensity of line [SIII]9531 at 1Re
    e_flux_SIII9531_Re_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the flux intensity of line [SIII]9531 at 1Re
    flux_SIII9531_alpha_fit           real, --	float64	10^-16 erg/s/cm^2	flux slope gradient of line [SIII]9531 at 1Re
    e_flux_SIII9531_alpha_fit         real, --	float64	10^-16 erg/s/cm^2	Error in the slope of flux of line [SIII]9531 at 1Re
    OH_Mar13_N2_Re_fit          real, --	float64	dex	Oxygen abundance using the calibrator Mar13_N2 at 1Re
    e_OH_Mar13_N2_Re_fit            real, --	char[32]	dex	Error in Oxygen abundance using the calibrator Mar13_N2 at 1Re
    OH_Mar13_N2_alpha_fit           real, --	float64	dex	Slope of the O/H gradient using the calibrator Mar13_N2
    e_OH_Mar13_N2_alpha_fit         real, --	char[32]	dex	Error in the slope of the O/H gradient using the calibrator Mar13_N2
    OH_Mar13_O3N2_Re_fit            real, --	float64	dex	Oxygen abundance using the calibrator Mar13_O3N2 at 1Re
    e_OH_Mar13_O3N2_Re_fit          real, --	char[32]	dex	Error in Oxygen abundance using the calibrator Mar13_O3N2 at 1Re
    OH_Mar13_O3N2_alpha_fit         real, --	float64	dex	Slope of the O/H gradient using the calibrator Mar13_O3N2
    e_OH_Mar13_O3N2_alpha_fit           real, --	char[32]	dex	Error in the slope of the O/H gradient using the calibrator Mar13_O3N2
    OH_T04_Re_fit           real, --	float64	dex	Oxygen abundance using the calibrator T04 at 1Re
    e_OH_T04_Re_fit         real, --	float64	dex	Error in Oxygen abundance using the calibrator T04 at 1Re
    OH_T04_alpha_fit            real, --	float64	dex	Slope of the O/H gradient using the calibrator T04
    e_OH_T04_alpha_fit          real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator T04
    OH_Pet04_N2_lin_Re_fit          real, --	float64	dex	Oxygen abundance using the calibrator Pet04_N2_lin at 1Re
    e_OH_Pet04_N2_lin_Re_fit            real, --	char[32]	dex	Error in Oxygen abundance using the calibrator Pet04_N2_lin at 1Re
    OH_Pet04_N2_lin_alpha_fit           real, --	float64	dex	Slope of the O/H gradient using the calibrator Pet04_N2_lin
    e_OH_Pet04_N2_lin_alpha_fit         real, --	char[32]	dex	Error in the slope of the O/H gradient using the calibrator Pet04_N2_lin
    OH_Pet04_N2_poly_Re_fit         real, --	float64	dex	Oxygen abundance using the calibrator Pet04_N2_poly at 1Re
    e_OH_Pet04_N2_poly_Re_fit           real, --	char[32]	dex	Error in Oxygen abundance using the calibrator Pet04_N2_poly at 1Re
    OH_Pet04_N2_poly_alpha_fit          real, --	float64	dex	Slope of the O/H gradient using the calibrator Pet04_N2_poly
    e_OH_Pet04_N2_poly_alpha_fit            real, --	char[32]	dex	Error in the slope of the O/H gradient using the calibrator Pet04_N2_poly
    OH_Pet04_O3N2_Re_fit            real, --	float64	dex	Oxygen abundance using the calibrator Pet04_O3N2 at 1Re
    e_OH_Pet04_O3N2_Re_fit          real, --	float64	dex	Error in Oxygen abundance using the calibrator Pet04_O3N2 at 1Re
    OH_Pet04_O3N2_alpha_fit         real, --	float64	dex	Slope of the O/H gradient using the calibrator Pet04_O3N2
    e_OH_Pet04_O3N2_alpha_fit           real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Pet04_O3N2
    OH_Kew02_N2O2_Re_fit            real, --	float64	dex	Oxygen abundance using the calibrator Kew02_N2O2 at 1Re
    e_OH_Kew02_N2O2_Re_fit          real, --	float64	dex	Error in Oxygen abundance using the calibrator Kew02_N2O2 at 1Re
    OH_Kew02_N2O2_alpha_fit         real, --	float64	dex	Slope of the O/H gradient using the calibrator Kew02_N2O2
    e_OH_Kew02_N2O2_alpha_fit           real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Kew02_N2O2
    OH_Pil10_ONS_Re_fit         real, --	float64	dex	Oxygen abundance using the calibrator Pil10_ONS at 1Re
    e_OH_Pil10_ONS_Re_fit           real, --	float64	dex	Error in Oxygen abundance using the calibrator Pil10_ONS at 1Re
    OH_Pil10_ONS_alpha_fit          real, --	float64	dex	Slope of the O/H gradient using the calibrator Pil10_ONS
    e_OH_Pil10_ONS_alpha_fit            real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Pil10_ONS
    OH_Pil10_ON_Re_fit          real, --	float64	dex	Oxygen abundance using the calibrator Pil10_ON at 1Re
    e_OH_Pil10_ON_Re_fit            real, --	float64	dex	Error in Oxygen abundance using the calibrator Pil10_ON at 1Re
    OH_Pil10_ON_alpha_fit           real, --	float64	dex	Slope of the O/H gradient using the calibrator Pil10_ON
    e_OH_Pil10_ON_alpha_fit         real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Pil10_ON
    OH_Pil11_NS_Re_fit          real, --	float64	dex	Oxygen abundance using the calibrator Pil11_NS at 1Re
    e_OH_Pil11_NS_Re_fit            real, --	float64	dex	Error in Oxygen abundance using the calibrator Pil11_NS at 1Re
    OH_Pil11_NS_alpha_fit           real, --	float64	dex	Slope of the O/H gradient using the calibrator Pil11_NS
    e_OH_Pil11_NS_alpha_fit         real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Pil11_NS
    OH_Cur20_RS32_Re_fit            real, --	float64	dex	Oxygen abundance using the calibrator Cur20_RS32 at 1Re
    e_OH_Cur20_RS32_Re_fit          real, --	float64	dex	Error in Oxygen abundance using the calibrator Cur20_RS32 at 1Re
    OH_Cur20_RS32_alpha_fit         real, --	float64	dex	Slope of the O/H gradient using the calibrator Cur20_RS32
    e_OH_Cur20_RS32_alpha_fit           real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Cur20_RS32
    OH_Cur20_R3_Re_fit          real, --	float64	dex	Oxygen abundance using the calibrator Cur20_R3 at 1Re
    e_OH_Cur20_R3_Re_fit            real, --	float64	dex	Error in Oxygen abundance using the calibrator Cur20_R3 at 1Re
    OH_Cur20_R3_alpha_fit           real, --	float64	dex	Slope of the O/H gradient using the calibrator Cur20_R3
    e_OH_Cur20_R3_alpha_fit         real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Cur20_R3
    OH_Cur20_O3O2_Re_fit            real, --	float64	dex	Oxygen abundance using the calibrator Cur20_O3O2 at 1Re
    e_OH_Cur20_O3O2_Re_fit          real, --	float64	dex	Error in Oxygen abundance using the calibrator Cur20_O3O2 at 1Re
    OH_Cur20_O3O2_alpha_fit         real, --	float64	dex	Slope of the O/H gradient using the calibrator Cur20_O3O2
    e_OH_Cur20_O3O2_alpha_fit           real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Cur20_O3O2
    OH_Cur20_S2_Re_fit          real, --	float64	dex	Oxygen abundance using the calibrator Cur20_S2 at 1Re
    e_OH_Cur20_S2_Re_fit            real, --	char[32]	dex	Error in Oxygen abundance using the calibrator Cur20_S2 at 1Re
    OH_Cur20_S2_alpha_fit           real, --	float64	dex	Slope of the O/H gradient using the calibrator Cur20_S2
    e_OH_Cur20_S2_alpha_fit         real, --	char[32]	dex	Error in the slope of the O/H gradient using the calibrator Cur20_S2
    OH_Cur20_R2_Re_fit          real, --	float64	dex	Oxygen abundance using the calibrator Cur20_R2 at 1Re
    e_OH_Cur20_R2_Re_fit            real, --	float64	dex	Error in Oxygen abundance using the calibrator Cur20_R2 at 1Re
    OH_Cur20_R2_alpha_fit           real, --	float64	dex	Slope of the O/H gradient using the calibrator Cur20_R2
    e_OH_Cur20_R2_alpha_fit         real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Cur20_R2
    OH_Cur20_N2_Re_fit          real, --	float64	dex	Oxygen abundance using the calibrator Cur20_N2 at 1Re
    e_OH_Cur20_N2_Re_fit            real, --	char[32]	dex	Error in Oxygen abundance using the calibrator Cur20_N2 at 1Re
    OH_Cur20_N2_alpha_fit           real, --	float64	dex	Slope of the O/H gradient using the calibrator Cur20_N2
    e_OH_Cur20_N2_alpha_fit         real, --	char[32]	dex	Error in the slope of the O/H gradient using the calibrator Cur20_N2
    OH_Cur20_R23_Re_fit         real, --	float64	dex	Oxygen abundance using the calibrator Cur20_R23 at 1Re
    e_OH_Cur20_R23_Re_fit           real, --	float64	dex	Error in Oxygen abundance using the calibrator Cur20_R23 at 1Re
    OH_Cur20_R23_alpha_fit          real, --	float64	dex	Slope of the O/H gradient using the calibrator Cur20_R23
    e_OH_Cur20_R23_alpha_fit            real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Cur20_R23
    OH_Cur20_O3N2_Re_fit            real, --	float64	dex	Oxygen abundance using the calibrator Cur20_O3N2 at 1Re
    e_OH_Cur20_O3N2_Re_fit          real, --	float64	dex	Error in Oxygen abundance using the calibrator Cur20_O3N2 at 1Re
    OH_Cur20_O3N2_alpha_fit         real, --	float64	dex	Slope of the O/H gradient using the calibrator Cur20_O3N2
    e_OH_Cur20_O3N2_alpha_fit           real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Cur20_O3N2
    OH_Cur20_O3S2_Re_fit            real, --	float64	dex	Oxygen abundance using the calibrator Cur20_O3S2 at 1Re
    e_OH_Cur20_O3S2_Re_fit          real, --	float64	dex	Error in Oxygen abundance using the calibrator Cur20_O3S2 at 1Re
    OH_Cur20_O3S2_alpha_fit         real, --	float64	dex	Slope of the O/H gradient using the calibrator Cur20_O3S2
    e_OH_Cur20_O3S2_alpha_fit           real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Cur20_O3S2
    OH_KK04_Re_fit          real, --	float64	dex	Oxygen abundance using the calibrator KK04 at 1Re
    e_OH_KK04_Re_fit            real, --	float64	dex	Error in Oxygen abundance using the calibrator KK04 at 1Re
    OH_KK04_alpha_fit           real, --	float64	dex	Slope of the O/H gradient using the calibrator KK04
    e_OH_KK04_alpha_fit         real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator KK04
    OH_Pil16_R_Re_fit           real, --	float64	dex	Oxygen abundance using the calibrator Pil16_R at 1Re
    e_OH_Pil16_R_Re_fit         real, --	float64	dex	Error in Oxygen abundance using the calibrator Pil16_R at 1Re
    OH_Pil16_R_alpha_fit            real, --	float64	dex	Slope of the O/H gradient using the calibrator Pil16_R
    e_OH_Pil16_R_alpha_fit          real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Pil16_R
    OH_Pil16_S_Re_fit           real, --	float64	dex	Oxygen abundance using the calibrator Pil16_S at 1Re
    e_OH_Pil16_S_Re_fit         real, --	float64	dex	Error in Oxygen abundance using the calibrator Pil16_S at 1Re
    OH_Pil16_S_alpha_fit            real, --	float64	dex	Slope of the O/H gradient using the calibrator Pil16_S
    e_OH_Pil16_S_alpha_fit          real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Pil16_S
    OH_Ho_Re_fit            real, --	float64	dex	Oxygen abundance using the calibrator Ho at 1Re
    e_OH_Ho_Re_fit          real, --	float64	dex	Error in Oxygen abundance using the calibrator Ho at 1Re
    OH_Ho_alpha_fit         real, --	float64	dex	Slope of the O/H gradient using the calibrator Ho
    e_OH_Ho_alpha_fit           real, --	float64	dex	Error in the slope of the O/H gradient using the calibrator Ho
    U_Dors_O32_Re_fit           real, --	float64	dex	log(U), ionization parameter using the calibrator Dors_O32 at 1Re
    e_U_Dors_O32_Re_fit         real, --	float64	dex	Error in log(U) using the calibrator Dors_O32 at 1Re
    U_Dors_O32_alpha_fit            real, --	float64	dex	Slope of the log(U) gradient using the calibrator Dors_O32
    e_U_Dors_O32_alpha_fit          real, --	float64	dex	Error in the slope of the log(U) gradient using the calibrator Dors_O32
    U_Dors_S_Re_fit         real, --	float64	dex	log(U), ionization parameter using the calibrator Dors_S at 1Re
    e_U_Dors_S_Re_fit           real, --	float64	dex	Error in log(U) using the calibrator Dors_S at 1Re
    U_Dors_S_alpha_fit          real, --	float64	dex	Slope of the log(U) gradient using the calibrator Dors_S
    e_U_Dors_S_alpha_fit            real, --	float64	dex	Error in the slope of the log(U) gradient using the calibrator Dors_S
    U_Mor16_O23_fs_Re_fit           real, --	float64	dex	log(U), ionization parameter using the calibrator Mor16_O23_fs at 1Re
    e_U_Mor16_O23_fs_Re_fit         real, --	float64	dex	Error in log(U) using the calibrator Mor16_O23_fs at 1Re
    U_Mor16_O23_fs_alpha_fit            real, --	float64	dex	Slope of the log(U) gradient using the calibrator Mor16_O23_fs
    e_U_Mor16_O23_fs_alpha_fit          real, --	float64	dex	Error in the slope of the log(U) gradient using the calibrator Mor16_O23_fs
    U_Mor16_O23_ts_Re_fit           real, --	float64	dex	log(U), ionization parameter using the calibrator Mor16_O23_ts at 1Re
    e_U_Mor16_O23_ts_Re_fit         real, --	float64	dex	Error in log(U) using the calibrator Mor16_O23_ts at 1Re
    U_Mor16_O23_ts_alpha_fit            real, --	float64	dex	Slope of the log(U) gradient using the calibrator Mor16_O23_ts
    e_U_Mor16_O23_ts_alpha_fit          real, --	float64	dex	Error in the slope of the log(U) gradient using the calibrator Mor16_O23_ts
    NH_Pil16_R_Re_fit           real, --	float64	dex	Nitrogen abundance using the calibrator Pil16_R at 1Re
    e_NH_Pil16_R_Re_fit         real, --	float64	dex	Error in Nitrogen abundance using the calibrator Pil16_R at 1Re
    NH_Pil16_R_alpha_fit            real, --	float64	dex	Slope of the N/H gradient using the calibrator Pil16_R
    e_NH_Pil16_R_alpha_fit          real, --	float64	dex	Error in the slope of the N/H gradient using the calibrator Pil16_R
    NO_Pil16_R_Re_fit           real, --	float64	dex	N/O abundance using the calibrator Pil16_R at 1Re
    e_NO_Pil16_R_Re_fit         real, --	float64	dex	Error in N/O abundance using the calibrator Pil16_R at 1Re
    NO_Pil16_R_alpha_fit            real, --	float64	dex	Slope of the N/O gradient using the calibrator Pil16_R
    e_NO_Pil16_R_alpha_fit          real, --	float64	dex	Error in the slope of the N/O gradient using the calibrator Pil16_R
    NO_Pil16_Ho_R_Re_fit            real, --	float64	dex	N/O abundance using the calibrator Pil16_Ho_R at 1Re
    e_NO_Pil16_Ho_R_Re_fit          real, --	float64	dex	Error in N/O abundance using the calibrator Pil16_Ho_R at 1Re
    NO_Pil16_Ho_R_alpha_fit         real, --	float64	dex	Slope of the N/O gradient using the calibrator Pil16_Ho_R
    e_NO_Pil16_Ho_R_alpha_fit           real, --	float64	dex	Error in the slope of the N/O gradient using the calibrator Pil16_Ho_R
    NO_Pil16_N2_R2_Re_fit           real, --	float64	dex	N/O abundance using the calibrator Pil16_N2_R2 at 1Re
    e_NO_Pil16_N2_R2_Re_fit         real, --	float64	dex	Error in N/O abundance using the calibrator Pil16_N2_R2 at 1Re
    NO_Pil16_N2_R2_alpha_fit            real, --	float64	dex	Slope of the N/O gradient using the calibrator Pil16_N2_R2
    e_NO_Pil16_N2_R2_alpha_fit          real, --	float64	dex	Error in the slope of the N/O gradient using the calibrator Pil16_N2_R2
    Ne_Oster_S_Re_fit           real, --	float64	dex	n_e, electron density using the Oster_S estimator at 1Re
    e_Ne_Oster_S_Re_fit         real, --	float64	dex	Error in n_e using the Oster_S estimator at 1Re
    Ne_Oster_S_alpha_fit            real, --	float64	dex	Slope of the n_e gradient using the Oster_S estimator
    e_Ne_Oster_S_alpha_fit          real, --	float64	dex	Error in the slope of n_e gradient using the Oster_S estimator
    Hd_Re_fit           real, --	float64	Angstrom	Value of the Hd stellar index at 1Re
    e_Hd_Re_fit         real, --	float64	Angstrom	Error of the Hd stellar index at 1Re
    Hd_alpha_fit            real, --	float64		Slope of the gradient of the Hd index
    e_Hd_alpha_fit          real, --	float64		Error in the slope of the gradient of the Hd index
    Hb_Re_fit           real, --	float64	Angstrom	Value of the Hb stellar index at 1Re
    e_Hb_Re_fit         real, --	float64	Angstrom	Error of the Hb stellar index at 1Re
    Hb_alpha_fit            real, --	float64		Slope of the gradient of the Hb index
    e_Hb_alpha_fit          real, --	float64		Error in the slope of the gradient of the Hb index
    Mgb_Re_fit          real, --	float64	Angstrom	Value of the Mgb stellar index at 1Re
    e_Mgb_Re_fit            real, --	float64	Angstrom	Error of the Mgb stellar index at 1Re
    Mgb_alpha_fit           real, --	float64		Slope of the gradient of the Mgb index
    e_Mgb_alpha_fit         real, --	float64		Error in the slope of the gradient of the Mgb index
    Fe5270_Re_fit           real, --	float64	Angstrom	Value of the Fe5270 stellar index at 1Re
    e_Fe5270_Re_fit         real, --	float64	Angstrom	Error of the Fe5270 stellar index at 1Re
    Fe5270_alpha_fit            real, --	float64		Slope of the gradient of the Fe5270 index
    e_Fe5270_alpha_fit          real, --	float64		Error in the slope of the gradient of the Fe5270 index
    Fe5335_Re_fit           real, --	float64	Angstrom	Value of the Fe5335 stellar index at 1Re
    e_Fe5335_Re_fit         real, --	float64	Angstrom	Error of the Fe5335 stellar index at 1Re
    Fe5335_alpha_fit            real, --	float64		Slope of the gradient of the Fe5335 index
    e_Fe5335_alpha_fit          real, --	float64		Error in the slope of the gradient of the Fe5335 index
    D4000_Re_fit1           real, --	float64		Value of the D40001 stellar index at 1Re
    e_D4000_Re_fit          real, --	float64		Error of the D4000 stellar index at 1Re
    D4000_alpha_fit         real, --	float64		Slope of the gradient of the D4000 index
    e_D4000_alpha_fit           real, --	float64		Error in the slope of the gradient of the D4000 index
    Hdmod_Re_fit            real, --	float64	Angstrom	Value of the Hdmod stellar index at 1Re
    e_Hdmod_Re_fit          real, --	float64	Angstrom	Error of the Hdmod stellar index at 1Re
    Hdmod_alpha_fit         real, --	float64		Slope of the gradient of the Hdmod index
    e_Hdmod_alpha_fit           real, --	float64		Error in the slope of the gradient of the Hdmod index
    Hg_Re_fit           real, --	float64	Angstrom	Value of the Hg stellar index at 1Re
    e_Hg_Re_fit         real, --	float64	Angstrom	Error of the Hg stellar index at 1Re
    Hg_alpha_fit            real, --	float64		Slope of the gradient of the Hg index
    e_Hg_alpha_fit          real, --	float64		Error in the slope of the gradient of the Hg index
    u_band_mag          real, --	float64	mag	u-band magnitude from the cube
    u_band_mag_error            real, --	float64	mag	error in u-band magnitude from the cube
    u_band_abs_mag          real, --	float64	mag	u-band abs. magnitude from the cube
    u_band_abs_mag_error            real, --	float64	mag	error in u-band magnitude from the cube
    g_band_mag          real, --	float64	mag	g-band magnitude from the cube
    g_band_mag_error            real, --	float64	mag	error in g-band magnitude from the cube
    g_band_abs_mag          real, --	float64	mag	g-band abs. magnitude from the cube
    g_band_abs_mag_error            real, --	float64	mag	error in g-band abs. magnitude from the cube
    r_band_mag          real, --	float64	mag	r-band magnitude from the cube
    r_band_mag_error            real, --	float64	mag	error in r-band magnitude from the cube
    r_band_abs_mag          real, --	float64	mag	r-band abs. magnitude from the cube
    r_band_abs_mag_error            real, --	float64	mag	error in r-band magnitude from the cube
    i_band_mag          real, --	float64	mag	i-band magnitude from the cube
    i_band_mag_error            real, --	float64	mag	error in i-band magnitude from the cube
    i_band_abs_mag          real, --	float64	mag	i-band abs. magnitude from the cube
    i_band_abs_mag_error            real, --	float64	mag	error in i-band magnitude from the cube
    B_band_mag          real, --	float64	mag	B-band magnitude from the cube
    B_band_mag_error            real, --	float64	mag	error in B-band magnitude from the cube
    B_band_abs_mag          real, --	float64	mag	B-band abs. magnitude from the cube
    B_band_abs_mag_error            real, --	float64	mag	error in B-band magnitude from the cube
    V_band_mag          real, --	float64	mag	V-band magnitude from the cube
    V_band_mag_error            real, --	float64	mag	error in V-band magnitude from the cube
    V_band_abs_mag          real, --	float64	mag	V-band abs. magnitude from the cube
    V_band_abs_mag_error            real, --	float64	mag	error in V-band magnitude from the cube
    RJ_band_mag          real, --	float64	mag	R-band magnitude from the cube
    RJ_band_mag_error            real, --	float64	mag	error R-band magnitude from the cube
    RJ_band_abs_mag          real, --	float64	mag	R-band abs. magnitude from the cube
    RJ_band_abs_mag_error            real, --	float64	mag	error in R-band abs. magnitude from the cube
    R50         real, --	float64	arcsec	g-band R50 derived from the cube
    error_R50           real, --	float64	arcsec	error in g-band R50 derived from the cube
    R90         real, --	float64	arcsec	g-band R90 derived from the cube
    error_R90           real, --	float64	arcsec	error in g-band R90 derived from the cube
    C           real, --	float64	--	R90/R50 Concentration index
    e_C         real, --	float64	--	error in concentration index
    B_V           real, ---V	float64	mag	B-V color
    error_B_V         real, ---V	float64	mag	error in the B-V color
    B_R           real, ---R	float64	mag	B-R color
    error_B_R         real, ---R	float64	mag	error in the B-R color
    log_Mass_phot           real, --	float64	log(Msun)	stellar masses derived from photometric
    e_log_Mass_phot         real, --	float64	dex	error in the stellar masses derived from photometry
    V_band_SB_at_Re           real, ---band_SB_at_Re	float64	mag/arcsec^2	V-band surface brightness at 1Re
    error_V_band_SB_at_Re         real, ---band_SB_at_Re	float64	mag/arcsec^2	error in the V-band SB at 1Re
    V_band_SB_at_R_50           real, ---band_SB_at_R_50	float64	mag/arcsec^2	V-band surface brightness at R50
    error_V_band_SB_at_R_50         real, ---band_SB_at_R_50	float64	mag/arcsec^2	error in V-band surface brightness at R50
    nsa_sersic_n_morph          real, --	float32	--	NSA sersic index
    u_g           real, ---	float32	mag	u-g NSA color
    g_r           real, ---	float32	mag	g-r NSA color
    r_i           real, ---	float32	mag	r-i NSA color
    i_z           real, ---	float32	mag	i-z NSA color
    P_CD           real, --(CD)	float32	--	Probability of being a CD galaxy
    P_E           real, --(E)	float32	--	Probability of being a E galaxy
    P_S0           real, --(S0)	float32	--	Probability of being a S0 galaxy
    P_Sa           real, --(Sa)	float32	--	Probability of being a Sa galaxy
    P_Sab           real, --(Sab)	float32	--	Probability of being a Sab galaxy
    P_Sb           real, --(Sb)	float32	--	Probability of being a Sb galaxy
    P_Sbc           real, --(Sbc)	float32	--	Probability of being a Sbc galaxy
    P_Sc           real, --(Sc)	float32	--	Probability of being a Sc galaxy
    P_Scd           real, --(Scd)	float32	--	Probability of being a Scd galaxy
    P_Sd           real, --(Sd)	float32	--	Probability of being a Sd galaxy
    P_Sdm           real, --(Sdm)	float32	--	Probability of being a Sdm galaxy
    P_Sm           real, --(Sm)	float32	--	Probability of being a Sm galaxy
    P_Irr           real, --(Irr)	float32	--	Probability of being a Irr galaxy
    best_type_n         integer, --	int64	--	Best morphologica type index based on a NN analysis
    best_type           varchar(32), --	char[32]	--	Morphological Type derived by the NN analysis
    nsa_nsaid           bigint, --	int64	--	NSA ID
    Vmax_w          real, --	float64	Mpc^-3 dex^-1	Weight for the volume correction in volume
    Num_w           real, --	float64	--	Weight of the volume correction in number
    QCFLAG          bigint --	int64		QC flat 0=good 2=bad >2 warning
);

\copy p3d FROM '../data/SDSS17Pipe3D_v3_1_1.csv' DELIMITER ',' CSV HEADER;

ALTER TABLE p3d OWNER TO lotss_user;

CREATE INDEX ON p3d (q3c_ang2ipix(objra, objdec));
CREATE INDEX ON p3d (mangaid);

CLUSTER p3d_q3c_ang2ipix_idx ON p3d;


ALTER TABLE lotss DROP COLUMN p3d;
ALTER TABLE lotss ADD COLUMN p3d varchar(11) REFERENCES p3d(plateifu);
UPDATE lotss AS l SET p3d=p.plateifu FROM p3d AS p WHERE q3c_join(l.ra, l.dec, p.objra, p.objdec, 6/3600.0);

CREATE INDEX lotss_p3d_idx ON lotss (p3d);

ANALYZE p3d;