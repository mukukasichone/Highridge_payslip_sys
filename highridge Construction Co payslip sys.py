import random

try:

    workers = []

    for i in range(1, 401):
        worker = {
            "id": i,
            "name": f"Worker_{i}",
            "gender": random.choice(["Male", "Female"]),
            "salary": random.randint(5000, 30000)
        }
        workers.append(worker)

    for worker in workers:
        level = "normal"
        if worker["salary"] > 10000 and worker["salary"] < 20000: level = "A1"
        elif worker["salary"] > 7500 and worker["salary"] < 30000 and worker["gender"] == "Female": level = "A5-F"

        print("------------------------------")
        print("PaySlip")
        print("Worker ID:", worker["id"])
        print("Name:", worker["name"])
        print("Gender:", worker["gender"])
        print("Salary:", worker["salary"])
        print("Employee Level:", level)
        
except Exception as e:
    print("An error occurred processing:", e)