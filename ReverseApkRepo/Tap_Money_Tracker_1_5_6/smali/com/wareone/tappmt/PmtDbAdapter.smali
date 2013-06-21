.class public Lcom/wareone/tappmt/PmtDbAdapter;
.super Ljava/lang/Object;
.source "PmtDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/PmtDbAdapter$Account;,
        Lcom/wareone/tappmt/PmtDbAdapter$Currency;,
        Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;,
        Lcom/wareone/tappmt/PmtDbAdapter$DeleteLogs;,
        Lcom/wareone/tappmt/PmtDbAdapter$Exporter;,
        Lcom/wareone/tappmt/PmtDbAdapter$Group;,
        Lcom/wareone/tappmt/PmtDbAdapter$Payees;,
        Lcom/wareone/tappmt/PmtDbAdapter$Reminder;,
        Lcom/wareone/tappmt/PmtDbAdapter$Template;,
        Lcom/wareone/tappmt/PmtDbAdapter$Transaction;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_R:I = 0x0

.field public static final ACCOUNT_TYPE_R_ASSETS:I = 0x1

.field public static final ACCOUNT_TYPE_R_DEBTS:I = -0x1

.field public static final ACCOUNT_TYPE_V:I = 0x1

.field public static final ACCOUNT_TYPE_V_EXPENSE:I = -0x1

.field public static final ACCOUNT_TYPE_V_INCOME:I = 0x1

.field private static final BACKUP_FILE_NAME:Ljava/lang/String; = "/sdcard/tappmt/backup.db"

.field private static final BACKUP_ORG_FILE_NAME:Ljava/lang/String; = "/sdcard/tappmt/org_backup.db"

.field private static final DATABASE_NAME:Ljava/lang/String; = "tappmt.db"

.field private static final DATABASE_PATH_EXTERNAL:Ljava/lang/String; = "/sdcard/tappmt/tappmt.db"

.field private static final DATABASE_PATH_LOCAL:Ljava/lang/String; = "tappmt.db"

.field public static final DATABASE_TRANSFER_TO_EXTERNAL:I = 0x0

.field public static final DATABASE_TRANSFER_TO_LOCAL:I = 0x1

.field private static final DATABASE_VERSION:I = 0xf

.field public static final DATE_DELIMITER:Ljava/lang/String; = "-"

.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DATE_FORMAT_WITH_WEEK:Ljava/lang/String; = "yyyy-MM-dd (EE)"

.field public static final DECIMAL_NUM:I = 0x2

.field public static final EXPORT_CSV_FILE_NAME:Ljava/lang/String; = "/sdcard/tappmt/export.csv"

.field public static final EXPORT_DIR:Ljava/lang/String; = "TapPMT"

.field public static final EXPORT_FILENAME:Ljava/lang/String; = "database.xml"

.field private static final EXPORT_FILE_NAME:Ljava/lang/String; = "/sdcard/tappmt/export.xml"

.field public static final EXPORT_QIF_FILE_NAME:Ljava/lang/String; = "/sdcard/tappmt/export.qif"

.field private static final IS_DEBUG:Z = true

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final PREFS_NAME:Ljava/lang/String; = "TapPMTPrefs"

.field public static final PREFS_PARAM_AUTHORIZED:Ljava/lang/String; = "authorized"

.field public static final PREFS_PARAM_AUTH_CODE:Ljava/lang/String; = "auth_code"

.field public static final PREFS_PARAM_AUTH_NAME:Ljava/lang/String; = "auth_name"

.field public static final PREFS_PARAM_BEFORE_DAYS:Ljava/lang/String; = "before_days"

.field public static final PREFS_PARAM_BUDGET_ALERT:Ljava/lang/String; = "budget_alert"

.field public static final PREFS_PARAM_DIGITS:Ljava/lang/String; = "digits"

.field public static final PREFS_PARAM_GOOGLE_ACCOUNT:Ljava/lang/String; = "google_account"

.field public static final PREFS_PARAM_PASSWORD:Ljava/lang/String; = "PASSWD"

.field public static final PREFS_PARAM_REMINDER_SERVICE:Ljava/lang/String; = "reminder_service"

.field public static final PREFS_PARAM_REMINDER_TIME:Ljava/lang/String; = "reminder_time"

.field public static final PREFS_PARAM_SECURITY:Ljava/lang/String; = "SECURITY_ENABLED"

.field public static final PREFS_PARAM_SHOW_ACCOUNT:Ljava/lang/String; = "show_account"

.field public static final PREFS_PARAM_SHOW_ME:Ljava/lang/String; = "show_me"

.field public static final PREFS_PARAM_SHOW_ME_COUNT:Ljava/lang/String; = "show_count"

.field public static final PREFS_PARAM_SYNC_ACCOUNT:Ljava/lang/String; = "sync_account"

.field public static final PREFS_PARAM_SYNC_PASSWORD:Ljava/lang/String; = "sync_password"

.field public static final PREFS_PARAM_SYNC_SERVICE:Ljava/lang/String; = "sync_service"

.field public static final PREFS_PARAM_TRANSACTION_MAX:Ljava/lang/String; = "trans_max"

.field public static final PREFS_PARAM_USE_SDCARD:Ljava/lang/String; = "use_sdcard"

.field public static final PREFS_PARAM_VER_CODE:Ljava/lang/String; = "ver_code"

.field public static final PREFS_PARAM_WIDGET_ACCOUNT:Ljava/lang/String; = "widget_account"

