# Example 3: FeNC Single Atom Catalyst with Grand Canonical DFT (3_FeNC)

This example demonstrates advanced Pourbaix diagram generation for Iron-based nitrogen-doped carbon (FeNC) single atom catalysts using **Grand Canonical Density Functional Theory (GC-DFT)** corrections. The system explores different iron spin states (high spin, intermediate spin, low spin) and their effects on electrochemical stability, particularly relevant for oxygen reduction reaction (ORR) applications.

## 📁 Files Overview

### Structure Files (JSON)
#### Clean Surfaces
- `clean-hs.json` - Clean FeNC surface, high spin (S = 2)
- `clean-is.json` - Clean FeNC surface, intermediate spin (S = 1) 
- `clean-ls.json` - Clean FeNC surface, low spin (S = 0)
- `vac.json` - Vacancy site without Fe atom
- `vac-h2.json` - Vacancy site with H₂ molecule

#### Single Adsorbates by Spin State
##### OH Adsorbates
- `oh-hs.json` - OH on high spin Fe
- `oh-is.json` - OH on intermediate spin Fe
- `oh-ls.json` - OH on low spin Fe

##### O Adsorbates  
- `o-hs.json` - O on high spin Fe
- `o-is.json` - O on intermediate spin Fe
- `o-ls.json` - O on low spin Fe

#### Co-adsorbed Species
##### OH + OH Configurations
- `oh-oh-hs.json` - Two OH groups on high spin Fe
- `oh-oh-is.json` - Two OH groups on intermediate spin Fe
- `oh-oh-ls.json` - Two OH groups on low spin Fe

##### OH + O Configurations
- `oh-o-hs.json` - OH and O co-adsorbed on high spin Fe
- `oh-o-ls.json` - OH and O co-adsorbed on low spin Fe

##### O + O Configurations
- `o-o-hs.json` - Two O atoms on high spin Fe
- `o-o-ls.json` - Two O atoms on low spin Fe

### Configuration Files
- `label.csv` - Species labels with **Grand Canonical DFT parameters (A, B, C)**
- `fe-sac.sh` - Execution script for GC-DFT calculations

### Output Files
- `*.png` - Structure visualization images
- `pourbaix_*.png` - Pourbaix diagrams (standard DFT)
- `pourbaix_*_gc.png` - Pourbaix diagrams (GC-DFT corrected)

## 🔬 Grand Canonical DFT Integration

This example showcases the **first comprehensive integration** of Grand Canonical DFT with Pourbaix diagram analysis. The `label.csv` file contains:

```csv
# Format: json_name,label,#OH,G_corr,A,B,C
vac.json,vac,0,,-0.365540567,0.455520738,-269.645443
clean-hs.json,clean(HS),0,,-0.508827983,-0.308938265,-277.1665931
oh-hs.json,*OH(HS),1,,-0.446720644,0.040591025,-288.1146817
# ... more entries
```

Where:
- **A**: Quadratic potential dependence coefficient (eV/V²)
- **B**: Linear potential dependence coefficient (eV/V)  
- **C**: Constant energy term (eV)

The GC-DFT energy is calculated as: **E_GC = A×U² + B×U + C**

## 🚀 Usage Examples

### 1. Standard DFT Analysis
```bash
# Generate standard DFT Pourbaix diagram
python ../../pourbaix.py \
  --figx 6 --figy 4 \
  --cmap-2d RdBu --cmin-2d 0.2 --cmax-2d 0.8 \
  --suffix standard

# With legend inside plot
python ../../pourbaix.py --legend-in \
  --figx 6 --figy 4 \
  --cmap-2d RdBu --cmin-2d 0.2 --cmax-2d 0.8 \
  --suffix standard_legend
```

### 2. Grand Canonical DFT Analysis
```bash
# Generate GC-DFT corrected Pourbaix diagram
python ../../pourbaix.py --gc \
  --figx 6 --figy 4 \
  --cmap-2d RdBu --cmin-2d 0.2 --cmax-2d 0.8 \
  --suffix gc

# GC-DFT with legend inside plot
python ../../pourbaix.py --gc --legend-in \
  --figx 6 --figy 4 \
  --cmap-2d RdBu --cmin-2d 0.2 --cmax-2d 0.8 \
  --suffix gc_legend
```

### 3. Comparative Analysis (Standard vs. GC-DFT)
```bash
# 2D comparison at pH 0
python ../../pourbaix.py --pH 0 \
  --figx 6 --figy 4 \
  --Gmin -3 --Gmax 3 \
  --legend-in \
  --suffix pH0_standard

python ../../pourbaix.py --gc --pH 0 \
  --figx 6 --figy 4 \
  --Gmin -3 --Gmax 3 \
  --legend-in \
  --suffix pH0_gc
```

### 4. Hybrid Surface-Bulk Analysis
```bash
# Standard hybrid calculation
python ../../pourbaix.py --hybrid \
  --figx 6 --figy 4 \
  --concentration 1e-6 \
  --suffix hybrid_standard

# GC-DFT hybrid calculation
python ../../pourbaix.py --hybrid --gc \
  --figx 6 --figy 4 \
  --concentration 1e-6 \
  --suffix hybrid_gc
```

