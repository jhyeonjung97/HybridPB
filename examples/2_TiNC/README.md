# Example 2: TiNC Catalyst for Nitrogen Reduction Reactions (2_TiNC)

This example demonstrates Pourbaix diagram generation for Titanium-based nitrogen-doped carbon (TiNC) catalysts, specifically focusing on nitrate reduction reaction (NO₃RR) pathways and hydrogen evolution reaction (HER). The system includes comprehensive nitrogen-containing intermediates and various reaction pathways.

## 📁 Files Overview

### Structure Files (JSON)
#### Basic Species
- `clean.json` - Clean TiNC surface (reference state)
- `vac.json` - Vacancy site without Ti atom
- `vac-h2.json` - Vacancy site with H₂ molecule
- `h.json` - H atom adsorbed on surface
- `h-h-adj.json` - Two H atoms in adjacent configuration
- `h-h-anti.json` - Two H atoms in anti configuration
- `h2o.json` - Water molecule adsorbed on surface

#### Nitrogen Species
- `n.json` - N atom adsorbed on surface
- `nh.json` - NH intermediate
- `nh2.json` - NH₂ intermediate
- `nh3.json` - NH₃ (ammonia) intermediate

#### Nitric Oxide Species
- `no.json` - NO intermediate
- `no-h.json` - NO with co-adsorbed H
- `no-oh.json` - NO with co-adsorbed OH

#### Nitrogen Dioxide Species
- `no2-mono.json` - NO₂ in monodentate configuration
- `no2-bi.json` - NO₂ in bidentate configuration
- `no2h-mono.json` - NO₂H in monodentate configuration
- `no2h-bi.json` - NO₂H in bidentate configuration

#### Nitrate Species
- `no3-mono-a.json`, `no3-mono-b.json`, `no3-mono-c.json` - NO₃ monodentate configurations
- `no3-bi-a.json`, `no3-bi-b.json`, `no3-bi-c.json` - NO₃ bidentate configurations
- `no3h-mono.json` - NO₃H monodentate configuration
- `no3h-bi-a.json`, `no3h-bi-b.json` - NO₃H bidentate configurations

#### Mixed N-O-H Species
- `on.json` - ON intermediate
- `onh.json` - ONH intermediate  
- `onh2.json` - ONH₂ intermediate
- `noh.json` - NOH intermediate
- `nhoh.json` - NHOH intermediate
- `nho2.json` - NHO₂ intermediate
- `nho2h.json` - NHO₂H intermediate
- `nh2-oh-adj.json` - NH₂ with adjacent OH
- `nh3-o.json` - NH₃ with co-adsorbed O
- `nh3-oh.json` - NH₃ with co-adsorbed OH
- `no3-h-anti.json` - NO₃ with anti H configuration

### Configuration Files
- `label.csv` - Species labels and OH group counts (43 species total)
- `thermodynamic_data.jsonc` - Thermodynamic data for bulk Ti and N species

### Output Files
- `*.png` - Structure visualization images
- `pourbaix_*.png` - Generated Pourbaix diagram plots for different reaction conditions

## 🚀 Usage Examples

### 1. Hydrogen Evolution Reaction (HER) Analysis
```bash
# Generate HER-focused Pourbaix diagram
python ../../pourbaix.py --suffix HER \
  --figx 6 --figy 4 \
  --cmap-2d Blues --cmin-2d 0.2 --cmax-2d 0.8

# HER analysis with vacancy consideration
python ../../pourbaix.py --suffix HER_vac \
  --figx 6 --figy 4 \
  --cmap-2d Blues --cmin-2d 0.2 --cmax-2d 0.8 \
  --pH 0 --Gmin -3 --Gmax 3
```

### 2. Nitrate Reduction Reaction (NO₃RR) Analysis
```bash
# Monodentate pathway analysis
python ../../pourbaix.py --suffix NO3RR_mono \
  --figx 6 --figy 4 \
  --cmap-2d Reds --cmin-2d 0.1 --cmax-2d 0.9 \
  --concentration 1e-3

# Bidentate pathway analysis  
python ../../pourbaix.py --suffix NO3RR_bi \
  --figx 6 --figy 4 \
  --cmap-2d Reds --cmin-2d 0.1 --cmax-2d 0.9 \
  --concentration 1e-3

# Oxidative conditions analysis
python ../../pourbaix.py --suffix NO3RR_oxi \
  --figx 6 --figy 4 \
  --cmap-2d Oranges --cmin-2d 0.2 --cmax-2d 0.8 \
  --Umin 0 --Umax 2
```