.field public static final QIF_TYPE:[Ljava/lang/String; = null

.field public static final QIF_TYPE_OFFSET_ASSETS:I = 0x0

.field public static final QIF_TYPE_OFFSET_LIABILITY:I = 0x4

.field public static final REMOTE_ID:Ljava/lang/String; = "remote_id"

.field public static final ROW_ID:Ljava/lang/String; = "row_id"

.field public static final SHOW_ME_MAX_COUNT:I = 0x14

.field public static final SYNC:Ljava/lang/String; = "sync"

.field public static final SYNC_ACTION:I = 0x1770

.field public static final SYNC_ACTION_CHECK_ACCOUNT:I = 0x1771

.field public static final SYNC_ACTION_CREATE_ACCOUNT:I = 0x1772

.field public static final SYNC_ACTION_DOWNLOAD_ALL:I = 0x1776

.field public static final SYNC_ACTION_DO_SYNC:I = 0x1774

.field public static final SYNC_ACTION_LOGIN:I = 0x1773

.field public static final SYNC_ACTION_UPLOAD_ALL:I = 0x1775

.field public static final SYNC_RESULT_ACCOUNT_CREATED:I = 0x17d6

.field public static final SYNC_RESULT_ACCOUNT_EXISTS:I = 0x17d5

.field public static final SYNC_RESULT_ACCOUNT_FAIL:I = 0x17d7

.field public static final SYNC_RESULT_ACCOUNT_NOT_EXISTS:I = 0x17d4

.field public static final SYNC_RESULT_LOGIN_FAIL:I = 0x17d9

.field public static final SYNC_RESULT_LOGIN_SUCCESS:I = 0x17d8

.field public static final SYNC_RESULT_SYNC_FAIL:I = 0x17da

.field public static final SYNC_RESULT_SYNC_SUCCESS:I = 0x17db

.field private static final TAG:Ljava/lang/String; = null

.field public static final TRANSACTION_MAX_COUNT:I = 0x96

.field public static final TRANS_MODE_EXPENSE:I = -0x1

.field public static final TRANS_MODE_INCOME:I = 0x1

.field public static final TRANS_MODE_TRANSFER:I

.field private static dbPathToUse:Ljava/lang/String;

.field private static mCtx:Landroid/content/Context;

.field private static useLocal:Z


# instance fields
.field private _exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const-class v0, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    .line 62
    sput-boolean v2, Lcom/wareone/tappmt/PmtDbAdapter;->useLocal:Z

    .line 63
    const-string v0, "/sdcard/tappmt/tappmt.db"

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter;->dbPathToUse:Ljava/lang/String;

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Cash"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Bank"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Invst"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Oth A"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CCard"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Oth L"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter;->QIF_TYPE:[Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 2040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2041
    sput-object p1, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    .line 2042
    return-void
.end method

.method private _copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .parameter "src"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2690
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2691
    .local v1, in:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2694
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 2696
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-gtz v2, :cond_0

    .line 2699
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2700
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 2701
    return-void

    .line 2697
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Z)V
    .locals 0
    .parameter

    .prologue
    .line 62
    sput-boolean p0, Lcom/wareone/tappmt/PmtDbAdapter;->useLocal:Z

    return-void
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/wareone/tappmt/PmtDbAdapter;->useLocal:Z

    return v0
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    sput-object p0, Lcom/wareone/tappmt/PmtDbAdapter;->dbPathToUse:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/wareone/tappmt/PmtDbAdapter;->dbPathToUse:Ljava/lang/String;

    return-object v0
.end method

.method public static exportCSV(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v9, 0x1

    const-string v7, ","

    const-string v7, ",\""

    const-string v7, "\""

    .line 3010
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Expense"

    aput-object v8, v4, v7

    const-string v7, "Transfer"

    aput-object v7, v4, v9

    const/4 v7, 0x2

    const-string v8, "Income"

    aput-object v8, v4, v7

    .line 3013
    .local v4, mode:[Ljava/lang/String;
    const-string v7, "mounted"

    .line 3014
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 3013
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3059
    :goto_0
    return-void

    .line 3023
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v7, "/sdcard/tappmt/export.csv"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3024
    .local v5, myFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 3026
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3027
    .local v2, fOut:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3029
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/16 v7, -0x11

    invoke-virtual {v0, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 3030
    const/16 v7, -0x45

    invoke-virtual {v0, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 3031
    const/16 v7, -0x41

    invoke-virtual {v0, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 3032
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 3045
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 3046
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 3047
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 3048
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3049
    sget-object v7, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    const v8, 0x7f0900b1

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3051
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    .end local v5           #myFile:Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 3053
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3033
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #i:I
    .restart local v5       #myFile:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "mode"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v4, v7

    .line 3034
    .local v6, record:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "trans_date"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3035
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "category"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3036
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "account"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3037
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "amount"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, ","

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3038
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "currency"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3039
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "group_name"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3040
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "payee"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3041
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "note"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3042
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3043
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3032
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 3055
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    .end local v5           #myFile:Ljava/io/File;
    .end local v6           #record:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 3057
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private exportTable(Ljava/lang/String;)V
    .locals 9
    .parameter "tableName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2497
    iget-object v6, p0, Lcom/wareone/tappmt/PmtDbAdapter;->_exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    invoke-virtual {v6, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->startTable(Ljava/lang/String;)V

    .line 2500
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select * from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2501
    .local v4, sql:Ljava/lang/String;
    iget-object v6, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2502
    .local v0, cur:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 2504
    .local v3, numcols:I
    sget-object v6, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Start exporting table "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2517
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 2535
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2537
    iget-object v6, p0, Lcom/wareone/tappmt/PmtDbAdapter;->_exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    invoke-virtual {v6}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->endTable()V

    .line 2538
    return-void

    .line 2519
    :cond_0
    iget-object v6, p0, Lcom/wareone/tappmt/PmtDbAdapter;->_exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    invoke-virtual {v6}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->startRow()V

    .line 2522
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 2531
    iget-object v6, p0, Lcom/wareone/tappmt/PmtDbAdapter;->_exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    invoke-virtual {v6}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->endRow()V

    .line 2532
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 2524
    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 2525
    .local v2, name:Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2526
    .local v5, val:Ljava/lang/String;
    sget-object v6, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "col \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' -- val \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    iget-object v6, p0, Lcom/wareone/tappmt/PmtDbAdapter;->_exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    invoke-virtual {v6, v2, v5}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 3005
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    return-void
.end method

.method public static round(DI)D
    .locals 4
    .parameter "value"
    .parameter "scale"

    .prologue
    .line 3139
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 3140
    .local v0, bd:Ljava/math/BigDecimal;
    const/4 v3, 0x4

    invoke-virtual {v0, p2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3141
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 3142
    .local v1, d:D
    const/4 v0, 0x0

    .line 3143
    return-wide v1
.end method

.method public static round(DII)D
    .locals 3
    .parameter "value"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 3131
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 3132
    .local v0, bd:Ljava/math/BigDecimal;
    invoke-virtual {v0, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3133
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 3134
    .local v1, d:D
    const/4 v0, 0x0

    .line 3135
    return-wide v1
.end method

.method public static sub(DD)D
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 3153
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3154
    .local v0, bd1:Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3155
    .local v1, bd2:Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public static sum(DD)D
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 3147
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3148
    .local v0, bd1:Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3149
    .local v1, bd2:Ljava/math/BigDecimal;
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public addAccountFrequency(J)V
    .locals 4
    .parameter "row_id"

    .prologue
    .line 2951
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->addFrequency(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2952
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getParent(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    .line 2953
    .local v0, parent:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2954
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->addFrequency(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2956
    :cond_0
    return-void
.end method

.method public backup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2706
    const-string v5, "mounted"

    .line 2707
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 2706
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2708
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Can not found external storage."

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    const v6, 0x7f09008d

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2740
    :goto_0
    return-void

    .line 2715
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 2716
    .local v4, sdcard:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "tappmt"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2717
    .local v0, destination:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2718
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Application data directory created"

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    :cond_1
    sget-boolean v5, Lcom/wareone/tappmt/PmtDbAdapter;->useLocal:Z

    if-eqz v5, :cond_2

    .line 2723
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.wareone.tappmt/databases/tappmt.db"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2727
    .local v3, myFile:Ljava/io/File;
    :goto_1
    new-instance v2, Ljava/io/File;

    const-string v5, "/sdcard/tappmt/backup.db"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2728
    .local v2, myBackup:Ljava/io/File;
    invoke-direct {p0, v3, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->_copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 2730
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    const v6, 0x7f09008f

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2732
    .end local v0           #destination:Ljava/io/File;
    .end local v2           #myBackup:Ljava/io/File;
    .end local v3           #myFile:Ljava/io/File;
    .end local v4           #sdcard:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2734
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2725
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #destination:Ljava/io/File;
    .restart local v4       #sdcard:Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->dbPathToUse:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3       #myFile:Ljava/io/File;
    goto :goto_1

    .line 2736
    .end local v0           #destination:Ljava/io/File;
    .end local v3           #myFile:Ljava/io/File;
    .end local v4           #sdcard:Ljava/io/File;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 2738
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public backupOrignal()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2745
    const-string v5, "mounted"

    .line 2746
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 2745
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2747
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Can not found external storage."

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    const v6, 0x7f09008d

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2779
    :goto_0
    return-void

    .line 2754
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 2755
    .local v4, sdcard:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "tappmt"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2756
    .local v0, destination:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2757
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Application data directory created"

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    :cond_1
    sget-boolean v5, Lcom/wareone/tappmt/PmtDbAdapter;->useLocal:Z

    if-eqz v5, :cond_2

    .line 2762
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.wareone.tappmt/databases/tappmt.db"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2766
    .local v3, myFile:Ljava/io/File;
    :goto_1
    new-instance v2, Ljava/io/File;

    const-string v5, "/sdcard/tappmt/org_backup.db"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2767
    .local v2, myBackup:Ljava/io/File;
    invoke-direct {p0, v3, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->_copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 2769
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    const v6, 0x7f09008f

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2771
    .end local v0           #destination:Ljava/io/File;
    .end local v2           #myBackup:Ljava/io/File;
    .end local v3           #myFile:Ljava/io/File;
    .end local v4           #sdcard:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2773
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2764
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #destination:Ljava/io/File;
    .restart local v4       #sdcard:Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->dbPathToUse:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3       #myFile:Ljava/io/File;
    goto :goto_1

    .line 2775
    .end local v0           #destination:Ljava/io/File;
    .end local v3           #myFile:Ljava/io/File;
    .end local v4           #sdcard:Ljava/io/File;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 2777
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2404
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->dbHelper:Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->close()V

    .line 2052
    return-void
.end method

.method public delete(Ljava/lang/String;J)J
    .locals 2
    .parameter "table"
    .parameter "row_id"

    .prologue
    .line 2126
    const-string v0, "accounts"

    if-ne p1, v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    .line 2139
    :goto_0
    return-wide v0

    .line 2128
    :cond_0
    const-string v0, "groups"

    if-ne p1, v0, :cond_1

    .line 2129
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Group;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    goto :goto_0

    .line 2130
    :cond_1
    const-string v0, "currency"

    if-ne p1, v0, :cond_2

    .line 2131
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    goto :goto_0

    .line 2132
    :cond_2
    const-string v0, "transactions"

    if-ne p1, v0, :cond_3

    .line 2133
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    goto :goto_0

    .line 2134
    :cond_3
    const-string v0, "reminders"

    if-ne p1, v0, :cond_4

    .line 2135
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    goto :goto_0

    .line 2136
    :cond_4
    const-string v0, "payees"

    if-ne p1, v0, :cond_5

    .line 2137
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    goto :goto_0

    .line 2139
    :cond_5
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;JJ)J
    .locals 5
    .parameter "table"
    .parameter "row_id"
    .parameter "remote_id"

    .prologue
    const-string v4, ", remote_id:"

    .line 2097
    sget-object v1, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete --> row_id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remote_id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_0

    .line 2099
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2100
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "table_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    const-string v1, "row_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2102
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v0}, Lcom/wareone/tappmt/PmtDbAdapter$DeleteLogs;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    .line 2103
    sget-object v1, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insert deletelog --> row_id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remote_id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    const-string v1, "accounts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2107
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    .line 2121
    :goto_0
    return-wide v1

    .line 2108
    :cond_1
    const-string v1, "groups"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 2109
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Group;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    goto :goto_0

    .line 2110
    :cond_2
    const-string v1, "currency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2111
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    goto :goto_0

    .line 2112
    :cond_3
    const-string v1, "transactions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 2113
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    goto :goto_0

    .line 2114
    :cond_4
    const-string v1, "reminders"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 2115
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    goto :goto_0

    .line 2116
    :cond_5
    const-string v1, "templates"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 2117
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Template;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    goto :goto_0

    .line 2118
    :cond_6
    const-string v1, "payees"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 2119
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->delete(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v1

    goto :goto_0

    .line 2121
    :cond_7
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public deleteUncompleted()V
    .locals 2

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM accounts WHERE acc_rv is null"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2874
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM transactions WHERE mode is null"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2875
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "update transactions set payee=\'\' where payee is null"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2876
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "update transactions set ex_rate=1, acc_rate=1 where ex_rate is null"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2877
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "update transactions set ex_amount=amount*ex_rate, acc_amount=amount*acc_rate where ex_amount is null"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2878
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "update reminders set times=0, count=0, payee=\'\' where times is null"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2879
    return-void
.end method

.method public doImport()V
    .locals 16

    .prologue
    .line 2587
    const-string v12, "mounted"

    .line 2588
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 2587
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2687
    :cond_0
    :goto_0
    return-void

    .line 2594
    :cond_1
    const/4 v0, 0x0

    .line 2595
    .local v0, cnt:I
    const/4 v6, 0x0

    .line 2596
    .local v6, fr:Ljava/io/FileReader;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2599
    .local v9, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/StringBuffer;>;"
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2600
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2601
    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "database.xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2599
    invoke-direct {v7, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2608
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 2609
    .local v5, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 2610
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 2611
    .local v11, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2612
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 2613
    .local v4, eventType:I
    const/4 v12, 0x4

    new-array v1, v12, [Ljava/lang/StringBuffer;

    .line 2614
    .local v1, cur:[Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 2615
    .local v2, curIdx:I
    :goto_1
    const/4 v12, 0x1

    if-ne v4, v12, :cond_2

    .line 2648
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v13

    if-nez v13, :cond_b

    .line 2675
    if-eqz v7, :cond_0

    .line 2677
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2678
    :catch_0
    move-exception v12

    goto :goto_0

    .line 2617
    :cond_2
    const/4 v12, 0x3

    if-ne v4, v12, :cond_5

    .line 2618
    :try_start_3
    const-string v12, "note"

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2619
    const/4 v12, 0x0

    aget-object v12, v1, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    aget-object v12, v1, v12

    if-eqz v12, :cond_3

    .line 2620
    const-string v12, ""

    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, ""

    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 2621
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2623
    :cond_3
    const/4 v12, 0x4

    new-array v1, v12, [Ljava/lang/StringBuffer;

    .line 2624
    const/4 v2, -0x1

    .line 2643
    :cond_4
    :goto_3
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 2625
    :cond_5
    const/4 v12, 0x2

    if-ne v4, v12, :cond_6

    .line 2626
    const-string v12, "title"

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2627
    const/4 v2, 0x0

    goto :goto_3

    .line 2628
    :cond_6
    const/4 v12, 0x2

    if-ne v4, v12, :cond_7

    .line 2629
    const-string v12, "body"

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2630
    const/4 v2, 0x1

    goto :goto_3

    .line 2631
    :cond_7
    const/4 v12, 0x2

    if-ne v4, v12, :cond_8

    .line 2632
    const-string v12, "created"

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2633
    const/4 v2, 0x2

    goto :goto_3

    .line 2634
    :cond_8
    const/4 v12, 0x2

    if-ne v4, v12, :cond_9

    .line 2635
    const-string v12, "modified"

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2636
    const/4 v2, 0x3

    goto :goto_3

    .line 2637
    :cond_9
    const/4 v12, 0x4

    if-ne v4, v12, :cond_4

    const/4 v12, -0x1

    if-le v2, v12, :cond_4

    .line 2638
    aget-object v12, v1, v2

    if-nez v12, :cond_a

    .line 2639
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v12, v1, v2

    .line 2641
    :cond_a
    aget-object v12, v1, v2

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_3

    .line 2662
    .end local v1           #cur:[Ljava/lang/StringBuffer;
    .end local v2           #curIdx:I
    .end local v4           #eventType:I
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v11           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v12

    move-object v3, v12

    move-object v6, v7

    .line 2675
    .end local v7           #fr:Ljava/io/FileReader;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_4
    if-eqz v6, :cond_0

    .line 2677
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2678
    :catch_2
    move-exception v12

    goto/16 :goto_0

    .line 2648
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #cur:[Ljava/lang/StringBuffer;
    .restart local v2       #curIdx:I
    .restart local v4       #eventType:I
    .restart local v5       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v11       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/StringBuffer;

    .line 2651
    .local v8, record:[Ljava/lang/StringBuffer;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2652
    .local v10, values:Landroid/content/ContentValues;
    const-string v13, "title"

    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    const-string v13, "body"

    const/4 v14, 0x1

    aget-object v14, v8, v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    const-string v13, "created"

    .line 2655
    const/4 v14, 0x2

    aget-object v14, v8, v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 2654
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2656
    const-string v13, "modified"

    .line 2657
    const/4 v14, 0x3

    aget-object v14, v8, v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 2656
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_2

    .line 2666
    .end local v1           #cur:[Ljava/lang/StringBuffer;
    .end local v2           #curIdx:I
    .end local v4           #eventType:I
    .end local v5           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8           #record:[Ljava/lang/StringBuffer;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v12

    move-object v3, v12

    move-object v6, v7

    .line 2675
    .end local v7           #fr:Ljava/io/FileReader;
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_5
    if-eqz v6, :cond_0

    .line 2677
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 2678
    :catch_4
    move-exception v12

    goto/16 :goto_0

    .line 2670
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v12

    move-object v3, v12

    .line 2675
    .local v3, e:Ljava/io/IOException;
    :goto_6
    if-eqz v6, :cond_0

    .line 2677
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 2678
    :catch_6
    move-exception v12

    goto/16 :goto_0

    .line 2674
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 2675
    :goto_7
    if-eqz v6, :cond_c

    .line 2677
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 2681
    :cond_c
    :goto_8
    throw v12

    .line 2678
    :catch_7
    move-exception v13

    goto :goto_8

    .line 2674
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_7

    .line 2670
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v12

    move-object v3, v12

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_6

    .line 2666
    :catch_9
    move-exception v12

    move-object v3, v12

    goto :goto_5

    .line 2662
    :catch_a
    move-exception v12

    move-object v3, v12

    goto/16 :goto_4
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2408
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .parameter "sql"

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2960
    return-void
.end method

.method public export()V
    .locals 6

    .prologue
    .line 2544
    const-string v4, "mounted"

    .line 2545
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 2544
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2572
    :goto_0
    return-void

    .line 2554
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/tappmt/export.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2555
    .local v3, myFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2557
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2558
    .local v2, fOut:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2560
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    invoke-direct {v4, p0, v0}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;-><init>(Lcom/wareone/tappmt/PmtDbAdapter;Ljava/io/BufferedOutputStream;)V

    iput-object v4, p0, Lcom/wareone/tappmt/PmtDbAdapter;->_exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    .line 2561
    invoke-virtual {p0}, Lcom/wareone/tappmt/PmtDbAdapter;->exportData()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2564
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v3           #myFile:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2566
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2568
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 2570
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public exportData()V
    .locals 7

    .prologue
    .line 2457
    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Exporting Data"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    :try_start_0
    iget-object v4, p0, Lcom/wareone/tappmt/PmtDbAdapter;->_exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    iget-object v5, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->startDbExport(Ljava/lang/String;)V

    .line 2464
    const-string v2, "SELECT * FROM sqlite_master"

    .line 2466
    .local v2, sql:Ljava/lang/String;
    iget-object v4, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2467
    .local v0, cur:Landroid/database/Cursor;
    const-string v4, "db"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "show tables, cur size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2471
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 2486
    iget-object v4, p0, Lcom/wareone/tappmt/PmtDbAdapter;->_exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->endDbExport()V

    .line 2487
    iget-object v4, p0, Lcom/wareone/tappmt/PmtDbAdapter;->_exporter:Lcom/wareone/tappmt/PmtDbAdapter$Exporter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter$Exporter;->close()V

    .line 2493
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v2           #sql:Ljava/lang/String;
    :goto_1
    return-void

    .line 2473
    .restart local v0       #cur:Landroid/database/Cursor;
    .restart local v2       #sql:Ljava/lang/String;
    :cond_0
    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2474
    .local v3, tableName:Ljava/lang/String;
    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "table name "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    const-string v4, "android_metadata"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2479
    const-string v4, "sqlite_sequence"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2481
    invoke-direct {p0, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->exportTable(Ljava/lang/String;)V

    .line 2484
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2489
    .end local v0           #cur:Landroid/database/Cursor;
    .end local v2           #sql:Ljava/lang/String;
    .end local v3           #tableName:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2491
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 3
    .parameter "row_id"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getAccountById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAccountRoot()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getRealRoot(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAllMonths()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getAllMonths(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getBalance(JI)D
    .locals 22
    .parameter "account"
    .parameter "digits"

    .prologue
    .line 2359
    const-wide/16 v6, 0x0

    .local v6, asset_amt:D
    const-wide/16 v10, 0x0

    .line 2360
    .local v10, liability_amt:D
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v9

    .line 2362
    .local v9, currencyOfDefault:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v8

    .line 2364
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 2365
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2367
    :cond_0
    const-string v18, "_id"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object v0, v8

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getBalanceByAccount(J[Ljava/lang/String;)D

    move-result-wide v16

    .line 2368
    .local v16, total:D
    sget-object v18, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "total-->"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    const-string v18, "open_amt"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object v0, v8

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 2370
    .local v4, amount:D
    const-string v18, "acc_type"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object v0, v8

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 2371
    const-wide/16 v18, 0x0

    sub-double v4, v18, v4

    .line 2374
    :cond_1
    const-wide/high16 v12, 0x3ff0

    .line 2375
    .local v12, rate:D
    add-double v14, v4, v16

    .line 2376
    .local v14, sum:D
    const-string v18, "_id"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object v0, v8

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencyOfAccount(J)Ljava/lang/String;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_2

    .line 2377
    const-string v18, "currency"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object v0, v8

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getExchangeRateByName(Ljava/lang/String;)D

    move-result-wide v12

    .line 2378
    sget-object v18, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "exchange rate-->"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    sget-object v18, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "exchange open amount-->"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-double v20, v4, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    mul-double v18, v14, v12

    move-wide/from16 v0, v18

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->round(DI)D

    move-result-wide v14

    .line 2385
    :cond_2
    const-string v18, "acc_type"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object v0, v8

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 2387
    add-double/2addr v6, v14

    .line 2393
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    .line 2366
    if-nez v18, :cond_0

    .line 2395
    .end local v4           #amount:D
    .end local v12           #rate:D
    .end local v14           #sum:D
    .end local v16           #total:D
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2398
    :cond_4
    add-double v18, v6, v10

    return-wide v18

    .line 2390
    .restart local v4       #amount:D
    .restart local v12       #rate:D
    .restart local v14       #sum:D
    .restart local v16       #total:D
    :cond_5
    add-double/2addr v10, v14

    goto :goto_0
.end method

.method public getBalanceByAccount(J[Ljava/lang/String;)D
    .locals 2
    .parameter "acc_id"
    .parameter "range"

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getBalanceByAccount(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getBudget(J)D
    .locals 2
    .parameter "id"

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getBudget(Landroid/database/sqlite/SQLiteDatabase;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCategories()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getVirtualAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCategoriesByParentId(J)Landroid/database/Cursor;
    .locals 1
    .parameter "row_id"

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getVirtualByParent(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryRoot(I)Landroid/database/Cursor;
    .locals 1
    .parameter "category_type"

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getVirtualRoot(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencies()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyOfAccount(J)Ljava/lang/String;
    .locals 2
    .parameter "row_id"

    .prologue
    .line 2328
    iget-object v1, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getCurrency(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 2329
    .local v0, curr:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2330
    invoke-virtual {p0}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v1

    .line 2332
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getDefaultCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getDefault(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelete()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-string v4, "row_id"

    .line 2161
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2162
    .local v1, json:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4}, Lcom/wareone/tappmt/PmtDbAdapter$DeleteLogs;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 2163
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2165
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 2166
    .local v3, rs:Lorg/json/JSONArray;
    const-string v4, "records"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2168
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2169
    .local v2, record:Lorg/json/JSONObject;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2170
    const-string v4, "table"

    const-string v5, "table_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2171
    const-string v4, "row_id"

    const-string v5, "row_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2173
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2167
    if-nez v4, :cond_0

    .line 2177
    .end local v2           #record:Lorg/json/JSONObject;
    .end local v3           #rs:Lorg/json/JSONArray;
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2179
    return-object v1

    .line 2175
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getDigitsByCurrency(Ljava/lang/String;)I
    .locals 1
    .parameter "currency"

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getDigits(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExchangeRateByName(Ljava/lang/String;)D
    .locals 2
    .parameter "curr_name"

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getExchangeRateByName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupById(J)Landroid/database/Cursor;
    .locals 1
    .parameter "row_id"

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Group;->getById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getGroups()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Group;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "action"

    .prologue
    .line 2144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2146
    .local v0, json:Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2147
    .local v1, tables:Lorg/json/JSONArray;
    const-string v2, "tables"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2148
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getJSON(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2149
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getJSON(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2150
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Group;->getJSON(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2151
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->getJSON(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2152
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->getJSON(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2153
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getJSON(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2157
    .end local v1           #tables:Lorg/json/JSONArray;
    :goto_0
    return-object v0

    .line 2155
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 3115
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3127
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 3116
    .restart local v0       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 3117
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3118
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 3119
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3120
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 3124
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 3125
    .local v2, ex:Ljava/net/SocketException;
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNotifyReminders()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->getNotify(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPaterntByCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "currency"

    .prologue
    .line 2317
    const-string v0, "000000000000"

    .line 2318
    .local v0, ZEROES:Ljava/lang/String;
    iget-object v3, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getDigits(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    .line 2319
    .local v1, digits:I
    const-string v2, "#,###,##0"

    .line 2320
    .local v2, pattern:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 2321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2324
    :cond_0
    return-object v2
.end method

.method public getPayees()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPayeesByTransaction()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getPayees(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getReminderById(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 3
    .parameter "row_id"

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->getById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getReminders()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolByCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "currency"

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getSymbol(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateById(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 3
    .parameter "row_id"

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter$Template;->getById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTemplates()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/wareone/tappmt/PmtDbAdapter$Template;->getAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTotalByAccount(J[Ljava/lang/String;)D
    .locals 2
    .parameter "acc_id"
    .parameter "range"

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getTotalByAccount(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalByCategory(J[Ljava/lang/String;)D
    .locals 2
    .parameter "account_id"
    .parameter "range"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getTotalByCategory(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .parameter "account_id"
    .parameter "range"
    .parameter "group"

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getTotalByCategory(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalByCategory(J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D
    .locals 8
    .parameter "account_id"
    .parameter "range"
    .parameter "group"
    .parameter "acc_id"
    .parameter "payee"

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getTotalByCategory(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalByGroup(J[Ljava/lang/String;)D
    .locals 2
    .parameter "group_id"
    .parameter "range"

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getTotalByGroup(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalByPayee(Ljava/lang/String;[Ljava/lang/String;)D
    .locals 2
    .parameter "payee"
    .parameter "range"

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getTotalByPayee(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalExpense([Ljava/lang/String;)D
    .locals 2
    .parameter "range"

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getTotalExpense(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTransactionByDate(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 1
    .parameter "dateStr"
    .parameter "account_id"

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getByDate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionById(J)Landroid/database/Cursor;
    .locals 1
    .parameter "row_id"

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionByMonth(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 1
    .parameter "YearMonth"
    .parameter "account_id"

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2, p3}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getByYearMonth(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionByRange(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "dateBegin"
    .parameter "dateEnd"

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getByRange(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionByRange(Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 1
    .parameter "dateBegin"
    .parameter "dateEnd"
    .parameter "account_id"

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getByRange(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionByRange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 1
    .parameter "dateBegin"
    .parameter "dateEnd"
    .parameter "key"
    .parameter "type"

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getByRange(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionCount()I
    .locals 5

    .prologue
    .line 2941
    const/4 v1, 0x0

    .line 2942
    .local v1, result:I
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select count(*) as count from transactions"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2943
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2944
    const-string v2, "count"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2947
    :cond_0
    return v1
.end method

.method public hasCategoryChild(J)Z
    .locals 7
    .parameter "row_id"

    .prologue
    .line 2933
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from accounts where sub_of=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2934
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 2935
    .local v1, result:Z
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2937
    return v1
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "table"
    .parameter "values"

    .prologue
    .line 2055
    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2070
    :goto_0
    return-wide v0

    .line 2057
    :cond_0
    const-string v0, "groups"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2058
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Group;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2059
    :cond_1
    const-string v0, "currency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2060
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2061
    :cond_2
    const-string v0, "transactions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2062
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2063
    :cond_3
    const-string v0, "reminders"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2064
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2065
    :cond_4
    const-string v0, "templates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 2066
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Template;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2067
    :cond_5
    const-string v0, "payees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2068
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2070
    :cond_6
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public isAccountCurrency(JLjava/lang/String;)Z
    .locals 3
    .parameter "account_id"
    .parameter "currency"

    .prologue
    .line 2901
    const/4 v1, 0x0

    .line 2902
    .local v1, result:Z
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getCurrency(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 2903
    .local v0, currOfAccount:Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 2904
    :goto_0
    return v1

    .line 2903
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public isAccountExists(J)Z
    .locals 7
    .parameter "row_id"

    .prologue
    .line 2908
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from transactions where account=? or category=?"

    .line 2909
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2908
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2910
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 2911
    .local v1, result:Z
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2913
    return v1
.end method

.method public isDefaultCurrency(Ljava/lang/String;)Z
    .locals 3
    .parameter "currency"

    .prologue
    .line 2894
    const/4 v1, 0x0

    .line 2895
    .local v1, result:Z
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getDefault(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    .line 2896
    .local v0, default_currency:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 2897
    :goto_0
    return v1

    .line 2896
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public isGroupExists(J)Z
    .locals 7
    .parameter "row_id"

    .prologue
    .line 2917
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from transactions where group_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2918
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 2919
    .local v1, result:Z
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2921
    return v1
.end method

.method public isPayeeExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "payee_name"

    .prologue
    .line 2925
    iget-object v2, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->getByName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2926
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 2927
    .local v1, result:Z
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2929
    return v1
.end method

.method public md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "s"

    .prologue
    .line 2417
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2418
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 2419
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 2420
    .local v4, messageDigest:[B
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "md5 length --> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2424
    .local v2, hexString:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v4

    if-lt v3, v5, :cond_0

    .line 2427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2432
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #hexString:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    .end local v4           #messageDigest:[B
    :goto_1
    return-object v5

    .line 2425
    .restart local v0       #digest:Ljava/security/MessageDigest;
    .restart local v2       #hexString:Ljava/lang/StringBuilder;
    .restart local v3       #i:I
    .restart local v4       #messageDigest:[B
    :cond_0
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2424
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2429
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #hexString:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    .end local v4           #messageDigest:[B
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2430
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 2432
    const-string v5, ""

    goto :goto_1
.end method

.method public open()Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2045
    new-instance v0, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;

    sget-object v1, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->dbHelper:Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;

    .line 2046
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->dbHelper:Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 2047
    return-object p0
.end method

.method public purgeAll()V
    .locals 2

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM transactions"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2887
    return-void
.end method

.method public purgeByDate(Ljava/lang/String;)V
    .locals 3
    .parameter "edate"

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM transactions WHERE trans_date<=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2883
    return-void
.end method

.method public restore()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v3, "database path -> /data/data/com.wareone.tappmt/databases/tappmt.db"

    const-string v6, "File not found -> "

    .line 2783
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v4, "restore database"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    const-string v3, "mounted"

    .line 2787
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 2786
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2788
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Can not found external storage."

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    const v4, 0x7f09008d

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2829
    :goto_0
    return-void

    .line 2795
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/tappmt/backup.db"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2796
    .local v1, myBackup:Ljava/io/File;
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v4, "backup database -> /sdcard/tappmt/backup.db"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2798
    invoke-virtual {p0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 2799
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v4, "database close "

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    sget-boolean v3, Lcom/wareone/tappmt/PmtDbAdapter;->useLocal:Z

    if-eqz v3, :cond_1

    .line 2803
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.wareone.tappmt/databases/tappmt.db"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2804
    .local v2, myFile:Ljava/io/File;
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v4, "database path -> /data/data/com.wareone.tappmt/databases/tappmt.db"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->_copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 2812
    invoke-virtual {p0}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 2813
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    const v4, 0x7f090090

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2818
    .end local v1           #myBackup:Ljava/io/File;
    .end local v2           #myFile:Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2820
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File not found -> "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2806
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #myBackup:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->dbPathToUse:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2807
    .restart local v2       #myFile:Ljava/io/File;
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v4, "database path -> /data/data/com.wareone.tappmt/databases/tappmt.db"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2823
    .end local v1           #myBackup:Ljava/io/File;
    .end local v2           #myFile:Ljava/io/File;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 2825
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File not found -> "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2815
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #myBackup:Ljava/io/File;
    :cond_2
    :try_start_2
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    const v4, 0x7f09008e

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public setDefaultCurrency(Ljava/lang/String;)V
    .locals 1
    .parameter "currency"

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->setDefault(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2339
    return-void
.end method

.method public setNextTimeOfReminder(J)V
    .locals 1
    .parameter "row_id"

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->setNextDate(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2891
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2412
    return-void
.end method

.method public sha(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "s"

    .prologue
    .line 2438
    :try_start_0
    const-string v5, "SHA"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2439
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 2440
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 2443
    .local v4, messageDigest:[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2444
    .local v2, hexString:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v4

    if-lt v3, v5, :cond_0

    .line 2447
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2452
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #hexString:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v4           #messageDigest:[B
    :goto_1
    return-object v5

    .line 2445
    .restart local v0       #digest:Ljava/security/MessageDigest;
    .restart local v2       #hexString:Ljava/lang/StringBuffer;
    .restart local v3       #i:I
    .restart local v4       #messageDigest:[B
    :cond_0
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2444
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2449
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #hexString:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v4           #messageDigest:[B
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2450
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 2452
    const-string v5, ""

    goto :goto_1
.end method

.method public transfer(I)V
    .locals 8
    .parameter "direct"

    .prologue
    .line 2834
    const-string v5, "mounted"

    .line 2835
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 2834
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2836
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Can not found external storage."

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    const v6, 0x7f09008d

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2870
    :goto_0
    return-void

    .line 2843
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 2844
    .local v4, sdcard:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "tappmt"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2845
    .local v0, destination:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2846
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Application data directory created"

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/wareone/tappmt/PmtDbAdapter;->mCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/databases/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tappmt.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2850
    .local v3, localFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "/sdcard/tappmt/tappmt.db"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2852
    .local v2, externalFile:Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2854
    :pswitch_0
    invoke-direct {p0, v3, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->_copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2862
    .end local v0           #destination:Ljava/io/File;
    .end local v2           #externalFile:Ljava/io/File;
    .end local v3           #localFile:Ljava/io/File;
    .end local v4           #sdcard:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2864
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2857
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #destination:Ljava/io/File;
    .restart local v2       #externalFile:Ljava/io/File;
    .restart local v3       #localFile:Ljava/io/File;
    .restart local v4       #sdcard:Ljava/io/File;
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->_copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2866
    .end local v0           #destination:Ljava/io/File;
    .end local v2           #externalFile:Ljava/io/File;
    .end local v3           #localFile:Ljava/io/File;
    .end local v4           #sdcard:Ljava/io/File;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 2868
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J
    .locals 3
    .parameter "table"
    .parameter "values"
    .parameter "row_id"

    .prologue
    .line 2077
    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 2092
    :goto_0
    return-wide v0

    .line 2079
    :cond_0
    const-string v0, "groups"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2080
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Group;->update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2081
    :cond_1
    const-string v0, "currency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2082
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2083
    :cond_2
    const-string v0, "transactions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2084
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2085
    :cond_3
    const-string v0, "reminders"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 2086
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Reminder;->update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2087
    :cond_4
    const-string v0, "templates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 2088
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Template;->update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2089
    :cond_5
    const-string v0, "payees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2090
    iget-object v0, p0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p2}, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->update(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 2092
    :cond_6
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public updateWidget(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 2963
    sget-object v20, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    const-string v21, "_updateWidget"

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    const-string v4, "000000000000"

    .line 2966
    .local v4, ZEROES:Ljava/lang/String;
    const-string v20, "TapPMTPrefs"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 2967
    .local v16, settings:Landroid/content/SharedPreferences;
    const-string v20, "widget_account"

    const-wide/16 v21, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2968
    .local v5, acc_id:J
    sget-object v20, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "show me account-->"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter$Account;->getAccountById(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v12

    .line 2971
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 2972
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2973
    const-string v20, "open_amt"

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v12

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    .line 2974
    .local v7, amount:D
    const-string v20, "acc_type"

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v12

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 2975
    const-wide/16 v20, 0x0

    sub-double v7, v20, v7

    .line 2977
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v20, v0

    const-string v21, "_id"

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object v0, v12

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/16 v23, 0x0

    invoke-static/range {v20 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->getBalanceByAccount(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)D

    move-result-wide v17

    .line 2978
    .local v17, total:D
    sget-object v20, Lcom/wareone/tappmt/PmtDbAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "total-->"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    add-double v10, v7, v17

    .line 2981
    .local v10, balance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/PmtDbAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v20, v0

    const-string v21, "currency"

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object v0, v12

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->getDigits(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v13

    .line 2982
    .local v13, digits:I
    const-string v15, "#,###,##0"

    .line 2983
    .local v15, pattern:Ljava/lang/String;
    if-lez v13, :cond_1

    .line 2984
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "000000000000"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2986
    :cond_1
    new-instance v14, Ljava/text/DecimalFormat;

    invoke-direct {v14, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2988
    .local v14, nf:Ljava/text/DecimalFormat;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    .line 2989
    .local v9, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v19, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f03003d

    invoke-direct/range {v19 .. v21}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2990
    .local v19, views:Landroid/widget/RemoteViews;
    const v20, 0x7f0c00a8

    const-string v21, "acc_name"

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object v0, v12

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2991
    const v20, 0x7f0c00a9

    invoke-virtual {v14, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2996
    new-instance v20, Landroid/content/ComponentName;

    .line 2997
    const-class v21, Lcom/wareone/tappmt/TapPMTWidgetProvider;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2996
    move-object v0, v9

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 2999
    .end local v7           #amount:D
    .end local v9           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v10           #balance:D
    .end local v13           #digits:I
    .end local v14           #nf:Ljava/text/DecimalFormat;
    .end local v15           #pattern:Ljava/lang/String;
    .end local v17           #total:D
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3001
    :cond_3
    return-void
.end method
