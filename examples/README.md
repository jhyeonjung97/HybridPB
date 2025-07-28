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
- **GitHub Repository**: [https://github.com/jhyeonjung97/HybridPB](https://github.com/jhyeonjung97/HybridPB)
- **Methodology Papers**: Check citations in individual examples
- **HybridPB Theory**: Refer to supporting publications

## 🆘 Troubleshooting

### Getting Help
- **Issues**: Report bugs via [GitHub Issues](https://github.com/jhyeonjung97/HybridPB/issues)
- **Questions**: Use [GitHub Discussions](https://github.com/jhyeonjung97/HybridPB/discussions)
- **Examples**: Study existing successful calculations
- **Community**: Connect with other HybridPB users

---

These examples represent years of research and development in computational electrochemistry. They serve as both learning tools and research templates for the scientific community.

**Happy computing!** 🧪⚡ 