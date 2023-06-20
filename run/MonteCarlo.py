import time
import argparse
import random
import ray
import os

def writeToFile(filename, content, directory):
    os.makedirs(directory, exist_ok=True)
    full_path = f"{directory}/0_{filename}"
    with open(full_path, "a") as file:
        file.write(content + "\n")

@ray.remote
def estimatePi(numSamples):
    def sample():
        x, y = random.uniform(-1, 1), random.uniform(-1, 1)
        return 1 if x ** 2 + y ** 2 <= 1 else 0

    return 4.0 * sum(sample() for _ in range(numSamples)) / numSamples

def performTest(numSamples, numTasks, directory):
    samplesPerTask = numSamples // numTasks
    sendingTime = []

    tasks = []
    for _ in range(numTasks):
        startSendingTime = time.time()
        task = estimatePi.remote(samplesPerTask)
        tasks.append(task)
        sendingTime.append(time.time() - startSendingTime)
    
    
    startProcessTime = time.time()
    estimates = ray.get(tasks)
    endProcessTime = time.time()
    

    totalProcessingTime = endProcessTime - startProcessTime
    totalSendingTime = sum(sendingTime)
    endToEndTime = totalSendingTime + totalProcessingTime

    print(f"Monte Carlo Task")
    print(f"Sample: {numSamples} Tasks: {numTasks}")
    print(f"Total Sending Time: {totalSendingTime:.4f} seconds")
    print(f"Total Process Time: {totalProcessingTime:.4f} seconds")
    print(f"Total End-to-End Time: {endToEndTime:.4f} seconds")


    writeToFile("Sending.txt", f"{totalSendingTime:.4f}", directory)
    writeToFile("Processing.txt", f"{totalProcessingTime:.4f}", directory)
    writeToFile("endToEnd.txt", f"{endToEndTime:.4f}", directory)

parser = argparse.ArgumentParser()
parser.add_argument("--num-samples", type=int, default=100000000)
parser.add_argument("--num-tasks", type=int, default=10)
parser.add_argument("--directory", type=str)
args = parser.parse_args()

startTime = time.time()
ray.init("ray://<IP>", _redis_password="myNamespace")
endTime = time.time()

writeToFile("init_time.txt", f"{endTime - startTime:.4f}", args.directory)
print(f"Total initialization time: {endTime - startTime:.4f}")

connectionTime = time.time()
performTest(args.num_samples, args.num_tasks, args.directory)
connectionTime = time.time() - connectionTime


print(f"Total connection time: {connectionTime:.4f}")
ray.shutdown()
