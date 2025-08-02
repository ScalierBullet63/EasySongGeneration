# 🎵 EasySongGeneration (A portable version of SongGeneration for Windows)

This is a portable version of [Tencent's SongGeneration](https://huggingface.co/tencent/SongGeneration) for Windows. It allows you to generate high-quality music using a pre-trained model, without needing to install dependencies globally.

---

## 📥 Download

You can download the portable `.7z` archive from the official release page:

🔗 [EasySongGeneration_WinPortable_25072025.7z](https://github.com/ScalierBullet63/EasySongGeneration/releases/download/25072025/EasySongGeneration_WinPortable_25072025.7z)

---

## 📦 Setup Instructions

1. **Extract the Archive**

   - Unzip the `.7z` archive to a folder of your choice.

   > ⚠️ Important: To avoid extraction errors, make sure you’ve installed the latest version of [7-Zip](https://www.7-zip.org/download.html) before opening the archive.

2. **Clone the Model Repository**

   - Make sure you have [Git LFS](https://git-lfs.com/) installed.
   - Open a terminal and run:
     ```bash
     git clone https://huggingface.co/tencent/SongGeneration
     ```
   - Copy the following folders from the cloned repo into the **root** of the extracted folder:
     - `ckpt`
     - `third_party`

3. **Disable Flash Attention**

   - Open the file:
     ```
     ckpt\songgeneration_base\config.yaml
     ```
   - Go to **line 39** and change:
     ```yaml
     use_flash_attn_2: true
     ```
     to:
     ```yaml
     use_flash_attn_2: false
     ```
   - This disables Flash Attention, which may cause issues on some systems.

4. **Run the Application**
   - In the root folder, execute the following command:
     ```bash
     .\tools\gradio\run_embedded.bat .\ckpt\songgeneration_base\
     ```

---

## 🧠 About the Model

SongGeneration is a text-to-audio model developed by Tencent, capable of generating songs with vocal-instrument harmony or dual-track separation.

- Hugging Face: [SongGeneration](https://huggingface.co/tencent/SongGeneration)
- GitHub: [tencent-ailab/SongGeneration](https://github.com/tencent-ailab/SongGeneration)

For more details, check out the [official demo](https://huggingface.co/spaces/tencent/SongGeneration).

---

## 🙌 Special Thanks

Huge thanks to [**mingyi456**](https://github.com/mingyi456) for helping resolve dependency issues and making this setup smoother!

---

## ❓ Troubleshooting

- Make sure Git LFS is properly installed before cloning.
- If Flash Attention is enabled, the app may crash or behave unexpectedly.
- Run the `.bat` file from the root directory to avoid path issues.

---

## 📚 Citation

```bibtex
@article{lei2025levo,
  title={LeVo: High-Quality Song Generation with Multi-Preference Alignment},
  author={Lei, Shun and Xu, Yaoxun and Lin, Zhiwei and Zhang, Huaicheng and Tan, Wei and Chen, Hangting and Yu, Jianwei and Zhang, Yixuan and Yang, Chenyu and Zhu, Haina and Wang, Shuai and Wu, Zhiyong and Yu, Dong},
  journal={arXiv preprint arXiv:2506.07520},
  year={2025}
}
```
