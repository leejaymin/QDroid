.class public Lcom/jellybus/fx_sub/PictureController;
.super Ljava/lang/Object;
.source "PictureController.java"


# static fields
.field public static final HEIGHT:I = 0x2

.field public static final SQUARE:I = 0x3

.field public static final WIDTH:I = 0x1

.field public static compare_height:I

.field public static compare_width:I

.field public static degree:I

.field public static flurry_filter_count:I

.field public static flurry_redo_count:I

.field public static flurry_undo_count:I

.field public static hasBitmap:Z

.field public static height:I

.field public static id:J

.field public static isAllow:Z

.field public static isFavoriteChange:Z

.field public static isSameSize:Z

.field public static market:I

.field public static options:Landroid/graphics/BitmapFactory$Options;

.field public static path:Ljava/lang/String;

.field public static pictureURI:Landroid/net/Uri;

.field public static preview_height:I

.field public static preview_width:I

.field public static reset_height:I

.field public static reset_width:I

.field public static thumb_h:I

.field public static thumb_w:I

.field public static viewType:I

.field public static width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sput v1, Lcom/jellybus/fx_sub/PictureController;->degree:I

    .line 39
    sput v1, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    .line 47
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    .line 328
    sput v1, Lcom/jellybus/fx_sub/PictureController;->flurry_filter_count:I

    .line 329
    sput v1, Lcom/jellybus/fx_sub/PictureController;->flurry_undo_count:I

    .line 330
    sput v1, Lcom/jellybus/fx_sub/PictureController;->flurry_redo_count:I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOriginalSize()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 57
    :try_start_0
    sget-object v3, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 58
    sget-object v3, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 59
    sget-object v3, Lcom/jellybus/fx_sub/PictureController;->path:Ljava/lang/String;

    sget-object v4, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 60
    sget-object v3, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sput v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 61
    sget-object v3, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sput v3, Lcom/jellybus/fx_sub/PictureController;->height:I

    .line 62
    sget v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->height:I

    mul-int/2addr v3, v4

    const v4, 0x4e2000

    if-le v3, v4, :cond_0

    .line 63
    sget-object v3, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x2

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 64
    sget v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    div-int/lit8 v3, v3, 0x2

    sput v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 65
    sget v3, Lcom/jellybus/fx_sub/PictureController;->height:I

    div-int/lit8 v3, v3, 0x2

    sput v3, Lcom/jellybus/fx_sub/PictureController;->height:I

    .line 67
    :cond_0
    sget-object v3, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 68
    sget-object v3, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    sget v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v3, v4}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 71
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 72
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "test"

    const-string v3, "size \ud68d\ub4dd \uc2e4\ud328"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public static getResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"
    .parameter "str"

    .prologue
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":drawable/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, mString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    return-object v0
.end method

.method public static getSizeList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x400

    const/high16 v9, 0x4500

    const/high16 v7, 0x4480

    const/high16 v6, 0x4420

    const/4 v8, 0x1

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v3, size:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    sget v5, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    if-ne v5, v8, :cond_1

    .line 141
    sget v1, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 149
    .local v1, max_size:I
    :goto_0
    if-lt v1, v10, :cond_3

    .line 150
    sget v5, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    if-ne v5, v8, :cond_2

    .line 151
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    int-to-float v5, v5

    div-float v2, v6, v5

    .line 152
    .local v2, ratio:F
    const/16 v4, 0x280

    .line 153
    .local v4, w:I
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v0, v5

    .line 154
    .local v0, h:I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    int-to-float v5, v5

    div-float v2, v7, v5

    .line 157
    const/16 v4, 0x400

    .line 158
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v0, v5

    .line 159
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v0           #h:I
    .end local v2           #ratio:F
    .end local v4           #w:I
    :goto_1
    const/16 v5, 0x800

    if-lt v1, v5, :cond_5

    .line 177
    sget v5, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    if-ne v5, v8, :cond_4

    .line 178
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    int-to-float v5, v5

    div-float v2, v9, v5

    .line 179
    .restart local v2       #ratio:F
    const/16 v4, 0x800

    .line 180
    .restart local v4       #w:I
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v0, v5

    .line 181
    .restart local v0       #h:I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v0           #h:I
    .end local v2           #ratio:F
    .end local v4           #w:I
    :cond_0
    :goto_2
    return-object v3

    .line 143
    .end local v1           #max_size:I
    :cond_1
    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    .restart local v1       #max_size:I
    goto :goto_0

    .line 161
    :cond_2
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    int-to-float v5, v5

    div-float v2, v6, v5

    .line 162
    .restart local v2       #ratio:F
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 163
    .restart local v4       #w:I
    const/16 v0, 0x280

    .line 164
    .restart local v0       #h:I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    int-to-float v5, v5

    div-float v2, v7, v5

    .line 167
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 168
    const/16 v0, 0x400

    .line 169
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    .end local v0           #h:I
    .end local v2           #ratio:F
    .end local v4           #w:I
    :cond_3
    new-instance v5, Landroid/graphics/Point;

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    :cond_4
    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    int-to-float v5, v5

    div-float v2, v9, v5

    .line 184
    .restart local v2       #ratio:F
    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 185
    .restart local v4       #w:I
    const/16 v0, 0x800

    .line 186
    .restart local v0       #h:I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    .end local v0           #h:I
    .end local v2           #ratio:F
    .end local v4           #w:I
    :cond_5
    if-le v1, v10, :cond_0

    const/16 v5, 0x800

    if-ge v1, v5, :cond_0

    .line 189
    new-instance v5, Landroid/graphics/Point;

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static resetPictureInfo()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 305
    sput-object v0, Lcom/jellybus/fx_sub/PictureController;->pictureURI:Landroid/net/Uri;

    .line 306
    sput-object v0, Lcom/jellybus/fx_sub/PictureController;->path:Ljava/lang/String;

    .line 307
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jellybus/fx_sub/PictureController;->id:J

    .line 309
    sput v2, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 310
    sput v2, Lcom/jellybus/fx_sub/PictureController;->height:I

    .line 311
    sput v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    .line 312
    sput v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    .line 313
    sput v2, Lcom/jellybus/fx_sub/PictureController;->degree:I

    .line 314
    sput v2, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    .line 315
    return-void
