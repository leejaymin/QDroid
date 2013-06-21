.class public Lcom/qiip/arm/util/FileIO;
.super Ljava/lang/Object;
.source "FileIO.java"


# static fields
.field public static final QIIP_ID:Ljava/lang/String; = "qiip_id.txt"


# instance fields
.field et:Landroid/widget/EditText;

.field et1:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/qiip/arm/util/FileIO;->et:Landroid/widget/EditText;

    .line 13
    iput-object v0, p0, Lcom/qiip/arm/util/FileIO;->et1:Landroid/widget/EditText;

    .line 10
    return-void
.end method

.method public static getLoginSharedId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "aContext"

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 28
    .local v2, fLoginSharedId:Ljava/lang/String;
    :try_start_0
    const-string v5, "qiip_id.txt"

    invoke-virtual {p0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 29
    .local v4, fi:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v0, v5, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, data:[B
    move-object v3, v2

    .line 30
    .end local v2           #fLoginSharedId:Ljava/lang/String;
    .local v3, fLoginSharedId:Ljava/lang/String;
    :goto_0
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 32
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    move-object v2, v3

    .line 36
    .end local v0           #data:[B
    .end local v3           #fLoginSharedId:Ljava/lang/String;
    .end local v4           #fi:Ljava/io/FileInputStream;
    .restart local v2       #fLoginSharedId:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 31
    .end local v2           #fLoginSharedId:Ljava/lang/String;
    .restart local v0       #data:[B
    .restart local v3       #fLoginSharedId:Ljava/lang/String;
    .restart local v4       #fi:Ljava/io/FileInputStream;
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #fLoginSharedId:Ljava/lang/String;
    .restart local v2       #fLoginSharedId:Ljava/lang/String;
    move-object v3, v2

    .end local v2           #fLoginSharedId:Ljava/lang/String;
    .restart local v3       #fLoginSharedId:Ljava/lang/String;
    goto :goto_0

    .line 33
    .end local v0           #data:[B
    .end local v3           #fLoginSharedId:Ljava/lang/String;
    .end local v4           #fi:Ljava/io/FileInputStream;
    .restart local v2       #fLoginSharedId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 34
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const-string v5, "LOAD"

    const-string v6, "SUC : FAIL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 33
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #fLoginSharedId:Ljava/lang/String;
    .restart local v0       #data:[B
    .restart local v3       #fLoginSharedId:Ljava/lang/String;
    .restart local v4       #fi:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #fLoginSharedId:Ljava/lang/String;
    .restart local v2       #fLoginSharedId:Ljava/lang/String;
    goto :goto_2
.end method

.method public static setLoginSharedId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "aContext"
    .parameter "aID"

    .prologue
    .line 17
    :try_start_0
    const-string v1, "qiip_id.txt"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 18
    .local v0, fo:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 19
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .end local v0           #fo:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v1

    goto :goto_0
.end method
