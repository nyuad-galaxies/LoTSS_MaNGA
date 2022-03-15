# Workflow


# Prepare data

## Download LoTSS DR2 tables

https://lofar-surveys.org/public/DR2/catalogues/LoTSS_DR2_v110_masked.srl.fits
https://lofar-surveys.org/public/DR2/catalogues/LoTSS_DR2_v110.gaus.fits


## MaNGA Pipe3D tables

https://www.sdss.org/dr17/data_access/value-added-catalogs/?vac_id=manga-pipe3d-value-added-catalog:-spatially-resolved-and-integrated-properties-of-galaxies-for-dr17

https://data.sdss.org/datamodel/files/MANGA_PIPE3D/MANGADRP_VER/PIPE3D_VER/SDSS17Pipe3D.html

https://data.sdss.org/sas/dr17/manga/spectro/pipe3d/v3_1_1/3.1.1/SDSS17Pipe3D_v3_1_1.fits


## Convert FITS to CSV

```
echo "========================================================================"
echo "# LoTSS DR2 LOFAR source catalog"
echo "------------------------------------------------------------------------"
stilts \
    tpipe \
    in=../data/LoTSS_DR2_v110_masked.srl.fits \
    cmd='addcol -before Source_Name id $0' \
    out=../data/LoTSS_DR2_v110_masked.srl.csv

echo "# Pipe3D MaNGA catalog"
echo "------------------------------------------------------------------------"
stilts \
    tpipe \
    in=../data/SDSS17Pipe3D_v3_1_1.fits \
    out=../data/SDSS17Pipe3D_v3_1_1.csv
```


## Load data in DB

See `load_lotss.sql`, `load_pipe3d.sql` scripts and `docker-compose.yml` config.


## Create django project

```
docker compose run lotss_api bash
```

```
django-admin startproject website .
```


