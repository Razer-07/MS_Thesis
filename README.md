* All steps and process for the whole thesis is below
* Based on your need edit the input file and use it accordingly. 
* All the data is an overall existing analyzable data from  He,H2,H2O   


1. Calculated state energies with different B for He,H2,H2O &rightarrow; Energy folder


	energy_code.py &rightarrow; To run the london input file either in PC or cluster based on your preference.

	Bx_Excited_Energy_extraction.py &rightarrow; To extract the excited energy from all the output files. [!!! Read the code before use to understood the output data order]

	hfenergyextract.py &rightarrow; HF energy extraction from all the output files generated.



2. To extract the oscillator strength from both gauges from all the output files &rightarrow; oscillator_Strength folder

	gauge_new.py &rightarrow; To extract the oscillator strength in both length and velocity gauge.
	
3. extract the orbital data and plot all using matlab script  &rightarrow; orbital_analysis folder
In matlab script the names of orbitals are arbitrary. The output will be in the energy order. You can figure out which orbitals are which based on the atom/molecule you are using.


	
	