.end method

.method private static setBasicInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 256
    sget v2, Lcom/jellybus/fx_sub/PictureController;->degree:I

    if-eqz v2, :cond_3

    .line 257
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 258
    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 259
    .local v0, h:I
    invoke-static {p0}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 260
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 261
    sget v2, Lcom/jellybus/fx_sub/PictureController;->degree:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    .line 262
    invoke-static {v1, v0}, Lcom/jellybus/fx/Juliet;->rotate90Index(II)V

    .line 263
    sget v2, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    invoke-static {v2, v3}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 264
    sget v2, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    invoke-static {v2, v3}, Lcom/jellybus/fx_sub/PictureController;->sizeChange(II)V

    .line 265
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 266
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 280
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    const/4 p0, 0x0

    .line 282
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 283
    invoke-static {v1, v0, p0}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 284
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 287
    :goto_1
    return-object p0

    .line 268
    :cond_1
    sget v2, Lcom/jellybus/fx_sub/PictureController;->degree:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_2

    .line 269
    invoke-static {v1, v0}, Lcom/jellybus/fx/Juliet;->rotate180Index(II)V

    .line 270
    sget v2, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v2, v3}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 271
    sget v2, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v2, v3}, Lcom/jellybus/fx_sub/PictureController;->sizeChange(II)V

    goto :goto_0

    .line 273
    :cond_2
    sget v2, Lcom/jellybus/fx_sub/PictureController;->degree:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    .line 274
    invoke-static {v1, v0}, Lcom/jellybus/fx/Juliet;->rotate270Index(II)V

    .line 275
    sget v2, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    invoke-static {v2, v3}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 276
    sget v2, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    invoke-static {v2, v3}, Lcom/jellybus/fx_sub/PictureController;->sizeChange(II)V

    .line 277
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 278
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 287
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_3
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static setPictureDegree(Ljava/lang/String;)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 292
    if-eqz p0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/jellybus/fx_sub/PictureController;->degree:I

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    const-string v0, "90"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    const/16 v0, 0x5a

    sput v0, Lcom/jellybus/fx_sub/PictureController;->degree:I

    goto :goto_0

    .line 296
    :cond_3
    const-string v0, "180"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    const/16 v0, 0xb4

    sput v0, Lcom/jellybus/fx_sub/PictureController;->degree:I

    goto :goto_0

    .line 298
    :cond_4
    const-string v0, "270"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    const/16 v0, 0x10e

    sput v0, Lcom/jellybus/fx_sub/PictureController;->degree:I

    goto :goto_0
.end method

