if test -z "$ENV_MEM_JVM"; then
    ENV_MEM_JVM=1024m
fi
echo "[+] JVM Mem: ${ENV_MEM_JVM}"

java -jar -Xmx${ENV_MEM_JVM} /home/burp/burp.jar
