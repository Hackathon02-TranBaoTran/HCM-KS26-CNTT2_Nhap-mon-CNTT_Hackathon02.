# BÀI LÀM – HACKATHON 02

- **Mã đề:** 07
- **Họ tên:** Trần Bảo Trân
- **Lớp:** CNTT2-HCM-KS26
- **Link repository:**
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -Force
Move-Item lich_lam_viec.txt docs
cd docs
ls -Force
cd ..
mkdir backup
ls -Force
Copy-Item data\hoa_don_spa_thang_7.xlsx backup
rm *.tmp
ls -Force
cd logs
ls -Force
cd ..
Get-ChildItem -Recurse -Force
Get-Content logs\service.log | Select-String "status=500" > logs\loi_500.txt
Get-Content loi_500.txt
Get-Content logs\service.log | Select-String "status=404" | Measure-Object
cd logs
notepad tong_hop.ps1
.\tong_hop.ps1 

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text

    Directory: C:\Users\BAOTRAN\Downloads\starter-kit
    (1)\starter-kit\spa-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:36 PM                backup
d-r---        11/11/2026   1:34 PM                data
d-r---        11/11/2026   1:36 PM                docs
d-r---        11/11/2026   1:32 PM                evidence
d-r---        11/11/2026   1:36 PM                logs
d-r---        11/11/2026   1:31 PM                web
-a----         11/3/2026   7:07 AM             75 .env
-a----         11/3/2026   7:07 AM           2412 bai_lam.md


    Directory: C:\Users\BAOTRAN\Downloads\starter-kit
    (1)\starter-kit\spa-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           6149 hoa_don_spa_thang_7.xlsx


    Directory: C:\Users\BAOTRAN\Downloads\starter-kit
    (1)\starter-kit\spa-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM            149 lich_lam_viec.txt


    Directory: C:\Users\BAOTRAN\Downloads\starter-kit
    (1)\starter-kit\spa-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM            939 service.log


    Directory: C:\Users\BAOTRAN\Downloads\starter-kit
    (1)\starter-kit\spa-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        11/11/2026   1:31 PM                images
-a----         11/3/2026   7:07 AM            597 app.js
-a----         11/3/2026   7:07 AM            523 index.html
-a----         11/3/2026   7:07 AM            460 style.css


    Directory: C:\Users\BAOTRAN\Downloads\starter-kit
    (1)\starter-kit\spa-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:07 AM           3091 logo-lotuscare.png



```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
# Get-Content logs\service.log | Select-String "status=500" > logs\loi_500.txt
```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-07-28 08:12:50 POST /api/dat-lich status=500
2026-07-28 08:19:23 POST /api/dat-lich status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
# Get-Content logs\service.log | Select-String "status=404" | Measure-Object

```

```text
Count    : 4
Average  :
Sum      :
Maximum  :
Minimum  :
Property :

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
# Ghi lệnh vào đây (xoá dòng này)

```

### Nội dung file logs/tong_hop.txt

```text
# Script: tong_hop.ps1
# Tac gia: Trần Bảo Trân
# Ngay tao: 11/11/2026
Write-Host "Dang tao bao cao"
"=== BAO CAO SU CO WEBSITE ===">logs\service.log
Get-Content logs\service.log | Select-String "status=500" >> logs\loi_500.txt
Get-Content logs\service.log | Select-String "status="404" | Measure-Object >> Count
Write-Host "Hoan thanh!"

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [ ] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [ ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | netword | đường dẫn liên kết hình ảnh bị sai | sửa lại đường dẫn thành logo-lotuscare và load lại trang thì sẽ hiện ảnh|
| 2 | console | hienThiGoiDichVu is not defined | truy cập vào file .js và sửa lại thành hienThiGoiSpa và load lại trang|

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** 
- **Expected:** 
- **Actual:** 
- **Log:** 

### Câu tìm kiếm Google

```text
site:spa-website.com "hienThiGoiDichVu is not defined"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/hoa_don_spa_thang_7.xlsx`, không cần ghi vào đây.
