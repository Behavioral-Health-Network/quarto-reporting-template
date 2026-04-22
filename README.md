# Quarto Reporting Template

This repository provides a starter Quarto project for building program reports. It includes recommended structure, layout patterns, styling conventions, and reusable components that support both narrative reports and data‑driven briefs.

The template is designed to be program‑agnostic. Users can adapt it to any reporting workflow, including those that load cleaned data from program ETL pipelines.

---

## What This Template Includes

- **Recommended project structure** for parent reporting repos  
- **Project‑level SCSS** for consistent typography, spacing, and layout  
- **Unified icon system** (Font Awesome + Bootstrap Icons)  
- **Reusable layout components**, including a dashboard‑style panel header  
- **Example narrative and visual sections**  
- **Placeholders for ETL integration**, including:
  - a `params:` block in `_quarto.yml`
  - a placeholder `R/load_data.R` script
  - a `data/` folder for ETL outputs

The template renders successfully without any external data. Analysts can plug in their program’s ETL outputs when available.

---

## Folder Structure

```
reporting-template/
  _quarto.yml
  index.qmd
  README.md
  styles/
    report-html.scss
    fontawesome/
      css/
      webfonts/
  R/
    load_data.R        # placeholder for program-specific data loading
  data/
    .gitkeep           # ETL outputs go here
  images/
    .gitkeep
```

---

## How to Use This Template

1. Click **Use this template** to create a new repository.  
2. Update `_quarto.yml` with your program name and parameters.  
3. Replace the placeholder content in `index.qmd` with your report’s narrative and visuals.
4. Replace the content of this `README.md` to explain your report project. 
5. When your program has an ETL pipeline:
   - place cleaned data files in `data/`
   - update `R/load_data.R` to read them
   - reference the loaded data in your `.qmd` files  
6. Add additional `.qmd` files, images, or R scripts as needed.

---

## ETL Integration

This template includes placeholders for connecting to program ETL pipelines.  
A typical pattern might look like:

```{r}
#| label: load-<program>-data

# Set default fallback parameters for running code interactively during
# development since Quarto params are only passed when rendering the document
# if (
#   !exists(
#     "params"
#   )
# ) {
#   params <- list(
#     report_date = "2026-01-01",
#     fiscal_system = "state",
#     period = "quarter"
#   )
# }

# Load ETL output
# source(
#   "R/load_data.R"
# )

# Run the function to load <program> data
# <program>_data <- load_epicc_data()
```

```{r}
#| label: filter-<program>-data

# period <- reporting_period(
#   date = params$report_date,
#   system = params$fiscal_system,
#   period = "quarter"
# )

# start_date <- period$start
# end_date <- period$end

# <program>c_full_data <- epicc_data$<program>_full_data |>
#  dplyr::filter(
#    enrollment_starting_date >= start_date,
#    enrollment_starting_date <= end_date
#  )
```

These examples are commented out so the template renders without dependencies.

---

## Notes

- The template is intentionally minimal.  
- You can safely delete any sections you don’t need.  
- The SCSS file (`styles/report.scss`) is where you customize colors, spacing, and layout.  
- The icon system works offline because the icon files are included directly in the project.

---

## Contributing

If you discover a pattern that would help others, feel free to propose an update. This template is meant to evolve as our reporting workflows evolve.
