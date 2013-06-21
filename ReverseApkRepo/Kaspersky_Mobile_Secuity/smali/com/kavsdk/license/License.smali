.class public Lcom/kavsdk/license/License;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/io/FileInputStream;

.field private static c:Ljava/io/FileOutputStream;

.field private static mLicenseContext:I

.field private static mStorageFdRead:Ljava/io/FileDescriptor;

.field private static mStorageFdWrite:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/kavsdk/license/License;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeStorageFDWrite()Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/kavsdk/license/License;->c:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    sget-object v0, Lcom/kavsdk/license/License;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/kavsdk/license/License;->c:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static initStorageFDRead()Z
    .locals 2

    .prologue
    .line 91
    :try_start_0
    sget-object v0, Lcom/kavsdk/license/License;->b:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/kavsdk/license/License;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 96
    :cond_0
    const/4 v0, 0x0

    const-string v1, "license.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 97
    sput-object v0, Lcom/kavsdk/license/License;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/kavsdk/license/License;->mStorageFdRead:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static initStorageFDWrite()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 63
    :try_start_0
    sget-object v1, Lcom/kavsdk/license/License;->c:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lcom/kavsdk/license/License;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 67
    :cond_0
    const/4 v1, 0x0

    const-string v2, "license.dat"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 69
    const/4 v1, 0x0

    const-string v2, "license.dat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 70
    sput-object v1, Lcom/kavsdk/license/License;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    sput-object v1, Lcom/kavsdk/license/License;->mStorageFdWrite:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 73
    :catch_0
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 78
    :catch_1
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
