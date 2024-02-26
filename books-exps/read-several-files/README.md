# Build
Ensure that you are under the directory 'read-several-files/', then run:
```bash
make
```
# Run
run  (read from file):
```bash
./build/target/read-file ./test-files/to-read-1.txt
```
or (read from command line):
```bash
./build/target/read-file
```
## Example
default statement:
```bash
bash ./run-target.sh
```
test the error code or error message:
```bash
bash ./run-target.sh --option test-error
```
The option 'test-error' will decide to use a file that does not exist.