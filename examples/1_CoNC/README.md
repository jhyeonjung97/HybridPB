# Example 1: CoNC Single Atom Catalyst (1_CoNC)

This example demonstrates the generation of Pourbaix diagrams for Cobalt-based nitrogen-doped carbon (CoNC) single atom catalysts. The system includes various surface adsorbates relevant to electrochemical reactions such as oxygen reduction reaction (ORR) and hydrogen evolution reaction (HER).

## 📁 Files Overview

### Structure Files (JSON)
- `clean.json` - Clean CoNC surface (reference state)
- `vac.json` - Vacancy site without Co atom
- `vac-h2.json` - Vacancy site with H₂ molecule
- `mh.json` - H atom adsorbed on Co metal center
- `nh.json` - H atom adsorbed on N site
- `oh.json` - OH group adsorbed on surface
- `o.json` - O atom adsorbed on surface
- `oh-oh-adj.json` - Two OH groups in adjacent configuration
- `oh-oh-anti.json` - Two OH groups in anti configuration
- `oh-o-adj.json` - OH and O in adjacent configuration
- `oh-o-anti.json` - OH and O in anti configuration
- `o-o-anti.json` - Two O atoms in anti configuration

### Configuration Files
- `label.csv` - Species labels and OH group counts for thermodynamic calculations
- `command.sh` - Example command sequences for different calculation modes

### Output Files
- `*.png` - Structure visualization images
- `pourbaix_*.png` - Generated Pourbaix diagram plots

## 🚀 Usage Examples

### 1. Surface-Only Pourbaix Diagram
Generate a Pourbaix diagram considering only surface species:
```bash
# Move vacancy files temporarily (surface mode excludes bulk phases)
mv vac*.json ../temp/

# Generate surface Pourbaix diagram
python ../../pourbaix.py --png \
  --figx 4 --figy 4 \
  --cmap-2d Purples --cmin-2d 0.0 --cmax-2d 0.5
```

### 2. Hybrid Surface-Bulk Pourbaix Diagram
Generate hybrid diagrams including both surface and bulk phases:
```bash
# Restore vacancy files for hybrid calculations
mv ../temp/vac*.json .

# Bulk phase analysis (different concentrations)
python ../../pourbaix.py --hybrid --concentration 1e-4 \
  --figx 4 --figy 4 \
  --cmax 0.1 --cmax 0.5 \
  --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 \
  --suffix conc4

python ../../pourbaix.py --hybrid --concentration 1e-6 \
  --figx 4 --figy 4 \
  --cmax 0.1 --cmax 0.5 \
  --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 \
  --suffix conc6

python ../../pourbaix.py --hybrid --concentration 1e-8 \
  --figx 4 --figy 4 \
  --cmax 0.1 --cmax 0.5 \
  --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 \
  --suffix conc8
```

### 3. Hybrid Surface-Only Analysis
Analyze surface stability without bulk phases:
```bash
# Surface stability at different concentrations
python ../../pourbaix.py --hybrid --no-bulk --concentration 1e-4 \
  --figx 4 --figy 4 \
  --cmin 0.2 --cmax 0.3 \
  --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 \
  --suffix conc4

# Generate 1D stability plots at specific pH values
python ../../pourbaix.py --hybrid --no-bulk --legend-in \
  --figx 4 --figy 4 \
  --cmin 0.2 --cmax 0.3 \
  --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 \
  --Gmin -8 --Gmax 8 --pH 0

python ../../pourbaix.py --hybrid --no-bulk --legend-in \
  --figx 4 --figy 4 \
  --cmin 0.2 --cmax 0.3 \
  --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 \
  --Gmin -8 --Gmax 8 --pH 7

python ../../pourbaix.py --hybrid --no-bulk --legend-in \
  --figx 4 --figy 4 \
  --cmin 0.2 --cmax 0.3 \
  --cmap-2d Purples --cmin-2d 0.1 --cmax-2d 0.5 \
  --Gmin -8 --Gmax 8 --pH 14
```

## 📊 Expected Outputs

### 2D Pourbaix Diagrams
- `pourbaix_surface.png` - Basic surface Pourbaix diagram
- `pourbaix_hybrid.png` - Hybrid surface-bulk diagram
- `pourbaix_hybrid_conc*.png` - Diagrams at different concentrations
- `pourbaix_bulk_Co_conc*.png` - Bulk phase stability regions

### 1D Stability Plots
- `pourbaix_hybrid_pH0.png` - Potential vs. energy at pH 0
- `pourbaix_hybrid_pH7.png` - Potential vs. energy at pH 7
- `pourbaix_hybrid_pH14.png` - Potential vs. energy at pH 14

### Structure Images
- Individual `*.png` files showing 3D structures of each adsorbate configuration

## 🔬 Scientific Context

This example is relevant for:
- **Oxygen Reduction Reaction (ORR)**: O, OH, and OOH intermediates
- **Hydrogen Evolution Reaction (HER)**: H adsorption on different sites
- **Single Atom Catalysts**: Co-N₄ active sites in carbon matrices
- **Electrocatalyst Design**: Understanding active site stability under operating conditions

## 📈 Key Features Demonstrated

1. **Surface Adsorbate Analysis**: Multiple adsorption configurations
2. **Hybrid Calculations**: Surface-bulk phase interactions
3. **Concentration Effects**: Ion concentration impact on stability
4. **pH-Dependent Stability**: Potential-pH phase diagrams
5. **Custom Visualization**: Purple color scheme for publication-ready plots

## 🔍 Analysis Tips

- Compare stability regions across different concentrations
- Identify active potential windows for specific reactions
- Analyze OH coverage effects on surface stability
- Use 1D plots to understand potential-dependent transitions
- Consider both metal and nitrogen site reactivity

For more detailed analysis and interpretation, refer to the main HybridPB documentation. 