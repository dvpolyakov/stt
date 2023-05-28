import json
import time
import whisper_timestamped as whisper


def run_transcription(path_to_videofile):
    audio = whisper.load_audio(path_to_videofile)
    transcription_result = whisper.transcribe(model, audio, language="ru")
    return transcription_result['text']


if __name__ == "__main__":
    model = whisper.load_model("small")
    transcription_text = run_transcription('dimas_zarabatyvat.mp4')
    print(transcription_text)
    time.sleep(30)
