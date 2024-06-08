import ChatTTS
from IPython.display import Audio
import torch,torchaudio,os

mode=1
if mode==1:
    #模型下载
    from modelscope import snapshot_download
    model_dir = snapshot_download('mirror013/ChatTTS')
    # # 加载模型
    chat = ChatTTS.Chat()
    chat.load_models(
        source="local",
        local_path=model_dir,
    )

else:
    chat = ChatTTS.Chat()
    chat.load_models(compile=False) # Set to True for better performance

texts = ["如果说你是海上的烟火，我是浪花里的泡沫，你的光照亮了我，我可以等在这个路口，不管你会不会经过",]

wavs = chat.infer(texts, )

torchaudio.save("output1.wav", torch.from_numpy(wavs[0]), 24000)