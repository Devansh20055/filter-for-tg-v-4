if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Devansh20055/filter-for-tg-v-4.git /filter-for-tg-v-4
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /filter-for-tg-v-4
fi
cd /filter-for-tg-v-4
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
