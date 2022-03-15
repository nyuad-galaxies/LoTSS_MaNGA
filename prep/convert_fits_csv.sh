echo "########################################################################"
echo "# Convert FITS to CSV"
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