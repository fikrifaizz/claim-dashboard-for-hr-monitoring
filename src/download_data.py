import os
import kaggle

kaggle.api.authenticate()
if not os.path.exists("../data/raw"):
    os.makedirs("../data/raw")
kaggle.api.dataset_download_files("mirichoi0218/insurance", path="../data/raw", unzip=True)