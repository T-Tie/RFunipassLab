# RFunipassLab Data

把 `RFunipassLab/boca.py` 默认需要的两个输入文件放在这里：

- `tuning_results.csv`
- `Step3_EnumeratedPairs.csv`

如果你的实验文件不想放在这个目录，也可以在运行前设置：

- `TUNING_CSV=/abs/path/to/tuning_results.csv`
- `SYNERGY_CSV=/abs/path/to/Step3_EnumeratedPairs.csv`

另外，指令计数依赖的 autophase 动态库路径也可以通过 `AUTOPHASE_LIB` 覆盖。
