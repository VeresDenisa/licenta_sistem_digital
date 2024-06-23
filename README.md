# SISTEM DIGITAL DE VIZUALIZARE PRIN INTERMEDIUL VGA FOLOSIND COMUNICAREA PRIN INTERFAȚĂ SERIALĂ

Codul sursă poate fi găsit la adresa: https://github.com/VeresDenisa/licenta_sistem_digital.

Structură README.md:
- Cerințe sistem
- Structură repository
- Simularea sistemului
    - Proiect de design din ModelSim
    - Proiect de verificare din Linux
    - Proiect de verificare din QuestaSim
    - Vizualizarea formelor de undă
- Proiect implementat FPGA
    - Proiect implementat pe MachXO3D
    - Folosirea aplicației PulseView
- Precizări suplimentare

### Cerințe sistem
* QuestaSim instalat - pentru compilarea și simularea designului și verificării (Linux)
* ModelSim instalat - alternativă pentru compilarea și simularea designului (Windows)
* Lattice Diamond instalat cu licență gratuită - pentru implementarea pe placă (Windows)
* Serial Bluetooth Terminal instalat pe telefon - pentru comunicarea UART prin Bluetooth (Android)

### Structură repository
Acest repository este format din:
- source - codul sursă pentru design, verificare și rapoartele de verificare
    - design - codul sursă pentru design
    - testbench - codul sursă pentru verificare
    - simulation - rapoartele de verificare și formele de undă
- modelsim - proiectul din modelsim

### Simularea sistemului
#### Proiect de design din ModelSim
- se deschide aplicația ModelSim și se deschide proiectul modelsim/CS_project.mpf sau se deschide locația /source/design
- se scrie în ordine în terminal (CS a fost luat ca exemplu):
    - vlog -f files.f
    - vsim -gui work.tb_CS
    - add wave sim:/tb_CS/cs/*
    - run -all
- se va deschide o fereastră - se alege varianta: No

#### Proiect de verificare din Linux
- se va deschide un terminal nou din ../source
- se execută scriptul script.tcl cu argumentele necesare conform explicației de mai jos

./script.tcl NivelDeVerbozitate NumeUnitate NumeTest1 NumeTest2 NumeTest3 ...

Denumiri:
- NivelDeVerbozitate = NONE, LOW, MEDIUM, HIGH, FULL, DEBUG
- NumeUnitate = CD, UART, VGA, DB, CM, LM
- NumeTest = CD_test, DB_test, etc.

Exemple:
- ./script.tcl LOW CD CD_test
- ./script.tcl DEBUG UART UART_test UART_test_error UART_test_no_config

În urma rulării scriptului se vor salva:
- raportul de coverage individual sub denumirea ../source/simulation/coverage/coverage_NumeTest.txt
- raportul de coverage comun, dacă au fost rulate mai multe teste, sub denumirea ../source/simulation/coverage/coverage_final_NumeUnitate.txt
- transcriptul individual sub denumirea ../source/simulation/transcript/transcript_NumeTest.log
- fișierul raw de coverage individual sub denumirea ../source/simulation/ucdb/ucdb_NumeTest.ucdb
- forma de undă individuală sub denumirea ../source/simulation/wave/wave_NumeTest.wlf

#### Proiect de verificare din QuestaSim
Pentru vizualizarea directă a rapoartelor de coverage și aserții în GUI trebuie rulate testele UVM din terminalul QuestaSim:
- se deschide aplicația QuestaSim din terminalul deschis din folderul ../source (vsim)
- se scrie în ordine în terminal:
    - vlog -f files.f
    - vsim -voptargs=+acc +UVM_TESTNAME=$test +UVM_VERBOSITY=$verbosity -wlf simulation/wave/wave_$test.wlf work.testbench_$unit -do \"log -r /*; coverage save -onexit simulation/ucdb/ucdb_$test.ucdb; run -all; quit -f; exit\"
    - vsim -viewcov simulation/ucdb/ucdb_$test.ucdb -do \"coverage report -file simulation/coverage/coverage_$test.txt -byfile -detail -noannotate -option -cvg; quit -f; exit\"

#### Vizualizarea formelor de undă
Pentru vizualizarea formelor de undă formatate după rularea testelor se va scrie următoarea comandă în terminalul din ModelSim/QuestaSim: vsim -view wave_NumeTest.wlf -do wave_format_NumeTest.do

### Proiect implementat FPGA
#### Proiect implementat pe MachXO3D
- conexiunile se realizează conform fișierului CS_project.lpf din proiect
- se deschide aplicația Diamond și proiectul ../diamond/CS_project.ldf
- se exportă fișierele
- se deschide programatorul
- se detectează cablul de conexiune
- se programează FPGA-ul

#### Folosirea aplicației PulseView
- se deschide aplicația open source PulseView
- se conectează dispozitivul (Raspberry Pi Pico) și se detectează cablul
- se selectează canalele active (2 în cazul actual)
- se modifică frecvența și timpul de rulare
- se conectează firele la semnalele care trebuie înregistrate

### Precizări suplimentare
- modificarea numărului de obiecte pentru fiecare test este direct corelată cu timpul de rulare a testului;
- ModelSim/QuestaSim se poate închide neașteptat, mai ales înainte de deschiderea formelor de undă;
- durata unui test este ~1-5 minute;
- atât în ModelSim, cât și în Diamond, fișierele de parametrii nu trebuie compilate / incluse în implementare;
- în Diamond trebuie trecută frecvența de clock de intrare în analiza termică;
- conexiunea firelor și a cablurilor trebuie verificate de mai multe ori.