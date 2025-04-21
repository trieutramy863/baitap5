# baitap5
bai-tap-5-TrieuTraMy
BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl.

SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

HƯỚNG DẪN CÁCH LÀM:

Hướng dẫn làm phần A: 
 - Chỉ cần nêu ra y/c của đồ án.
 - Không cần chụp quá trình làm ra db, tables.
 - Chỉ cần đưa ra db gồm các bảng nào,
   mỗi bảng có các trường nào, kiểu dữ liệu nào,
   và pk, fk, ck của các bảng.

Hướng dẫn làm phần B:
1. Sv tạo repo mới trên github, cho phép truy cập public.
2. Tạo file Readme.md, đầu file để thông tin cá nhân sv.
3. Tiếp theo đưa phần A vào file Reame.md .
3. Các thao tác làm trên csdl bằng phần mềm ssms.
4. Chụp ảnh màn hình quá trình làm.
5. Paste ngay vào Readme.md, 
   rồi gõ mô tả ảnh này làm gì, nhập gì, hay đạt được điều gì...
6. Có thể thêm những nhận xét hoặc kết luận
   cho việc bản thân đã hiểu rõ thêm về 1 vấn đề gì đó.
7. Lặp lại các step 4 5 6 cho đến khi hoàn thành yêu cầu của phần B.
8. Xuất các file sql chứa cấu trúc và data, up lên cùng repo.
9. Link đến repo cần mở được trực tiếp nội dung, 
   Paste link này vào file excel online ghim trên nhóm.
   Thầy sẽ dùng tool để check các link này.

DEADLINE: 23H59:59 NGÀY 23/04/2025

p/s:
 - Sv được phép tham khảo mọi nguồn, nhưng phải tự làm lại.
 - Đọc thêm nội quy học tập để biết các chế tài.
 - Đã đến lúc khẳng định bản thân và toả sáng!
 - Chỗ nào vướng mắc cứ share lên nhóm để cùng tháo gỡ.
# A.Trình bày lại đầu bài của đồ án PT&TKHT
# 1.Yêu cầu đồ án:Phân Tích Thiết Kế Hệ Thống Nhà Hàng
# 2.cơ sở dữ liệu quán lý nhà hàng 
# Tao bảng database mới mang tên DoAn
# ![Screenshot 2025-04-21 180839](https://github.com/user-attachments/assets/badfcb47-d3f0-427e-a162-6a8b9d310052)
# Tạo Bảng mang tên phiếu nhập 
# ![Screenshot 2025-04-21 181521](https://github.com/user-attachments/assets/79e4c511-5ab9-4a2a-8dc6-0259ddcdbef0)
# Tạo Bảng chi tiết hoá đơn
# ![Screenshot 2025-04-21 184505](https://github.com/user-attachments/assets/76d0409f-b1ed-4937-a97e-5850378b75d6)
# Tạo Bảng chi tiết phiếu nhập 
# ![Screenshot 2025-04-21 182024](https://github.com/user-attachments/assets/9ec532be-896f-4610-ba95-72b8da38b610)
# Tạo Bảng chi tiết đặt bàn
# ![Screenshot 2025-04-21 182059](https://github.com/user-attachments/assets/09327da3-7659-44e9-822b-aaf2cfbe8989)
# Tạo Bảng Chi tiết hoá đơn
# ![Screenshot 2025-04-21 182232](https://github.com/user-attachments/assets/0b494f94-8c2e-463c-b724-f3038c407976)
# Tạo Bảng Chi tiết Khách hàng
# ![Screenshot 2025-04-21 182342](https://github.com/user-attachments/assets/01750c29-2b57-4f89-ab52-5dcccd2d75cf)
# Tạo bảng chi tiết lịch làm việc
# ![Screenshot 2025-04-21 182445](https://github.com/user-attachments/assets/06ae95ee-7148-4aaa-af05-623f16db73a8)
# Tạo bảng chi tiết món ăn
# ![Screenshot 2025-04-21 182536](https://github.com/user-attachments/assets/2516f4a6-4cbd-43cb-bb7b-726c01a7fda3)
# Tạo bảng chi tiết nguyên liệu 
# ![Screenshot 2025-04-21 182616](https://github.com/user-attachments/assets/5cc15fc8-6fc7-4d26-90e3-a7aafb275383)
# Tạo bảng chi tiết nhà cung cấp
# ![Screenshot 2025-04-21 182734](https://github.com/user-attachments/assets/26f22492-bdf6-4ee4-9486-aeb5440b834b)
# Tạo bảng chi tiết nhân viên 
# ![Screenshot 2025-04-21 184649](https://github.com/user-attachments/assets/2c13b489-e49d-45b5-8601-785cc27a3f32)
# Các Khoá Ngoại Liên Kết cho các bảng 
# ![Screenshot 2025-04-21 183251](https://github.com/user-attachments/assets/41c3ee29-828f-488f-8dee-8fa1ac6856ef)
# ![Screenshot 2025-04-21 183316](https://github.com/user-attachments/assets/3b167f99-41a3-436b-9ce4-64adfeef8c43)
# ![Screenshot 2025-04-21 183338](https://github.com/user-attachments/assets/e30c4dcb-924c-4ea4-b253-107c26fe9be8)
# ![Screenshot 2025-04-21 183358](https://github.com/user-attachments/assets/0f58ed54-8b70-4341-bc8f-a849b1ad8a30)
# ![Screenshot 2025-04-21 183424](https://github.com/user-attachments/assets/fef0a333-eda1-43b3-8734-62b61ad734eb)
# ![Screenshot 2025-04-21 183437](https://github.com/user-attachments/assets/f67d08c5-c3d4-44af-bf64-f5766d833a6f)
# ![Screenshot 2025-04-21 183536](https://github.com/user-attachments/assets/9feb11d7-c5c8-48eb-8331-d5b5bfd1fa78)
# Tạo bảng liên kết quản lý nhà hàng
# ![Screenshot 2025-04-21 180145](https://github.com/user-attachments/assets/c10bd232-b48b-4de9-b1a4-136d644bc339)
# B.Nội dung Bài Tập 5
# 1. Tạo csdl cho hệ thống quản lý hiệu thuốc
# 
