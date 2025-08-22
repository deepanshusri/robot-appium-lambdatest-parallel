import subprocess
import sys

def run_robot_test(test_file):
    result = subprocess.run([
        sys.executable, "-m", "robot", test_file
    ], capture_output=True, text=True)
    print(result.stdout)
    print(result.stderr)

if __name__ == "__main__":
    from multiprocessing import Pool

    test_files = [
        "tests/test_android.robot",
        "tests/test_ios.robot"
    ]

    with Pool(len(test_files)) as p:
        p.map(run_robot_test, test_files)