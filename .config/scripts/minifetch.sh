
KERNEL=$(uname -s)
HOSTNAME=$(hostname)
TERMINAL=$TERMINAL
SHELL=$($SHELL --version)

PROCESSOR=$(lshw -class cpu -short 2> /dev/null | 
   grep -o -E "processor\s.*$" |
   sed -E "s/processor\s*//" 
)

GPU=$(lshw -class gpu -short 2> /dev/null | 
   grep -o -E "processor\s.*$" |
   sed -E "s/processor\s*//" 
)

echo "   | $KERNEL"
echo "   | $HOSTNAME"
echo "   | $TERMINAL"
echo "   | $SHELL"
echo "CPU| $PROCESSOR"
echo "GPU| $GPU"