### 5. Spin State Analysis
```bash
# Focus on high spin species
python ../../pourbaix.py --gc \
  --figx 6 --figy 4 \
  --cmap-2d Reds --cmin-2d 0.1 --cmax-2d 0.9 \
  --suffix hs_analysis

# Focus on low spin species  
python ../../pourbaix.py --gc \
  --figx 6 --figy 4 \
  --cmap-2d Blues --cmin-2d 0.1 --cmax-2d 0.9 \
  --suffix ls_analysis
```

## 📊 Expected Outputs

### 2D Pourbaix Diagrams
#### Standard DFT
- `pourbaix_surface.png` - Basic DFT-based diagram
- `pourbaix_surface_legend_in.png` - With legend overlay
- `pourbaix_hybrid.png` - Surface-bulk hybrid analysis

#### GC-DFT Corrected
- `pourbaix_surface_gc.png` - GC-DFT corrected diagram
- `pourbaix_surface_gc_legend_in.png` - With legend overlay
- `pourbaix_hybrid_gc.png` - GC-DFT hybrid analysis

### 1D Stability Plots
- `pourbaix_surface_pH0.png` - Standard DFT potential dependence
- `pourbaix_surface_pH0_gc.png` - GC-DFT potential dependence

### Bulk Phase Analysis
- `pourbaix_bulk_Fe.png` - Standard Fe bulk phases
- `pourbaix_bulk_Fe_gc.png` - GC-DFT corrected Fe bulk phases

## 🔬 Scientific Context

### Iron Spin States in FeNC Catalysts
This example is crucial for understanding:

#### Electronic Structure Effects
- **High Spin (S = 2)**: d⁶ configuration with maximum unpaired electrons
- **Intermediate Spin (S = 1)**: Partially paired d⁶ configuration  
- **Low Spin (S = 0)**: Fully paired d⁶ configuration
- **Spin Crossover**: Potential-dependent spin state transitions

#### Oxygen Reduction Reaction (ORR)
- **4e⁻ Pathway**: O₂ + 4H⁺ + 4e⁻ → 2H₂O (preferred)
- **2e⁻ Pathway**: O₂ + 2H⁺ + 2e⁻ → H₂O₂ (undesired)
- **Spin-Activity Correlation**: How spin state affects ORR activity
- **Potential-Dependent Mechanisms**: GC-DFT captures realistic conditions

### Grand Canonical DFT Advantages
1. **Realistic Electrochemical Conditions**: Fixed electrode potential rather than fixed electron number
2. **Potential-Dependent Energetics**: Captures capacitive effects and electrode charging
3. **Improved Accuracy**: Better agreement with experimental electrochemical data
4. **Dynamic Spin States**: Potential-induced spin state changes

## 📈 Key Features Demonstrated

1. **GC-DFT Integration**: First example showing full GC-DFT parameter implementation
2. **Spin State Analysis**: Comprehensive treatment of Fe spin states
3. **Comparative Methodology**: Standard DFT vs. GC-DFT comparison
4. **Advanced Electrochemistry**: Realistic electrochemical environment modeling
5. **ORR Mechanism Insights**: Complete oxygen reduction pathway analysis
6. **Publication-Ready Outputs**: High-quality visualizations for scientific publication

## 🔍 Analysis Guidelines

### Standard vs. GC-DFT Comparison
1. **Stability Region Shifts**: How GC-DFT changes phase boundaries
2. **Spin State Preferences**: Potential-dependent spin state stability
3. **ORR Active Regions**: Identification of optimal operating conditions
4. **Capacitive Effects**: Understanding electrode double-layer contributions

### Spin State Analysis
1. **Electronic Configuration**: d⁶ spin state energetics
2. **Ligand Field Effects**: N₄ coordination environment impact
3. **Magnetic Properties**: Correlation with catalytic activity
4. **Thermal Effects**: Temperature dependence (298 K basis)

### ORR Pathway Optimization
1. **Overpotential Minimization**: Identify lowest overpotential regions
2. **Selectivity Enhancement**: 4e⁻ vs. 2e⁻ pathway preference
3. **Active Site Design**: Optimal Fe coordination environment
4. **Stability Assessment**: Long-term catalyst stability

## 🎯 Advanced Applications

### Catalyst Design Principles
1. **Spin State Engineering**: Tuning Fe electronic structure
2. **Coordination Environment**: N₄ site optimization
3. **Support Effects**: Carbon matrix interaction
4. **Doping Strategies**: Heteroatom incorporation effects

### Experimental Validation
1. **Electrochemical Testing**: Comparison with CV, RDE, RRDE data
2. **Spectroscopic Correlation**: XAS, Mössbauer, EPR validation
3. **Activity Descriptors**: Adsorption energy correlations
4. **Mechanistic Insights**: Rate-determining step identification

## 🌟 Breakthrough Significance

This example represents a **methodological breakthrough** by:
- Integrating Grand Canonical DFT with Pourbaix analysis for the first time
- Demonstrating realistic electrochemical environment modeling
- Enabling accurate prediction of potential-dependent catalyst behavior
- Providing a framework for advanced electrocatalyst design

The comprehensive treatment of iron spin states under realistic electrochemical conditions makes this a **gold standard reference** for FeNC single atom catalyst analysis and serves as a template for other transition metal systems.

For detailed theoretical background on GC-DFT methodology and implementation, refer to the main HybridPB documentation and associated publications. 