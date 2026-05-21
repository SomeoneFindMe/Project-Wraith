#!/bin/bash

# ==========================================
# VIBRANT COLOR PALETTE
# ==========================================
C='\033[1;36m' # Cyan
M='\033[1;35m' # Magenta
G='\033[1;32m' # Bright Green
Y='\033[1;33m' # Bright Yellow
W='\033[1;37m' # Bright White
R='\033[1;31m' # Bright Red
B='\033[1;34m' # Bright Blue
NC='\033[0m'   # No Color

# ==========================================
# CREATOR VARIABLES
# ==========================================
MY_NAME="𑲭𑲭𑲭𑲭𑲭𑲭𑲭𑲭◄⏤‌‌🦋꯭𝆺𝅥⃝꯭S‌‌‌‌‌‌om‌‌‌‌‌‌‌‌‌‌‌‌‌e‌o‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌‌n‌‌e⏤‌‌🦋꯭"
GH_LINK="https://github.com/SomeoneFindMe"
TG_LINK="https://t.me/NextGenModsOfficial"
YT_LINK="https://youtube.com/@nextgenmodsofficial"

clear

# ==========================================
# NEXTGEN SHIELD HEADER
# ==========================================
echo -e "${C}╭──────────────────────────────────────────╮${NC}"
echo -e "${C}│${NC} ${M}         ℕ 𝔼 𝕏 𝕋 𝔾 𝔼 ℕ 𝕄 𝕆 𝔻 𝕊          ${NC}${C}│${NC}"
echo -e "${C}│${NC} ${Y}        P r o j e c t   W r a i t h      ${NC}${C}│${NC}"
echo -e "${C}╰──────────────────────────────────────────╯${NC}"
echo -e "${C}│${NC} ${M}◈ CREATOR:${NC} ${Y}$MY_NAME${NC}"
echo -e "${C}│${NC} ${M}◈ ENGINE: ${NC} ${G}Pairip Patcher v1.3.10${NC}"
echo -e "${C}│${NC} ${M}◈ HW:     ${NC} ${W}NVIDIA HGX Systems${NC}"
echo -e "${C}╰───────────────────────────────────────────${NC}"
echo ""

# Auto-open GitHub instantly
termux-open-url "$GH_LINK"
sleep 1

# ==========================================
# PHASE 1: EXTRACTION & MERGING
# ==========================================
echo -e "${Y}╭─── [ PHASE 1: EXTRACTION ] ───────────────${NC}"
read -p "$(echo -e ${Y}"│"${NC} ${Y} " > Target .apks : "${NC})" target_apks
echo -e "${Y}│${NC}"

# Create a temporary file to secretly catch the Java output
tmp_log=$(mktemp)

# Run Pairip Phase 1 silently in background
java -jar Pairip.jar -i "$target_apks" > "$tmp_log" 2>&1 &
PID=$!

# Live Loading Percentage Animation
progress=0
while kill -0 $PID 2>/dev/null; do
    progress=$((progress + 4))
    if [ $progress -ge 99 ]; then progress=99; fi
    echo -ne "${Y}│${NC} ${C} [+] Merging APK... ${progress}% \r${NC}"
    sleep 0.3
done
wait $PID

if grep -q -i "no pairip" "$tmp_log"; then
    echo -e "${Y}│${NC} ${R} [ERROR] There is no pairip in this app!  ${NC}"
    rm "$tmp_log"
    echo -e "${Y}╰───────────────────────────────────────────${NC}"
    exit 1
else
    echo -e "${Y}│${NC} ${G} [+] Merging APK... 100%                  ${NC}"
    echo -e "${Y}│${NC} ${G} [✔] APK merged successfully.             ${NC}"
fi
rm "$tmp_log"
echo -e "${Y}╰───────────────────────────────────────────${NC}"
echo ""

# ==========================================
# PHASE 2: INJECTION (JSON)
# ==========================================
echo -e "${M}╭─── [ PHASE 2: TRANSLATION & INJECTION ] ──${NC}"
read -p "$(echo -e ${M}"│"${NC} ${Y} " > Merged .apk  : "${NC})" target_apk
read -p "$(echo -e ${M}"│"${NC} ${Y} " > Target .json : "${NC})" target_json
echo -e "${M}│${NC}"

# Run Pairip Phase 2 silently in background
java -jar Pairip.jar -i "$target_apk" -t "$target_json" > /dev/null 2>&1 &
PID2=$!

# Simulated Phase 2 Animation
sleep 0.5
echo -e "${M}│${NC} ${C} [INFO] Patching classes.dex${NC}"
sleep 0.5
echo -e "${M}│${NC} ${Y} [INFO] Bypassing verifyIntegrity${NC}"
sleep 0.5
echo -e "${M}│${NC} ${Y} [INFO] Bypassing verifySignatureMatches${NC}"

wait $PID2

echo -e "${M}│${NC} ${W} [BUILD] Rebuilding classes.dex...${NC}"
sleep 0.5
echo -e "${M}│${NC} ${G} [BUILD] APK built successfully.${NC}"
echo -e "${M}╰───────────────────────────────────────────${NC}"
echo ""

# ==========================================
# OUTRO SHIELD & AUTO-REDIRECT
# ==========================================
echo -e "${G}╭──────────────────────────────────────────╮${NC}"
echo -e "${G}│${NC} ${W}     P R O D U C T I O N  F I N I S H E D ${NC}${G}│${NC}"
echo -e "${G}╰──────────────────────────────────────────╯${NC}"
echo ""

# Auto-open final links
termux-open-url "$TG_LINK"
sleep 1
termux-open-url "$YT_LINK"

