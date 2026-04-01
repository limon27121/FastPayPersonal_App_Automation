#!/bin/bash

echo "🚀 Starting FastPay Smoke Test Suite..."

maestro test \
  -e User=7507507501 \
  -e Password=Password100@1 \
  -e Amount=261 \
  -e Pin=5890 \
  --format html \
  --output smoke_report_final.html \
  Flow/Smoke_Test/01_P0_Login.yaml \
  Flow/Smoke_Test/02_P1_HomePage.yaml \
  Flow/Smoke_Test/03_P2_WithdrawMoney.yaml \
  Flow/Smoke_Test/04_P3_SendMoney.yaml \
  Flow/Smoke_Test/05_P4_RequestMoney.yaml

echo "✅ Tests complete! Opening report..."
google-chrome smoke_report_final.html