### 3. Hybrid Surface-Bulk Analysis
```bash
# Include Ti bulk phases
python ../../pourbaix.py --hybrid \
  --suffix NO3RR \
  --figx 6 --figy 4 \
  --concentration 1e-6

# Include N bulk phases
python ../../pourbaix.py --hybrid \
  --suffix NO3RR_N \
  --figx 6 --figy 4 \
  --concentration 1e-6 \
  --pressure 1e-3
```

### 4. pH-Specific Analysis
```bash
# Acidic conditions (pH 0)
python ../../pourbaix.py --pH 0 \
  --suffix NO3RR_pH0 \
  --figx 6 --figy 4 \
  --Gmin -5 --Gmax 5 \
  --legend-in

# Neutral conditions (pH 7)  
python ../../pourbaix.py --pH 7 \
  --suffix NO3RR_pH7 \
  --figx 6 --figy 4 \
  --Gmin -5 --Gmax 5 \
  --legend-in
```

## 📊 Expected Outputs

### 2D Pourbaix Diagrams
- `pourbaix_surface_HER.png` - HER pathway stability regions
- `pourbaix_surface_NO3RR_mono.png` - Monodentate NO₃RR pathway
- `pourbaix_surface_NO3RR_bi.png` - Bidentate NO₃RR pathway  
- `pourbaix_surface_NO3RR_oxi.png` - Oxidative reaction conditions
- `pourbaix_hybrid_NO3RR.png` - Surface-bulk hybrid analysis

### 1D Stability Plots
- `pourbaix_surface_pH0_HER.png` - HER potential dependence at pH 0
- `pourbaix_surface_pH0_NO3RR_mono.png` - Monodentate pathway at pH 0
- `pourbaix_surface_pH0_NO3RR_bi.png` - Bidentate pathway at pH 0

### Bulk Phase Analysis
- `pourbaix_bulk_Ti_NO3RR.png` - Ti bulk phase stability
- `pourbaix_bulk_N_NO3RR.png` - N bulk phase stability

## 🔬 Scientific Context

This example is highly relevant for:

### Nitrate Reduction Reaction (NO₃RR)
- **Environmental Remediation**: Nitrate removal from contaminated water
- **Ammonia Synthesis**: Alternative to Haber-Bosch process
- **Reaction Pathways**: Monodentate vs. bidentate NO₃ adsorption mechanisms
- **Selectivity**: NH₃ vs. N₂ production selectivity

### Hydrogen Evolution Reaction (HER)  
- **Water Splitting**: H₂ production for energy storage
- **Competing Reaction**: HER vs. NO₃RR selectivity
- **pH Effects**: Acidic vs. alkaline HER mechanisms

### Single Atom Catalysts
- **Ti-N₄ Active Sites**: Electronic structure and reactivity
- **Vacancy Effects**: Ti atom coordination environment
- **Stability**: Active site stability under reaction conditions

## 📈 Key Features Demonstrated

1. **Multi-Step Reaction Analysis**: Complete NO₃ → NH₃ pathway
2. **Binding Mode Comparison**: Monodentate vs. bidentate configurations
3. **Competing Reactions**: NO₃RR vs. HER selectivity analysis
4. **pH-Dependent Mechanisms**: Proton-coupled electron transfer effects
5. **Bulk Phase Integration**: Ti and N phase diagram integration
6. **Advanced Thermodynamics**: 43 surface species comprehensive analysis

## 🔍 Analysis Guidelines

### NO₃RR Pathway Analysis
1. **Compare binding modes**: Monodentate vs. bidentate NO₃ adsorption
2. **Identify rate-limiting steps**: Highest energy intermediates
3. **Assess selectivity**: NH₃ vs. N₂ production regions
4. **Consider pH effects**: Proton availability impact

### HER Competition Analysis
1. **Overlap regions**: Where HER competes with NO₃RR
2. **Optimal operating conditions**: Maximum NO₃RR selectivity
3. **Vacancy role**: Ti vs. vacancy site reactivity

### Thermodynamic Considerations
- **Concentration effects**: NO₃⁻ and NH₄⁺ concentration impact
- **Pressure effects**: N₂ and NH₃ gas partial pressures
- **Temperature effects**: Reaction thermodynamics (298 K basis)

## 🎯 Optimization Strategies

1. **Potential Window Selection**: Avoid HER-active regions
2. **pH Optimization**: Balance NO₃RR kinetics and selectivity  
3. **Concentration Tuning**: Optimize reactant/product concentrations
4. **Surface Modification**: Ti coordination environment optimization

This comprehensive example showcases the power of HybridPB for complex multi-step electrochemical reaction analysis, particularly for nitrogen chemistry applications in environmental and energy systems. 