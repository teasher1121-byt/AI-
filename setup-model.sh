mkdir -p model/resolve/main && cd model/resolve/main
B=https://huggingface.co/mlc-ai/Qwen2.5-0.5B-Instruct-q4f16_1-MLC/resolve/main
for f in mlc-chat-config.json ndarray-cache.json tokenizer.json tokenizer_config.json vocab.json merges.txt params_shard_0.bin params_shard_1.bin params_shard_2.bin params_shard_3.bin params_shard_4.bin params_shard_5.bin params_shard_6.bin params_shard_7.bin; do curl -L --fail -o "$f" "$B/$f" || echo "FAILED $f"; done
cd ../../..
ls -la model/resolve/main
git add model && git commit -m "add model files" && git push
