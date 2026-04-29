# Running the Course on Google Colab

These notebooks (`.ipynb` files) were generated from the course materials and can be executed directly in Google Colab using an R kernel.

## Setup Instructions

1. **Open Google Colab:**
   Go to [https://colab.research.google.com/](https://colab.research.google.com/) and upload the notebook you want to run (e.g. `01-setup.ipynb`).

2. **Upload Required Folders:**
   Because the code in the notebooks references local files (like custom themes and datasets), you need to recreate the folder structure in your Colab environment.
   - On the left side of the Colab interface, click on the **Folder icon** to open the Files pane.
   - Right-click in the empty space and create two new folders: `R` and `datasets`.
   - Open the `R` folder in Colab and click the **Upload** icon (or drag and drop) to upload all `.R` files from your local `R/` directory (e.g., `theme_course.R`).
   - Open the `datasets` folder in Colab and upload the required `*.csv` files for your current lesson from your local `datasets/` directory.

3. **Install Missing Packages:**
   Google Colab's R kernel comes with many packages pre-installed, but you might need to install others. If a notebook fails because a library is missing, you can install it within the notebook by adding a new cell with:
   ```R
   install.packages(c("here", "ggplot2", "dplyr")) # Replace with missing packages
   ```
   *Note: For the paths to resolve correctly in Colab, the `here` package is required.*

4. **Run the Notebook:**
   Once the files are uploaded and dependencies are met, you can run all cells from top to bottom.
