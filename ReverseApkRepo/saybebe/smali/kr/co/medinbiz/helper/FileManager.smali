.class public Lkr/co/medinbiz/helper/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field public static final AUDIO_NAME:Ljava/lang/String; = "temp.3gp"

.field public static final BACKUP:Ljava/lang/String; = "BackUp"

.field public static final BACKUP_NAME:Ljava/lang/String; = "saybebe.csv"

.field public static final IMAGE_NAME:Ljava/lang/String; = "temp.jpg"

.field public static final PHOTOS:Ljava/lang/String; = "Photos"

.field public static final TEMPS:Ljava/lang/String; = "Temps"

.field public static final VIDEOS:Ljava/lang/String; = "Videos"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackUpDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "mContext"

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lkr/co/medinbiz/helper/FileManager;->makeDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "BackUp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDataBaseFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "mContext"

    .prologue
    .line 20
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21
    const-string v2, "/databases/DataBase.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method public static getPhotosDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "mContext"

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lkr/co/medinbiz/helper/FileManager;->makeDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Photos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTempDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "mContext"

    .prologue
    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lkr/co/medinbiz/helper/FileManager;->makeDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Temps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVideosDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "mContext"

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lkr/co/medinbiz/helper/FileManager;->makeDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Videos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeDir(Landroid/content/Context;)Ljava/io/File;
    .locals 7
    .parameter "mContext"

    .prologue
    .line 26
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 28
    sget v6, Lkr/co/medinbiz/R$string;->app_name:I

    .line 27
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v1, superDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 32
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v4, "Photos"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .local v0, photoDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 36
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "Videos"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .local v3, videoDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 44
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v4, "Temps"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v2, tempDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_3
    return-object v1
.end method
