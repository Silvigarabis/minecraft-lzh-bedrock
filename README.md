# minecraft-lzh-bedrock
将在1.17pre2新增的文言文翻译搬运到基岩版

## 格式化含义
将翻译文本转为基岩版格式  
将翻译文本中的注释清除

---

注意，以下内容没有入库

1.你可以在`raw/`找到原始文件  
2.`scripts/`存放着一些自动处理脚本，但是不建议使用（没有任何注释）  
3.`lang/`存放着已经生成的lang文件  
4.`work/`用于工作  
5.`.git/`存放着git储存库信息，当然你可以不管它  
6.`format_java/`存放了一些经过处理的Java版翻译文本，已经改为基岩版格式  
6.`format_bedrock/`存放了一些清除了注释的基岩版版翻译文本  
7.`version/`下存放着Java版的assets index，主要是用来方便地下载某一些文件的

这里举个例子  
首先在里边找到你要下载的文件的hash  
比如: 104bfa1a1a66cd99e2f3de33d894f4c369918842  
这是中文翻译的hash值  
然后把它的前两位（这里是“10”）放到下边的链接的[obj1]位置，再把整个hash值放到[obj2]的位置  
> `http://resources.download.minecraft.net/[obj1]/[obj2]`

最后的链接是
> http://resources.download.minecraft.net/10/104bfa1a1a66cd99e2f3de33d894f4c369918842

这样你就可以把想要的文件下载过来了

8.`same/`下边是用脚本生成的一些文件
比如有一个got.txt  
文件每一行像是这样  
```
bedrock.text.a java.text.a java.text.b
```

这代表在某一种语言下，`bedrock.text.a`的翻译与`java.text.a`或者`java.text.b`的翻译是相同的

## 最后
嗯……反正，就这么多了
