.class public Lcom/jellybus/fx_sub/UndoRedo;
.super Ljava/lang/Object;
.source "UndoRedo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx_sub/UndoRedo$StateList;
    }
.end annotation


# static fields
.field public static currentIndex:I

.field private static final imgPath:Ljava/lang/String;

.field public static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jellybus/fx_sub/UndoRedo$StateList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/PicsPlay Pro/.temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jellybus/fx_sub/UndoRedo;->imgPath:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCurrentIndex(Z)Z
    .locals 4
    .parameter "isUndo"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    if-eqz p1, :cond_1

    .line 122
    sget v2, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    if-eqz v2, :cond_0

    .line 123
    sget v1, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    .line 133
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :cond_1
    sget v2, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    sget-object v3, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 130
    sget v1, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method public checkListSize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    sget-object v0, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jellybus/fx_sub/UndoRedo;->removeFile(Landroid/content/Context;I)V

    .line 108
    :cond_0
    return-void
.end method

.method public getSize(I)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter "index"

    .prologue
    const/16 v3, 0x960

    const/16 v2, 0x4b0

    .line 140
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget v1, v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;->width:I

    if-gt v1, v2, :cond_0

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget v1, v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;->height:I

    if-le v1, v2, :cond_1

    .line 142
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 143
    :cond_1
    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget v1, v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;->width:I

    if-gt v1, v3, :cond_2

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget v1, v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;->height:I

    if-le v1, v3, :cond_3

    .line 144
    :cond_2
    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 145
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 146
    return-object v0
.end method

.method public removeFile(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "index"

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget-object v1, v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, file:Ljava/io/File;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_DISPLAY_NAME=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public removeFolder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "path"

    .prologue
    .line 77
    if-nez p2, :cond_0

    .line 78
    sget-object p2, Lcom/jellybus/fx_sub/UndoRedo;->imgPath:Ljava/lang/String;

    .line 80
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 83
    .local v1, childFileList:[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_2

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 93
    .end local v1           #childFileList:[Ljava/io/File;
    :cond_1
    return-void

    .line 83
    .restart local v1       #childFileList:[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v3

    .line 84
    .local v0, childFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/jellybus/fx_sub/UndoRedo;->removeFolder(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_DISPLAY_NAME=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public removeRedoList(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 112
    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget v2, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    if-eq v1, v2, :cond_0

    .line 113
    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    sget v1, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    if-gt v0, v1, :cond_1

    .line 117
    .end local v0           #i:I
    :cond_0
    return-void

    .line 114
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/jellybus/fx_sub/UndoRedo;->removeFile(Landroid/content/Context;I)V

    .line 113
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public resetImage(I)V
    .locals 5
    .parameter "startIndex"

    .prologue
    .line 151
    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    if-eq p1, v2, :cond_0

    .line 152
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 154
    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    sget v3, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget-object v2, v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;->path:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    sget v3, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget v2, v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;->width:I

    sput v2, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 157
    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    sget v3, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget v2, v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;->height:I

    sput v2, Lcom/jellybus/fx_sub/PictureController;->height:I

    .line 158
    sget v2, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v2, v3}, Lcom/jellybus/fx_sub/PictureController;->sizeChange(II)V

    .line 160
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 161
    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 162
    const/4 v2, 0x1

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v2, v3, v4, v0}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-void
.end method

.method public saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 19
    .parameter "context"
    .parameter "bm"
    .parameter "function"

    .prologue
    .line 33
    const-string v1, "temp_%d.jpg"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 35
    .local v12, imgName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 36
    .local v13, outputStream:Ljava/io/OutputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->imgPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, filePath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->imgPath:Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v8, dir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_0
    :try_start_0
    new-instance v10, Ljava/io/File;

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->imgPath:Ljava/lang/String;

    invoke-direct {v10, v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v10, file:Ljava/io/File;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .local v14, outputStream:Ljava/io/OutputStream;
    if-eqz p2, :cond_1

    .line 46
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 48
    :cond_1
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v13, v14

    .line 55
    .end local v10           #file:Ljava/io/File;
    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    :goto_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->imgPath:Ljava/lang/String;

    invoke-direct {v1, v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lt3SkSFUAg5/gVgwes9xi;->We9PZOIwlopjNt6Lqz(Ljava/io/File;)J

    move-result-wide v15

    .line 57
    .local v15, size:J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 58
    .local v7, cr:Landroid/content/ContentResolver;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v17, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "title"

    const-string v2, "PicsPlay Pro"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "_display_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "orientation"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v1, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    const-string v1, "_size"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    const-string v1, "vnd.android.cursor.dir/image"

    const-string v2, "Jellybus"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 70
    invoke-virtual/range {p0 .. p1}, Lcom/jellybus/fx_sub/UndoRedo;->checkListSize(Landroid/content/Context;)V

    .line 71
    sget-object v18, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    new-instance v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jellybus/fx_sub/UndoRedo$StateList;-><init>(Lcom/jellybus/fx_sub/UndoRedo;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    .line 73
    return-void

    .line 49
    .end local v7           #cr:Landroid/content/ContentResolver;
    .end local v15           #size:J
    .end local v17           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 50
    .local v9, fe:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v1, "test"

    const-string v2, "file not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 51
    .end local v9           #fe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v11

    .line 52
    .local v11, ie:Ljava/io/IOException;
    :goto_2
    const-string v1, "test"

    const-string v2, "IO"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 51
    .end local v11           #ie:Ljava/io/IOException;
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .restart local v10       #file:Ljava/io/File;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v11

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 49
    .end local v13           #outputStream:Ljava/io/OutputStream;
    .restart local v14       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v9

    move-object v13, v14

    .end local v14           #outputStream:Ljava/io/OutputStream;
    .restart local v13       #outputStream:Ljava/io/OutputStream;
    goto :goto_1
.end method
