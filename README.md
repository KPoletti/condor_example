# Submiting a job with Condor
## 1. Required files
When submitting jobs that use python or julia, you need to create a bash script to initialize the environment and to run the code. 
This requires a bash script `main.sh`, a python script, `main.py`, and a condor submit file `condor.sub`.
```
Condor_example
│   main.sh
│   main.py
│   condor.sub
```
### main.sh
This shell script sets the working directory based on the input, loads the necessary modules, and runs the python script. If you are using some other language like julia, you can replace the python commands with the julia commands. Feel free to modify the script to suit your needs.
```
#!/bin/bash
cd $1
conda activate myenv
python main.py
```
**Before submitting the job, make sure to change the shell script to an executable by:**
``` chmod +x main.sh```

### main.py 
This is a simple python script that adds to random matrices together.

### condor.sub
This is the condor submit file that specifies the job requirements and the path to the bash script. Read the comments in the file to understand the different parameters.

## 2. Submitting the job
To submit the job, run the following command:
```condor_submit condor.sub```
### Checking the status of the job
To check the status of the job, run the following command:
```condor_q```
### Removing the job
To remove the job, run the following command:
```condor_rm <job_id>```

## Resources
- [Condor Manual](https://htcondor.readthedocs.io/en/latest/index.html)
- [Condor Quick Start](https://htcondor.readthedocs.io/en/latest/users-manual/quick-start-guide.html)