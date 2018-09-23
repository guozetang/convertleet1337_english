#/bin/bash
CURRENT_DIR=$(pwd)
ETOL_DIR=$CURRENT_DIR/etol/
LTOE_DIR=$CURRENT_DIR/ltoe/
echo "=======Test Begin======="
cd $ETOL_DIR
make clean
make
./run < ../README > ../README_leet
echo "[INFO] Convert README file(English) to README_leet(Leet1337). "
make clean
cd $LTOE_DIR
make clean
make
./run < ../README_leet > ../README_restore
make clean
echo "[INFO] Convert README_leet(Leet1337) to README_restore(English). "
echo "=======Test End======="
echo "There are three files about this project."
echo "- README: The original file written by English."
echo "- README_leet: Convert from the README file."
echo "- README_restore: Restore by README_leet."
echo "- Please compare the README and README_restore file."