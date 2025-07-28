# HybridPB Examples

This directory contains three comprehensive examples demonstrating the capabilities of HybridPB for different electrochemical systems and calculation methodologies. Each example represents a realistic research scenario with complete input files and detailed analysis workflows.

## 📂 Examples Overview

| Example | System | Key Features | Applications |
|---------|--------|--------------|--------------|
| **[1_CoNC](1_CoNC/)** | Co-N₄-C Single Atom | Surface adsorbates, Hybrid calculations | ORR, HER catalysis |
| **[2_TiNC](2_TiNC/)** | Ti-N₄-C Catalyst | Complex N-chemistry, 43 species | NO₃RR, Environmental remediation |
| **[3_FeNC](3_FeNC/)** | Fe-N₄-C with GC-DFT | Spin states, Grand Canonical DFT | Advanced ORR analysis |

## 🎯 Learning Path

### Beginner: Start with Example 1 (CoNC)
- **Goal**: Learn basic HybridPB usage and surface analysis
- **Concepts**: Surface adsorbates, hybrid calculations, concentration effects
- **Time**: 1-2 hours

```bash
cd 1_CoNC
python ../../pourbaix.py --png --figx 4 --figy 4
```

### Intermediate: Explore Example 2 (TiNC)
- **Goal**: Master complex multi-species systems and reaction pathways
- **Concepts**: Nitrogen chemistry, competing reactions, reaction selectivity
- **Time**: 2-3 hours

```bash
cd 2_TiNC
python ../../pourbaix.py --suffix NO3RR --concentration 1e-3
```

### Advanced: Master Example 3 (FeNC)
- **Goal**: Understand Grand Canonical DFT and spin state effects
- **Concepts**: GC-DFT, electronic structure, realistic electrochemical modeling
- **Time**: 3-4 hours

```bash
cd 3_FeNC
python ../../pourbaix.py --gc --legend-in --figx 6 --figy 4
```

## 🧪 Example Details

### [Example 1: CoNC Single Atom Catalyst](1_CoNC/)
#### System Overview
- **Metal Center**: Cobalt in N₄ coordination environment
- **Support**: Nitrogen-doped carbon matrix
- **Species**: 12 surface configurations including clean, vacancy, and adsorbates

#### Scientific Context
- **Primary Application**: Oxygen reduction reaction (ORR) in fuel cells
- **Secondary Application**: Hydrogen evolution reaction (HER) in water electrolysis
- **Research Focus**: Single atom catalyst stability and activity

#### Key Learning Outcomes
- Understanding surface adsorbate thermodynamics
- Hybrid surface-bulk phase analysis
- Concentration effects on stability regions
- pH-dependent electrochemical behavior

---

### [Example 2: TiNC Nitrogen Reduction Catalyst](2_TiNC/)
#### System Overview
- **Metal Center**: Titanium in N₄ coordination environment
- **Support**: Nitrogen-doped carbon matrix
- **Species**: 43 nitrogen-containing intermediates and reaction products

#### Scientific Context
- **Primary Application**: Nitrate reduction reaction (NO₃RR) for water remediation
- **Secondary Application**: Ammonia synthesis as Haber-Bosch alternative
- **Research Focus**: Reaction pathway optimization and selectivity control

#### Key Learning Outcomes
- Complex multi-step reaction pathway analysis
- Competing reaction mechanisms (NO₃RR vs. HER)
- Binding mode effects (monodentate vs. bidentate)
- Environmental electrochemistry applications

---

### [Example 3: FeNC with Grand Canonical DFT](3_FeNC/)
#### System Overview
- **Metal Center**: Iron in N₄ coordination with multiple spin states
- **Support**: Nitrogen-doped carbon matrix
- **Species**: 18 configurations covering all spin states (HS, IS, LS)

#### Scientific Context
- **Primary Application**: Oxygen reduction reaction with realistic electrochemical conditions
- **Research Focus**: Electronic structure effects and potential-dependent behavior
- **Methodology**: Grand Canonical DFT for accurate electrochemical modeling

#### Key Learning Outcomes
- Grand Canonical DFT integration and interpretation
- Spin state effects on electrochemical stability
- Standard DFT vs. GC-DFT comparative analysis
- Advanced electrochemical environment modeling