.method public static setPictureType(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 80
    move v1, p0

    .line 81
    .local v1, w:I
    move v0, p1

    .line 82
    .local v0, h:I
    if-le v1, v0, :cond_0

    .line 83
    const/4 v2, 0x1

    sput v2, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    if-le v0, v1, :cond_1

    .line 85
    const/4 v2, 0x2

    sput v2, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    goto :goto_0

    .line 87
    :cond_1
    const/4 v2, 0x3

    sput v2, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    goto :goto_0
.end method

.method public static setPreviewSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x4420

    const/16 v2, 0x280

    .line 93
    if-ge p0, v2, :cond_0

    if-ge p1, v2, :cond_0

    .line 94
    sput p0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    .line 95
    sput p1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    .line 96
    sput-boolean v4, Lcom/jellybus/fx_sub/PictureController;->isSameSize:Z

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    sget v1, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    if-ne v1, v4, :cond_1

    .line 100
    int-to-float v1, p0

    div-float v0, v3, v1

    .line 101
    .local v0, ratio:F
    sput v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    .line 102
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    .line 108
    :goto_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jellybus/fx_sub/PictureController;->isSameSize:Z

    goto :goto_0

    .line 104
    .end local v0           #ratio:F
    :cond_1
    int-to-float v1, p1

    div-float v0, v3, v1

    .line 105
    .restart local v0       #ratio:F
    int-to-float v1, p0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    .line 106
    sput v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    goto :goto_1
.end method

.method public static setResizeBitmap(ZLandroid/graphics/Bitmap;)V
    .locals 4
    .parameter "isReset"
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/jellybus/fx_sub/PictureController;->width:I

    if-eq v0, v1, :cond_2

    .line 199
    if-eqz p0, :cond_0

    .line 200
    sget v0, Lcom/jellybus/fx_sub/PictureController;->reset_width:I

    sput v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 201
    sget v0, Lcom/jellybus/fx_sub/PictureController;->reset_height:I

    sput v0, Lcom/jellybus/fx_sub/PictureController;->height:I

    .line 204
    :cond_0
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 205
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx_sub/PictureController;->setPreviewSize(II)V

    .line 206
    invoke-static {}, Lcom/jellybus/fx_sub/PictureController;->setThumbnailSize()V

    .line 209
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 211
    sget v0, Lcom/jellybus/fx_sub/PictureController;->degree:I

    if-eqz v0, :cond_1

    .line 212
    invoke-static {p1}, Lcom/jellybus/fx_sub/PictureController;->setBasicInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 213
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v3, v0, v1, p1}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 214
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v2, v0, v1, p1}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 220
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    const/4 p1, 0x0

    .line 251
    :goto_1
    return-void

    .line 216
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v3, v0, v1, p1}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 217
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v2, v0, v1, p1}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 225
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 226
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx_sub/PictureController;->setPreviewSize(II)V

    .line 227
    invoke-static {}, Lcom/jellybus/fx_sub/PictureController;->setThumbnailSize()V

    .line 228
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->width:I

    if-ne v0, v1, :cond_4

    .line 229
    sget v0, Lcom/jellybus/fx_sub/PictureController;->degree:I

    if-nez v0, :cond_3

    .line 230
    invoke-static {p1}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 231
    invoke-static {p1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 248
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    const/4 p1, 0x0

    goto :goto_1

    .line 233
    :cond_3
    invoke-static {p1}, Lcom/jellybus/fx_sub/PictureController;->setBasicInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 234
    invoke-static {p1}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 235
    invoke-static {p1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 239
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->degree:I

    if-nez v0, :cond_5

    .line 240
    invoke-static {p1}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 241
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v2, v0, v1, p1}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 243
    :cond_5
    invoke-static {p1}, Lcom/jellybus/fx_sub/PictureController;->setBasicInfo(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 244
    invoke-static {p1}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 245
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v2, v0, v1, p1}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public static setThumbnailSize()V
    .locals 4

    .prologue
    const/high16 v3, 0x4300

    const/16 v2, 0x80

    .line 114
    sget v0, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    int-to-float v0, v0

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/jellybus/fx_sub/PictureController;->thumb_w:I

    .line 116
    sput v2, Lcom/jellybus/fx_sub/PictureController;->thumb_h:I

    .line 124
    :goto_0
    return-void

    .line 117
    :cond_0
    sget v0, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 118
    sput v2, Lcom/jellybus/fx_sub/PictureController;->thumb_w:I

    .line 119
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    int-to-float v0, v0

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/jellybus/fx_sub/PictureController;->thumb_h:I

    goto :goto_0

    .line 121
    :cond_1
    sput v2, Lcom/jellybus/fx_sub/PictureController;->thumb_w:I

    .line 122
    sput v2, Lcom/jellybus/fx_sub/PictureController;->thumb_h:I

    goto :goto_0
.end method

.method public static sizeChange(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 129
    sput p0, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 130
    sput p1, Lcom/jellybus/fx_sub/PictureController;->height:I

    .line 131
    invoke-static {p0, p1}, Lcom/jellybus/fx_sub/PictureController;->setPreviewSize(II)V

    .line 132
    invoke-static {}, Lcom/jellybus/fx_sub/PictureController;->setThumbnailSize()V

    .line 133
    return-void
.end method
