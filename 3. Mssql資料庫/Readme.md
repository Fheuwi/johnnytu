# 資安維運專案

本專案包含 PowerShell 腳本、C# 網頁應用程式及 MSSQL 資料庫，主要用於設備健康監控與使用者情境資訊管理。

## 1. PowerShell 腳本

### 伺服器端作業
- **maintain_untrust_Email_Task.ps1**：檢測設備健康信任異常並發送電子郵件通知。
- **Security_AccountLocked_Email_Task.ps1**：監控帳戶鎖定事件並發送通知。
- **Security_MidnightLogon_Email_Task.ps1**：記錄並回報午夜時段登入成功事件。

### 使用者端作業
- **UserLogin.ps1**：蒐集使用者登入情境資訊。
- **ComputerCheck.ps1**：檢查設備健康狀態並回報。

## 2. C# 網頁程式

### 伺服器網頁資料夾 (`wwwroot`)
- **Default.aspx, Default.aspx.cs**：網站首頁。
- **GridView.aspx, GridView.aspx.cs**：提供電腦設備健康狀態查詢。
- **GridView2.aspx, GridView2.aspx.cs**：顯示使用者情境資訊。

## 3. MSSQL 資料庫

### 資料庫備份檔
- **maintain.bak**：資安維運資料庫備份。

### 主要資料表
- **dbo.computer**：存儲電腦設備狀態資訊。
- **dbo.wmsinfo**：記錄使用者情境資訊。

## 使用方式
1. 還原 `maintain.bak` 到 MSSQL 伺服器。
2. 部署 C# 網頁程式至 IIS 或其他 Web 伺服器。
3. 設定並執行 PowerShell 腳本以監控設備與帳戶狀態。

## 版本管理
建議使用 Git 進行版本控制，確保代碼的可追溯性與變更管理。

## 授權
本專案受 MIT 授權條款保護，詳細內容請參閱 `LICENSE` 檔案。

---
> **注意**：此專案涉及設備健康監測與帳戶安全管理，請遵循組織內部資安規範進行操作。

