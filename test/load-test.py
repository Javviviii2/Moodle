import requests

def load_test(url, num_requests):
    success_count = 0
    failure_count = 0

    for _ in range(num_requests):
        try:
            response = requests.get(url)
            if response.status_code == 200:
                success_count += 1
            else:
                failure_count += 1
        except requests.exceptions.RequestException:
            failure_count += 1

    print(f"Successful requests: {success_count}")
    print(f"Failed requests: {failure_count}")

if __name__ == "__main__":
    url = "http://35.233.81.243:8080/" # URL to test
    num_requests = 10 # Number of requests to make

    load_test(url, num_requests)
