RESPONSE_TIME="$(curl -w '%{time_total}' -o /dev/null -s $TARGET_URL)"
if [ $? -eq 0 ]; then
  curl -X POST -k -d $RESPONSE_TIME $CALLBACK_URL
else
  curl -X POST -k -d "FAILED" $CALLBACK_URL
fi
