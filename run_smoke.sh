#!/bin/bash

echo "🚀 Starting FastPay Smoke Test Suite..."

maestro test -e User=7507507501 -e Password=Password100@1 -e Amount=261 -e Pin=5890 --format html --output smoke.html Flow/Smoke_Test/*.yaml

echo "✅ Tests complete! Opening report..."
google-chrome smoke.html
