# Assessing a Novel Approach to Cut-off Estimation Using Bootstrapping: A Simulation-based Study
## Final Master's Thesis - Data Science UOC
### Lucia Blanc Velázquez

The final master's thesis is title *Assessing a Novel Approach to Cut-off Estimation Using Bootstrapping: A Simulation-Based Study*, where a new method of estimating cut-offs in continuous biomarkers is proposed, combining statistical models with bootstrap resampling techniques and based on a real clinical need, aiming to provide a more robust and flexible statistical solution.

## Repository contents:
- **Readme.md:** Description of the project content.
  
- **TFM_LuciaBlanc_2025.pdf**: Final written report of the Master's thesis. It includes:
  - Introduction and background on cut-off estimation in continuous biomarkers.
  - A detailed explanation of the proposed method using bootstrapping and log-binomial models.
  - Methodology of the simulation study, including scenarios with different effect sizes (null, small, moderate).
  - Comparative results of the proposed method versus classical approaches (Youden’s J, Euclidean distance, etc.).
  - Discussion of findings, limitations, and future directions.

- **R/.:** Main folder containing all the code developed for the project. It includes:
  - **null_scenario/.:** Contains the code used to simulate and analyze the null scenario, where there is no separation between the diseased and non-diseased groups.
      - bucle_null.R: Loop script used to run the simulations across different seeds.
      - null_loop.qmd: Script that runs the simulation and applies both the proposed and existing methods.
      - null_results.qmd: Presents the results of each method, including the optimal cut-off points obtained in the null scenario.
        
  - **small_scenario/.:** Contains the code for the small effect scenario, where a slight separation between groups is simulated.
     - bucle_small.R: Loop script used to run the simulations across different seeds.
     - small_loop.qmd: Script that runs the simulation and applies both the proposed and existing methods.
     - small_results.qmd: Presents the results of each method, including the optimal cut-off points obtained in the small scenario.
       
  - **moderate_scenario/.:** Contains the code for the moderate effect scenario, where a more distinct separation between the groups is simulated.
    - bucle_small.R: Loop script used to run the simulations across different seeds.
    - moderate_small.qmd: Script that runs the simulation and applies both the proposed and existing methods.
    - moderate_results.qmd: Presents the results of each method, including the optimal cut-off points obtained in the moderate scenario.

