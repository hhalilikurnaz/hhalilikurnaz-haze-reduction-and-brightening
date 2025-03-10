# Haze Reduction & Brightening Techniques

## 🌟 Introduction
This repository contains MATLAB and Python implementations for various **image contrast enhancement** and **brightness adjustment** techniques. These methods are useful for applications such as **medical imaging, night vision enhancement, and foggy image correction**.

## 📌 Features
- **Histogram Stretching (`imadjust`)**: Enhances contrast by expanding pixel intensity values.
- **Adaptive Histogram Equalization (`adapthisteq`)**: Improves local contrast by normalizing brightness across small regions.
- **Gamma Correction (`gamma adjustment`)**: Adjusts image brightness non-linearly for better visibility.
- **Local Brightening (`imlocalbrighten`)**: Selectively enhances darker regions without affecting bright areas.
- **Haze Reduction (`imreducehaze`)**: Removes fog and atmospheric effects from images.



### **For Python Users:**
1. Install dependencies:
   ```bash
   pip install numpy opencv-python matplotlib
   ```
2. Run the Python script:
   ```bash
   python image_processing.py
   ```

## 🖼️ Sample Results
| Original Image | Haze Reduction | Brightness Adjustment |
|---------------|---------------|----------------------|
| ![Original](images/original.jpg) | ![Haze Reduced](images/haze_reduction.jpg) | ![Brightened](images/brightness.jpg) |

## 📂 File Structure
```
/haze-brightening
│── matlab/
│   ├── hazereductionandbrightening.mlx
│   ├── contrast_adjustments.m
│── python/
│   ├── image_processing.py
│   ├── contrast_enhancement.py
│── images/
│   ├── original.jpg
│   ├── haze_reduction.jpg
│   ├── brightness.jpg
│── README.md
```

## 🛠️ Usage
- **Run the scripts** in MATLAB or Python to test different contrast and brightness enhancement techniques.
- Modify parameters like **gamma, histogram equalization levels, or haze reduction intensity** to see different results.

## 📜 License
This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing
Pull requests and contributions are welcome! Feel free to fork and improve the project.

## 📩 Contact
If you have any questions, feel free to reach out via [GitHub Issues](https://github.com/yourusername/haze-brightening/issues).

