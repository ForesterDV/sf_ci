#/bin/bash
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:9889)
echo "HTTP Code: $response"
if [ "$response" == "200" ]; then
echo "Test sucscess" | mail -s "CI-CD" aaa@gmail.com
exit 0
else
echo "Код ответа: $response"
echo "Test failed" | mail -s "CI-CD" aaa@gmail.com
exit 1
fi
