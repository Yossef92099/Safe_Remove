#!/bin/bash

# إعطاء صلاحيات التنفيذ للملف الأساسي
chmod +x Safe_Remove

# نسخ الأداة لمسار الـ Binaries العام في تيرموكس
cp Safe_Remove $PREFIX/bin/Safe_Remove

echo -e "\033[32m[+] Safe_Remove installed successfully! Type 'Safe_Remove' anywhere to run.\033[0m"
