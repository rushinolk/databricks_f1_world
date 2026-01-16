# %%
import os
import dotenv
import requests
import json

dotenv.load_dotenv()



# %% 
DATABRICKS_HOST = os.getenv("DATABRICKS_HOST")
DATABRICKS_TOKEN = os.getenv("DATABRICKS_TOKEN")


# %%
def list_job_name():
    return [i.replace(".json","") for i in os.listdir(".") if i.endswith(".json")]

def load_jobs(job_name):
    with open(f"{job_name}.json","r") as open_file:
        settings = json.load(open_file)
    return settings


def reset_jobs(settings):
    url = f"{DATABRICKS_HOST}/api/2.2/jobs/reset"
    header = {"Authorization": f"Bearer {DATABRICKS_TOKEN}"}
    resp = requests.post(url=url, headers=header,json=settings)
    return resp

def main():
    for i in list_job_name():
        settings = load_jobs(job_name=i)
        resp = reset_jobs(settings=settings)
        if resp.status_code == 200:
            print(f"Job {i} atualizado com sucesso ")
        else:
            print(f"Não foi possivel atualizar o job {i}.")


# %%
if __name__ == "__main__":
    main()
# %%
