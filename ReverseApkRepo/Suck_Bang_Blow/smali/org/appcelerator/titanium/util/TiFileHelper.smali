.class public Lorg/appcelerator/titanium/util/TiFileHelper;
.super Ljava/lang/Object;
.source "TiFileHelper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiFileHlpr"

.field private static final MACOSX_PREFIX:Ljava/lang/String; = "__MACOSX"

.field public static final RESOURCE_ROOT_ASSETS:Ljava/lang/String; = "file:///android_asset/Resources"

.field public static final SD_CARD_PREFIX:Ljava/lang/String; = "/sdcard/Ti.debug"

.field public static final TI_DIR:Ljava/lang/String; = "tiapp"

.field public static final TI_DIR_JS:Ljava/lang/String; = "tijs"

.field private static final TI_RESOURCE_PREFIX:Ljava/lang/String; = "ti:"

.field private static foundResourcePathCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static notFoundResourcePathCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static resourcePathCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static systemIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nph:Lorg/appcelerator/titanium/util/TiNinePatchHelper;

.field private softContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    .line 68
    new-instance v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->nph:Lorg/appcelerator/titanium/util/TiNinePatchHelper;

    .line 69
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    .line 75
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    .line 81
    :cond_1
    const-string v0, "tiapp"

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    .line 84
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_camera"

    const v3, 0x1080037

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_search"

    const v3, 0x108004f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_add"

    const v3, 0x1080033

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_delete"

    const v3, 0x108003c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_play"

    const v3, 0x1080024

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_ff"

    const v3, 0x1080021

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_pause"

    const v3, 0x1080023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_rew"

    const v3, 0x1080026

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_edit"

    const v3, 0x108003e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_close_clear_cancel"

    const v3, 0x1080038

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_save"

    const v3, 0x108004e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_help"

    const v3, 0x1080040

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_next"

    const v3, 0x1080022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_preferences"

    const v3, 0x1080049

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_previous"

    const v3, 0x1080025

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_revert"

    const v3, 0x108004c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_send"

    const v3, 0x1080050

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_share"

    const v3, 0x1080052

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_view"

    const v3, 0x1080057

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_zoom"

    const v3, 0x1080059

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_2
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRootDir(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    .locals 6
    .parameter "zis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    const-string v1, ""

    .line 680
    .local v1, root:Ljava/lang/String;
    const/4 v3, 0x0

    .line 681
    .local v3, ze:Ljava/util/zip/ZipEntry;
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 682
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 685
    const-string v4, "__MACOSX"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 688
    const-string v4, "tiapp.xml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 689
    const-string v4, "\\/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, segments:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 699
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #segments:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 693
    .restart local v0       #name:Ljava/lang/String;
    .restart local v2       #segments:[Ljava/lang/String;
    :cond_2
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_0
.end method

.method private getZipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "path"
    .parameter "report"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "path"
    .parameter "report"
    .parameter "checkForNinePatch"

    .prologue
    const-string v7, "TiFileHlpr"

    const-string v7, ".9.png"

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, d:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 260
    .local v6, is:Ljava/io/InputStream;
    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 261
    const-string v7, ".png"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 262
    const-string v7, ".9.png"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, apath:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".9.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 267
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v7}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 268
    if-eqz v6, :cond_0

    .line 269
    move-object p1, v0

    .line 306
    .end local v0           #apath:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 307
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v6

    .line 309
    :cond_1
    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->nph:Lorg/appcelerator/titanium/util/TiNinePatchHelper;

    invoke-virtual {v7, v1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->process(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 328
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 330
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 337
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local p0
    :cond_3
    :goto_2
    return-object v3

    .line 271
    .restart local v0       #apath:Ljava/lang/String;
    .restart local p0
    :catch_0
    move-exception v5

    .line 272
    .local v5, e:Ljava/io/IOException;
    :try_start_4
    sget-boolean v7, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v7, :cond_0

    .line 273
    const-string v7, "TiFileHlpr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "path not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 319
    .end local v0           #apath:Ljava/lang/String;
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 320
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_5
    const-string v7, "TiFileHlpr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz p2, :cond_4

    .line 322
    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    .line 323
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_4

    .line 328
    .end local v2           #context:Landroid/content/Context;
    :cond_4
    if-eqz v6, :cond_3

    .line 330
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 331
    :catch_2
    move-exception v7

    goto :goto_2

    .line 313
    .end local v5           #e:Ljava/io/IOException;
    .restart local p0
    :cond_5
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v6

    .line 314
    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 315
    .restart local v1       #b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 316
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .local v4, d:Landroid/graphics/drawable/Drawable;
    move-object v3, v4

    .end local v4           #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 328
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local p0
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_6

    .line 330
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 333
    :cond_6
    :goto_3
    throw v7

    .line 331
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local p0
    :catch_3
    move-exception v7

    goto :goto_2

    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local p0
    :catch_4
    move-exception v8

    goto :goto_3
.end method

.method private titaniumPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 666
    const-string v0, ""

    if-eq p1, v0, :cond_0

    const-string v0, "tiapp.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Resources"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private walkAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "am"
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    .local p3, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->titaniumPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 645
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, files:[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_2

    .line 647
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 648
    aget-object v2, v0, v1

    .line 649
    .local v2, newPath:Ljava/lang/String;
    move-object v3, p2

    .line 650
    .local v3, todo:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 655
    :goto_1
    invoke-direct {p0, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;->titaniumPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 657
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-direct {p0, p1, v3, p3}, Lorg/appcelerator/titanium/util/TiFileHelper;->walkAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 647
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :cond_1
    move-object v3, v2

    goto :goto_1

    .line 663
    .end local v0           #files:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #newPath:Ljava/lang/String;
    .end local v3           #todo:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private wipeDirectoryTree(Ljava/io/File;Ljava/util/SortedSet;)V
    .locals 7
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p2, dirs:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 625
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 626
    array-length v3, v1

    .line 627
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 628
    aget-object v0, v1, v2

    .line 629
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 630
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-direct {p0, v0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;Ljava/util/SortedSet;)V

    .line 627
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_0
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v4, :cond_1

    .line 634
    const-string v4, "TiFileHlpr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 640
    .end local v0           #f:Ljava/io/File;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_2
    return-void
.end method


# virtual methods
.method public deployFromAssets(Ljava/io/File;)V
    .locals 22
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    .line 418
    .local v8, ctx:Landroid/content/Context;
    if-eqz v8, :cond_6

    .line 419
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v17, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 421
    .local v4, am:Landroid/content/res/AssetManager;
    const-string v19, ""

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;->walkAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 424
    invoke-virtual/range {p0 .. p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;)V

    .line 427
    const/4 v5, 0x0

    .line 428
    .local v5, bis:Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 429
    .local v12, fos:Ljava/io/FileOutputStream;
    const/16 v19, 0x1fa0

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v7, v0

    .line 431
    .local v7, buf:[B
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 432
    .local v15, len:I
    const/4 v14, 0x0

    .local v14, i:I
    move-object v13, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local v13, fos:Ljava/io/FileOutputStream;
    move-object v6, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .local v6, bis:Ljava/io/BufferedInputStream;
    :goto_0
    if-ge v14, v15, :cond_5

    .line 433
    :try_start_1
    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 434
    .local v16, path:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v11, f:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 436
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    const/16 v20, 0x1fa0

    move-object v0, v5

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 437
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v10, Ljava/io/File;

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 438
    .local v10, df:Ljava/io/File;
    sget-boolean v19, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v19, :cond_0

    .line 439
    const-string v19, "TiFileHlpr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Copying to: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 443
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 444
    .local v18, read:I
    :goto_1
    :try_start_3
    invoke-virtual {v5, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 445
    const/16 v19, 0x0

    move-object v0, v12

    move-object v1, v7

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 459
    .end local v10           #df:Ljava/io/File;
    .end local v11           #f:Ljava/io/File;
    .end local v14           #i:I
    .end local v15           #len:I
    .end local v16           #path:Ljava/lang/String;
    .end local v18           #read:I
    :catchall_0
    move-exception v19

    :goto_2
    if-eqz v5, :cond_1

    .line 461
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 465
    :goto_3
    const/4 v5, 0x0

    .line 467
    :cond_1
    if-eqz v12, :cond_2

    .line 469
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 473
    :goto_4
    const/4 v12, 0x0

    :cond_2
    throw v19

    .line 448
    .restart local v10       #df:Ljava/io/File;
    .restart local v11       #f:Ljava/io/File;
    .restart local v14       #i:I
    .restart local v15       #len:I
    .restart local v16       #path:Ljava/lang/String;
    .restart local v18       #read:I
    :cond_3
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 449
    const/4 v5, 0x0

    .line 450
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 451
    const/4 v12, 0x0

    .line 432
    .end local v10           #df:Ljava/io/File;
    .end local v18           #read:I
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object v13, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v6, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 453
    :cond_4
    :try_start_7
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 454
    .local v9, d:Ljava/io/File;
    const-string v19, "TiFileHlpr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Creating directory: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 459
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #d:Ljava/io/File;
    .end local v11           #f:Ljava/io/File;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v16           #path:Ljava/lang/String;
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :cond_5
    if-eqz v6, :cond_7

    .line 461
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 465
    :goto_6
    const/4 v5, 0x0

    .line 467
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :goto_7
    if-eqz v13, :cond_6

    .line 469
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 473
    :goto_8
    const/4 v12, 0x0

    .line 477
    .end local v4           #am:Landroid/content/res/AssetManager;
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #buf:[B
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v14           #i:I
    .end local v15           #len:I
    .end local v17           #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    return-void

    .line 462
    .restart local v4       #am:Landroid/content/res/AssetManager;
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #buf:[B
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #i:I
    .restart local v15       #len:I
    .restart local v17       #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v19

    goto :goto_6

    .line 470
    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v19

    goto :goto_8

    .line 462
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v14           #i:I
    .end local v15           #len:I
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v20

    goto :goto_3

    .line 470
    :catch_3
    move-exception v20

    goto :goto_4

    .line 459
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #i:I
    .restart local v15       #len:I
    :catchall_1
    move-exception v19

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #f:Ljava/io/File;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #path:Ljava/lang/String;
    :catchall_2
    move-exception v19

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #f:Ljava/io/File;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v16           #path:Ljava/lang/String;
    .restart local v6       #bis:Ljava/io/BufferedInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :cond_7
    move-object v5, v6

    .end local v6           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    goto :goto_7
.end method

.method public deployFromZip(Ljava/io/File;Ljava/io/File;)V
    .locals 13
    .parameter "fname"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "TiFileHlpr"

    .line 482
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;)V

    .line 484
    const/4 v9, 0x0

    .line 485
    .local v9, zis:Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 486
    .local v8, ze:Ljava/util/zip/ZipEntry;
    const/16 v10, 0x1fa0

    new-array v0, v10, [B

    .line 490
    .local v0, buf:[B
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v10}, Lorg/appcelerator/titanium/util/TiFileHelper;->getZipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;

    move-result-object v9

    .line 491
    invoke-direct {p0, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;->getRootDir(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, root:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 493
    .local v7, rootLen:I
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 495
    sget-boolean v10, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v10, :cond_0

    .line 496
    const-string v10, "TiFileHlpr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Zip file root: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v10}, Lorg/appcelerator/titanium/util/TiFileHelper;->getZipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;

    move-result-object v9

    .line 501
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 502
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, name:Ljava/lang/String;
    const-string v10, "__MACOSX"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 504
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 544
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #root:Ljava/lang/String;
    .end local v7           #rootLen:I
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_1

    .line 546
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 549
    :cond_1
    :goto_1
    throw v10

    .line 508
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #root:Ljava/lang/String;
    .restart local v7       #rootLen:I
    :cond_2
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 511
    sget-boolean v10, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v10, :cond_3

    .line 512
    const-string v10, "TiFileHlpr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extracting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_3
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 515
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 516
    .local v1, d:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 517
    sget-boolean v10, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v10, :cond_4

    .line 518
    const-string v10, "TiFileHlpr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Created directory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v1           #d:Ljava/io/File;
    :cond_4
    :goto_2
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 522
    :cond_5
    const/4 v2, 0x0

    .line 524
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 525
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 526
    .local v5, read:I
    :goto_3
    :try_start_4
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_7

    .line 527
    const/4 v10, 0x0

    invoke-virtual {v3, v0, v10, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 530
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #read:I
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v2, :cond_6

    .line 532
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 535
    :cond_6
    :goto_5
    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 530
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #read:I
    :cond_7
    if-eqz v3, :cond_4

    .line 532
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 533
    :catch_0
    move-exception v10

    goto :goto_2

    .line 544
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #read:I
    :cond_8
    if-eqz v9, :cond_9

    .line 546
    :try_start_8
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 552
    :cond_9
    :goto_6
    return-void

    .line 533
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #name:Ljava/lang/String;
    :catch_1
    move-exception v11

    goto :goto_5

    .line 547
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #name:Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_6

    .end local v6           #root:Ljava/lang/String;
    .end local v7           #rootLen:I
    :catch_3
    move-exception v11

    goto/16 :goto_1

    .line 530
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #root:Ljava/lang/String;
    .restart local v7       #rootLen:I
    :catchall_2
    move-exception v10

    goto :goto_4
.end method

.method public getDataDirectory(Z)Ljava/io/File;
    .locals 5
    .parameter "privateStorage"

    .prologue
    .line 603
    const/4 v1, 0x0

    .line 604
    .local v1, f:Ljava/io/File;
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 605
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 607
    if-eqz p1, :cond_1

    .line 609
    const-string v3, "appdata"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 621
    :cond_0
    :goto_0
    return-object v1

    .line 613
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 614
    .local v2, storageDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #f:Ljava/io/File;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    .restart local v1       #f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 617
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public getResourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 396
    const-string v0, "file:///android_asset/Resources"

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->joinPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "dir"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    const/4 v1, 0x0

    .line 591
    .local v1, result:Ljava/io/File;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 592
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 594
    const-string v2, "TiFileHlpr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTempFile: Directory \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist. Call to File.createTempFile() will fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    const-string v2, "tia"

    invoke-static {v2, p2, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 598
    :cond_1
    return-object v1
.end method

.method public getTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 579
    .local v1, result:Ljava/io/File;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 581
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 584
    :cond_0
    return-object v1
.end method

.method public getTitaniumResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"
    .parameter "s"

    .prologue
    const-string v8, "TiFileHlpr"

    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->isTitaniumResource(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 354
    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, parts:[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 356
    const-string v6, "TiFileHlpr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "malformed titanium resource url, resource not loaded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v6, 0x0

    .line 391
    .end local v3           #parts:[Ljava/lang/String;
    :goto_0
    return-object v6

    .line 359
    .restart local v3       #parts:[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    aget-object v5, v3, v6

    .line 360
    .local v5, section:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v4, v3, v6

    .line 362
    .local v4, resid:Ljava/lang/String;
    const-string v6, "ti:"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 363
    const/4 v2, 0x0

    .line 365
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    const-class v6, Lorg/appcelerator/titanium/util/TiFileHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/org/appcelerator/titanium/res/drawable/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 366
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 370
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #resid:Ljava/lang/String;
    .end local v5           #section:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v6, v0

    .line 391
    goto :goto_0

    .line 368
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #parts:[Ljava/lang/String;
    .restart local v4       #resid:Ljava/lang/String;
    .restart local v5       #section:Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 370
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 373
    :cond_2
    :goto_2
    throw v6

    .line 376
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    const-string v6, "Sys"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 377
    sget-object v6, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 378
    .local v1, id:Ljava/lang/Integer;
    if-eqz v1, :cond_4

    .line 379
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 381
    :cond_4
    const-string v6, "TiFileHlpr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drawable not found for system id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 384
    .end local v1           #id:Ljava/lang/Integer;
    :cond_5
    const-string v6, "TiFileHlpr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown section identifier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 388
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #resid:Ljava/lang/String;
    .end local v5           #section:Ljava/lang/String;
    :cond_6
    const-string v6, "TiFileHlpr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring non titanium resource string id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #parts:[Ljava/lang/String;
    .restart local v4       #resid:Ljava/lang/String;
    .restart local v5       #section:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public isTitaniumResource(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, result:Z
    if-eqz p1, :cond_0

    const-string v1, "ti:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v0, 0x1

    .line 346
    :cond_0
    return v0
.end method

.method public joinPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pre"
    .parameter "post"

    .prologue
    const-string v2, "/"

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 404
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 406
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 409
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "tiContext"
    .parameter "path"
    .parameter "report"

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "path"
    .parameter "report"
    .parameter "checkForNinePatch"

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    invoke-direct {p0, p2, p3, p4}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 250
    :goto_0
    return-object v2

    .line 241
    :cond_0
    move-object v1, p2

    .line 242
    .local v1, url:Ljava/lang/String;
    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    invoke-virtual {p1, p2}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    :cond_1
    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 246
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 247
    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0, v1, p3, p4}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 27
    .parameter "path"
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v14, 0x0

    .line 121
    .local v14, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    .line 122
    .local v8, context:Landroid/content/Context;
    if-eqz v8, :cond_1

    .line 123
    invoke-virtual/range {p0 .. p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->isTitaniumResource(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 124
    const-string v23, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, parts:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 126
    const-string v23, "TiFileHlpr"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "malformed titanium resource url, resource not loaded: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v23, 0x0

    .line 223
    .end local v17           #parts:[Ljava/lang/String;
    :goto_0
    return-object v23

    .line 130
    .restart local v17       #parts:[Ljava/lang/String;
    :cond_0
    const/16 v23, 0x0

    aget-object v21, v17, v23

    .line 131
    .local v21, titanium:Ljava/lang/String;
    const/16 v23, 0x1

    aget-object v20, v17, v23

    .line 132
    .local v20, section:Ljava/lang/String;
    const/16 v23, 0x2

    aget-object v19, v17, v23

    .line 134
    .local v19, resid:Ljava/lang/String;
    const-string v23, "ti:"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 135
    const-class v23, Lorg/appcelerator/titanium/util/TiFileHelper;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "/org/appcelerator/titanium/res/drawable/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .end local v17           #parts:[Ljava/lang/String;
    .end local v19           #resid:Ljava/lang/String;
    .end local v20           #section:Ljava/lang/String;
    .end local v21           #titanium:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v23, v14

    .line 223
    goto :goto_0

    .line 136
    .restart local v17       #parts:[Ljava/lang/String;
    .restart local v19       #resid:Ljava/lang/String;
    .restart local v20       #section:Ljava/lang/String;
    .restart local v21       #titanium:Ljava/lang/String;
    :cond_2
    const-string v23, "Sys"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 137
    sget-object v23, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 138
    .local v13, id:Ljava/lang/Integer;
    if-eqz v13, :cond_3

    .line 139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v14

    goto :goto_1

    .line 141
    :cond_3
    const-string v23, "TiFileHlpr"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Drawable not found for system id: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    .end local v13           #id:Ljava/lang/Integer;
    :cond_4
    const-string v23, "TiFileHlpr"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown section identifier: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v17           #parts:[Ljava/lang/String;
    .end local v19           #resid:Ljava/lang/String;
    .end local v20           #section:Ljava/lang/String;
    .end local v21           #titanium:Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 147
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 148
    .local v22, u:Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v16

    .line 149
    .local v16, lis:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 151
    .local v5, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v23, 0x2000

    move-object v0, v6

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 152
    .end local v5           #bos:Ljava/io/ByteArrayOutputStream;
    .local v6, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v9, 0x0

    .line 153
    .local v9, count:I
    const/16 v23, 0x2000

    :try_start_1
    move/from16 v0, v23

    new-array v0, v0, [B

    move-object v7, v0

    .line 155
    .local v7, buf:[B
    :goto_2
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/16 v23, -0x1

    move v0, v9

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 156
    const/16 v23, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, v23

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 161
    .end local v7           #buf:[B
    .end local v14           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v23

    move-object/from16 v10, v23

    move-object v5, v6

    .line 163
    .end local v6           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #count:I
    .restart local v5       #bos:Ljava/io/ByteArrayOutputStream;
    .local v10, e:Ljava/io/IOException;
    :goto_3
    :try_start_2
    const-string v23, "TiFileHlpr"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Problem pulling image data from "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v23

    :goto_4
    if-eqz v16, :cond_6

    .line 168
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    const/16 v16, 0x0

    .line 174
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 176
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 177
    const/4 v5, 0x0

    .line 180
    :cond_7
    :goto_6
    throw v23

    .line 159
    .end local v5           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buf:[B
    .restart local v9       #count:I
    .restart local v14       #is:Ljava/io/InputStream;
    :cond_8
    :try_start_5
    new-instance v14, Ljava/io/ByteArrayInputStream;

    .end local v14           #is:Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 166
    .restart local v14       #is:Ljava/io/InputStream;
    if-eqz v16, :cond_9

    .line 168
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 169
    const/16 v16, 0x0

    .line 174
    :cond_9
    :goto_7
    if-eqz v6, :cond_13

    .line 176
    :try_start_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 177
    const/4 v5, 0x0

    .end local v6           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1

    .line 178
    .end local v5           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v23

    move-object v5, v6

    .line 180
    .end local v6           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1

    .line 183
    .end local v5           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buf:[B
    .end local v9           #count:I
    .end local v16           #lis:Ljava/io/InputStream;
    .end local v22           #u:Ljava/net/URL;
    :cond_a
    const-string v23, "file:///android_asset/Resources"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 184
    const-string v23, "file:///android_asset/"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v15

    .line 185
    .local v15, len:I
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 186
    const/4 v11, 0x0

    .line 188
    .local v11, found:Z
    sget-object v23, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 189
    const/4 v11, 0x1

    .line 209
    :cond_b
    :goto_8
    if-eqz v11, :cond_1

    .line 210
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    goto/16 :goto_1

    .line 190
    :cond_c
    sget-object v23, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 191
    const/16 v23, 0x0

    const-string v24, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, base:Ljava/lang/String;
    sget-object v23, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    monitor-enter v23

    .line 194
    :try_start_8
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_e

    .line 195
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 196
    .local v18, paths:[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    move v0, v12

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 197
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x2f

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v18, v12

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 199
    :cond_d
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 201
    const/4 v11, 0x1

    .line 204
    .end local v12           #i:I
    .end local v18           #paths:[Ljava/lang/String;
    :cond_e
    if-nez v11, :cond_f

    .line 205
    sget-object v24, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_f
    monitor-exit v23

    goto/16 :goto_8

    :catchall_1
    move-exception v24

    monitor-exit v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v24

    .line 212
    .end local v4           #base:Ljava/lang/String;
    .end local v11           #found:Z
    .end local v15           #len:I
    :cond_10
    const-string v23, "/sdcard/Ti.debug"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 213
    new-instance v14, Ljava/io/FileInputStream;

    .end local v14           #is:Ljava/io/InputStream;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v14       #is:Ljava/io/InputStream;
    goto/16 :goto_1

    .line 214
    :cond_11
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 215
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v22       #u:Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v14

    .line 217
    goto/16 :goto_1

    .line 218
    .end local v22           #u:Ljava/net/URL;
    :cond_12
    const-string v23, "Resources"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;->joinPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    goto/16 :goto_1

    .line 170
    .restart local v6       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buf:[B
    .restart local v9       #count:I
    .restart local v16       #lis:Ljava/io/InputStream;
    .restart local v22       #u:Ljava/net/URL;
    :catch_2
    move-exception v23

    goto/16 :goto_7

    .end local v6           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buf:[B
    .end local v9           #count:I
    .end local v14           #is:Ljava/io/InputStream;
    .restart local v5       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v24

    goto/16 :goto_5

    .line 178
    :catch_4
    move-exception v24

    goto/16 :goto_6

    .line 166
    .end local v5           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #count:I
    :catchall_2
    move-exception v23

    move-object v5, v6

    .end local v6           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .line 161
    .end local v9           #count:I
    .restart local v14       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v23

    move-object/from16 v10, v23

    goto/16 :goto_3

    .end local v5           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buf:[B
    .restart local v9       #count:I
    :cond_13
    move-object v5, v6

    .end local v6           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #bos:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1
.end method

.method public wipeDirectoryTree(Ljava/io/File;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 556
    new-instance v1, Ljava/util/TreeSet;

    new-instance v4, Lorg/appcelerator/titanium/util/TiFileHelper$1;

    invoke-direct {v4, p0}, Lorg/appcelerator/titanium/util/TiFileHelper$1;-><init>(Lorg/appcelerator/titanium/util/TiFileHelper;)V

    invoke-direct {v1, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 562
    .local v1, dirs:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;Ljava/util/SortedSet;)V

    .line 564
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 565
    .local v0, d:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 567
    .local v3, fn:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v2, f:Ljava/io/File;
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiFileHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 569
    const-string v4, "TiFileHlpr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting Dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 573
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fn:Ljava/lang/String;
    :cond_1
    return-void
.end method
