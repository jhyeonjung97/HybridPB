# HybridPB: Hybrid Pourbaix Diagram Generation Tool

![Python Version](https://img.shields.io/badge/python-3.7+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

HybridPB is a comprehensive Python tool for generating Pourbaix diagrams (potential-pH diagrams) for electrochemical systems. It supports both surface and bulk phases with advanced features including Grand Canonical DFT corrections and hybrid surface-bulk calculations.

## 🌟 Key Features

- **Hybrid Calculations**: Combined surface and bulk phase analysis
- **Grand Canonical DFT**: Support for GC-DFT corrections with chemical potential dependencies
- **Thermodynamic Integration**: Seamless integration of experimental thermodynamic data
- **Flexible Visualization**: Customizable color schemes, legends, and plot layouts
- **Multiple Formats**: Support for various input formats and export options
- **Electrochemical References**: Built-in HER/OER reference lines
- **Debug Tools**: Comprehensive debugging and analysis options

## 📋 Requirements

### System Requirements
- Python 3.7 or higher
- Operating System: Linux, macOS, or Windows

### Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| `numpy` | >=1.19.0 | Numerical computing, array operations, and pH/potential grid calculations |
| `pandas` | >=1.2.0 | Data manipulation, CSV file processing, and DataFrame operations |
| `matplotlib` | >=3.3.0 | 2D plotting, Pourbaix diagram visualization, and color mapping |
| `ase` | >=3.21.0 | Atomic Simulation Environment for reading JSON structure files |
| `mendeleev` | >=0.9.0 | Periodic table data and element properties for atomic number sorting |
| `pymatgen` | >=2022.0.0 | Materials analysis and ion formula parsing for thermodynamic data |

### Installation
```bash
# Clone the repository
git clone https://github.com/your-username/HybridPB.git
cd HybridPB

# Install dependencies
pip install -r requirements.txt

# Or install dependencies manually
pip install numpy pandas matplotlib ase mendeleev pymatgen
```

### Verification
```bash
# Test the installation
python pourbaix.py --help
```

## 🚀 Quick Start

### Basic Usage
```bash
# Generate a basic Pourbaix diagram
python pourbaix.py --json-dir ./structures --show-fig

# Generate with custom pH and potential ranges
python pourbaix.py --json-dir ./structures --pHmin 0 --pHmax 14 --Umin -2 --Umax 2
```

### Advanced Usage
```bash
# Hybrid mode with Grand Canonical DFT corrections
python pourbaix.py --hybrid --gc --json-dir ./structures --csv-dir ./labels

# With Gibbs free energy corrections and custom thermodynamic data
python pourbaix.py --gibbs --thermo-data ./custom_thermo.json --ref-energies ./custom_ref.json
```

## 📁 Input Files

### 1. Structure Files (Required)
- **Format**: JSON files containing atomic structure data
- **Location**: Specified by `--json-dir` (default: current directory)
- **Content**: ASE-readable atomic structures with energies

**Example structure:**
```json
{
  "atoms": [...],  // Atomic positions and symbols
  "energy": -123.45  // DFT total energy in eV
}
```

### 2. Label File (Optional)
- **Filename**: `label.csv`
- **Location**: Specified by `--csv-dir` or `--label-csv`
- **Format**: CSV with columns: `json_name,label,#OH,G_corr,A,B,C`

**Example `label.csv`:**
```csv
structure1.json,Fe-OH,1.0,0.05,0.0,0.0,-123.45
structure2.json,Fe-O,0.0,0.03,0.1,-0.02,-124.67
structure3.json,Fe,0.0,0.0,0.0,0.0,-125.89
```

### 3. Thermodynamic Data (Optional)
- **Filename**: `thermodynamic_data.json` or `thermodynamic_data.jsonc`
- **Content**: Standard thermodynamic data for aqueous species and gases

**Example:**
```json
{
  "Fe2+": {
    "charge": 2,
    "dG_formation": -85.75,
    "elements": {"Fe": 1}
  },
  "H2O": {
    "charge": 0,
    "dG_formation": -237.18,
    "elements": {"H": 2, "O": 1}
  }
}
```

### 4. Reference Energies (Optional)
- **Filename**: `reference_energies.json`
- **Content**: Reference energies for elemental standards

## 🎯 Command Line Options

### File Input/Output
```bash
--json-dir PATH        # Directory containing JSON structure files
--csv-dir PATH         # Directory containing label.csv
--suffix STRING        # Suffix for output filename
--label-csv PATH       # Custom path to label.csv
--thermo-data PATH     # Custom path to thermodynamic data
--ref-energies PATH    # Custom path to reference energies
```

### Calculation Modes
```bash
--hybrid              # Enable hybrid surface-bulk calculations
--gc                  # Apply Grand Canonical DFT corrections
--gibbs               # Apply Gibbs free energy corrections
```

### Thermodynamic Conditions
```bash
--pH INT              # Target pH value (default: 0)
--concentration FLOAT # Ion concentration in M (default: 1e-6)
--pressure FLOAT      # Gas pressure in atm (default: 1e-6)
```

### Plot Range and Resolution
```bash
--pHmin FLOAT         # Minimum pH (default: 0)
--pHmax FLOAT         # Maximum pH (default: 14)
--Umin FLOAT          # Minimum potential V vs SHE (default: -1)
--Umax FLOAT          # Maximum potential V vs SHE (default: 3)
--tick FLOAT          # Grid resolution (default: 0.01)
```

### Visualization Options
```bash
--figx FLOAT          # Figure width in inches (default: 4)
--figy FLOAT          # Figure height in inches (default: 3)
--HER                 # Show HER reference line
--OER                 # Show OER reference line
--show-fig            # Display plot window
```

### Color Customization
```bash
--cmap STRING         # Colormap for bulk plots (default: Greys)
--cmap-2d STRING      # Colormap for 2D plots (default: RdBu)
--cmap-1d STRING      # Colormap for 1D plots (default: Spectral)
--cmin FLOAT          # Minimum color value
--cmax FLOAT          # Maximum color value
--cgap FLOAT          # Color gap fraction
```

### Debug and Information
```bash
--show-thermo         # Show thermodynamic data details
--show-ref            # Show reference surface information
--show-element        # Show element analysis
--show-count          # Show element count statistics
--show-label          # Show file labels
--png                 # Generate PNG images of structures
```

## 📊 Examples

We provide three comprehensive examples demonstrating different aspects of HybridPB functionality:

### [Example 1: CoNC Single Atom Catalyst](examples/1_CoNC/)
- **System**: Cobalt-based nitrogen-doped carbon catalyst
- **Focus**: Surface adsorbate analysis and hybrid calculations
- **Reactions**: Oxygen reduction reaction (ORR) and hydrogen evolution reaction (HER)
- **Features**: Multiple adsorption configurations, concentration effects, pH-dependent stability

```bash
cd examples/1_CoNC
python ../../pourbaix.py --hybrid --no-bulk --legend-in \
  --figx 4 --figy 4 --cmap-2d Purples --pH 7
```

### [Example 2: TiNC Nitrogen Reduction Catalyst](examples/2_TiNC/)
- **System**: Titanium-based nitrogen-doped carbon catalyst  
- **Focus**: Complex multi-step nitrogen reduction reactions
- **Reactions**: Nitrate reduction reaction (NO₃RR) pathways and competing HER
- **Features**: 43 surface species, monodentate vs. bidentate binding modes, reaction selectivity

```bash
cd examples/2_TiNC  
python ../../pourbaix.py --suffix NO3RR_mono \
  --figx 6 --figy 4 --cmap-2d Reds --concentration 1e-3
```

### [Example 3: FeNC with Grand Canonical DFT](examples/3_FeNC/)
- **System**: Iron-based nitrogen-doped carbon catalyst
- **Focus**: **Grand Canonical DFT integration** and spin state analysis
- **Reactions**: Oxygen reduction reaction with realistic electrochemical conditions
- **Features**: High/intermediate/low spin states, GC-DFT vs. standard DFT comparison

```bash
cd examples/3_FeNC
python ../../pourbaix.py --gc --legend-in \
  --figx 6 --figy 4 --cmap-2d RdBu --suffix gc_analysis
```

### Quick Start with Examples
```bash
# Basic iron system  
python pourbaix.py --json-dir ./examples/3_FeNC --suffix Fe --HER --OER --show-fig

# Advanced hybrid calculation with GC-DFT
python pourbaix.py --hybrid --gc --json-dir ./examples/3_FeNC \
                   --pHmin 0 --pHmax 14 --Umin -1.5 --Umax 1.5 \
                   --concentration 1e-3 --figx 6 --figy 4

# Custom thermodynamic analysis
python pourbaix.py --json-dir ./examples/2_TiNC \
                   --thermo-data ./examples/2_TiNC/thermodynamic_data.jsonc \
                   --gibbs --show-thermo
```

## 🔬 Methodology

### Surface Energy Calculations
The tool calculates surface formation energies relative to a reference surface containing only H and O atoms:

```
ΔG_formation = E_DFT - E_ref + Σ(n_i × μ_i) + corrections
```

Where:
- `E_DFT`: DFT total energy
- `E_ref`: Reference surface energy  
- `μ_i`: Chemical potentials of elements
- `corrections`: Thermodynamic corrections (ZPE, entropy, etc.)

### Grand Canonical DFT Integration
For GC-DFT calculations, the energy is modified as:

```
E_GC = A×U² + B×U + C
```

Where A, B, C are fitting parameters from the label.csv file.

### Pourbaix Diagram Construction
The diagram shows regions of thermodynamic stability as a function of pH and potential, calculated using the Nernst equation and mass balance constraints.

## 📈 Output Files

- `pourbaix_[mode]_[suffix].png`: Main Pourbaix diagram
- `pourbaix_[mode]_[suffix]_bulk.png`: Bulk phase diagram (if applicable)
- `[structure].png`: Individual structure images (if `--png` specified)

## 🤝 Contributing

We welcome contributions! Please follow these guidelines:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Create a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📚 Citation

If you use HybridPB in your research, please cite:

```bibtex
@software{hybridpb2024,
  title={HybridPB: Hybrid Pourbaix Diagram Generation Tool},
  author={[Your Name]},
  year={2024},
  url={https://github.com/your-username/HybridPB}
}
```

## 🆘 Support

- **Issues**: Report bugs and request features via [GitHub Issues](https://github.com/your-username/HybridPB/issues)
- **Discussions**: Join the conversation in [GitHub Discussions](https://github.com/your-username/HybridPB/discussions)
- **Documentation**: See the `docs/` directory for detailed documentation

## 🔄 Changelog

### Version 1.0.0 (2024)
- Initial release with hybrid Pourbaix diagram generation
- Support for Grand Canonical DFT corrections
- Comprehensive thermodynamic data integration
- Flexible visualization options

---

**Developed with ❤️ for the electrochemistry and computational materials science community**