## 🔬 Comparative Analysis

### Complexity Progression
1. **CoNC**: Basic surface analysis (12 species)
2. **TiNC**: Complex reaction networks (43 species)  
3. **FeNC**: Advanced electronic structure (18 species + GC-DFT)

### Methodological Features
| Feature | CoNC | TiNC | FeNC |
|---------|------|------|------|
| Surface Analysis | ✅ | ✅ | ✅ |
| Hybrid Calculations | ✅ | ✅ | ✅ |
| Multi-step Reactions | ⚠️ | ✅ | ⚠️ |
| Grand Canonical DFT | ❌ | ❌ | ✅ |
| Spin State Analysis | ❌ | ❌ | ✅ |
| Competing Reactions | ⚠️ | ✅ | ⚠️ |

### Research Applications
- **Fuel Cells**: CoNC, FeNC (ORR catalysis)
- **Water Electrolysis**: CoNC, TiNC (HER)
- **Environmental Remediation**: TiNC (NO₃RR)
- **Fundamental Research**: FeNC (electronic structure)

## 🚀 Getting Started

### Prerequisites
```bash
# Ensure HybridPB is properly installed
cd HybridPB
python pourbaix.py --help
```

### Running Examples
```bash
# Quick test of all examples
for example in 1_CoNC 2_TiNC 3_FeNC; do
    cd examples/$example
    python ../../pourbaix.py --figx 4 --figy 3 --suffix test
    cd ../..
done
```

### File Structure
Each example contains:
- **JSON files**: Atomic structure data
- **label.csv**: Species information and parameters
- **README.md**: Detailed documentation
- **Output files**: Pre-generated results for reference

## 📊 Expected Outputs

### Visualization Files
- **2D Pourbaix diagrams**: Potential-pH stability maps
- **1D stability plots**: Potential-dependent energy profiles
- **Structure images**: 3D atomic configurations
- **Bulk phase diagrams**: When applicable

### Analysis Results
- **Stability regions**: Identification of thermodynamically stable phases
- **Active sites**: Optimal operating conditions
- **Reaction pathways**: Multi-step mechanism insights
- **Selectivity maps**: Product selectivity regions

## 🔧 Customization Tips

### Modifying Examples
1. **Change concentration**: Adjust `--concentration` for different electrolyte conditions
2. **Modify pH range**: Use `--pHmin` and `--pHmax` for specific pH windows
3. **Custom colors**: Experiment with `--cmap-2d` for different visual styles
4. **Figure size**: Adjust `--figx` and `--figy` for publication requirements

### Creating New Examples
1. **Prepare structures**: Generate JSON files with DFT energies
2. **Create label.csv**: Define species names and properties
3. **Test calculations**: Verify thermodynamic consistency
4. **Document thoroughly**: Follow existing README formats

## 🤝 Contributing Examples

We welcome new examples! Please follow these guidelines:

### Example Requirements
- **Scientific relevance**: Address real research problems
- **Complete data**: Include all necessary input files
- **Documentation**: Provide detailed README with context
- **Validation**: Ensure thermodynamic consistency

### Submission Process
1. Create example directory with descriptive name
2. Include all input files and test outputs
3. Write comprehensive README following our template
4. Submit pull request with detailed description

## 📚 Further Reading

- **Main Documentation**: [../README.md](../README.md)
- **Methodology Papers**: Check citations in individual examples
- **HybridPB Theory**: Refer to supporting publications
- **DFT Best Practices**: Consult computational chemistry resources

## 🆘 Troubleshooting

### Common Issues
1. **Missing files**: Ensure all JSON and CSV files are present
2. **Convergence problems**: Check thermodynamic data consistency
3. **Visualization errors**: Verify matplotlib installation and settings
4. **Performance issues**: Consider reducing grid resolution for large systems

### Getting Help
- **Issues**: Report bugs via GitHub Issues
- **Questions**: Use GitHub Discussions
- **Examples**: Study existing successful calculations
- **Community**: Connect with other HybridPB users

---

These examples represent years of research and development in computational electrochemistry. They serve as both learning tools and research templates for the scientific community. Each example has been carefully validated and documented to ensure reproducibility and educational value.

**Happy computing!** 🧪⚡ 