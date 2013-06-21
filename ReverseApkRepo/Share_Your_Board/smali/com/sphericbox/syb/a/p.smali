.class public final Lcom/sphericbox/syb/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aX:[I

.field private aY:[I

.field private final aZ:Landroid/graphics/Bitmap;

.field private final ba:Landroid/graphics/Canvas;

.field private bb:Lcom/sphericbox/syb/a/o;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x1c2

    const/16 v1, 0x12c

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    .line 26
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    .line 31
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    return-void
.end method

.method private a(Lcom/sphericbox/syb/a/l;)V
    .locals 6
    .parameter

    .prologue
    const/16 v1, 0x384

    const/16 v2, 0x258

    const-string v5, "NativeHeapFreeSize: "

    const-string v3, "NativeHeapAllocatedSize: "

    const-string v4, "Facade"

    .line 102
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->aX:[I

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    iget v0, p1, Lcom/sphericbox/syb/a/l;->width:I

    if-le v0, v1, :cond_1

    iget v0, p1, Lcom/sphericbox/syb/a/l;->width:I

    .line 105
    :goto_0
    iget v1, p1, Lcom/sphericbox/syb/a/l;->height:I

    if-le v1, v2, :cond_2

    iget v1, p1, Lcom/sphericbox/syb/a/l;->height:I

    .line 106
    :goto_1
    mul-int v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sphericbox/syb/a/p;->aX:[I

    .line 107
    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sphericbox/syb/a/p;->aY:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const-string v0, "Facade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeHeapAllocatedSize: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "Facade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeHeapFreeSize: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v0, "Facade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeHeapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 104
    goto :goto_0

    :cond_2
    move v1, v2

    .line 105
    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    const-string v1, "Facade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeHeapAllocatedSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v1, "Facade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeHeapFreeSize: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v1, "Facade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeHeapSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private a(Lcom/sphericbox/syb/a/l;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 169
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 170
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p1, Lcom/sphericbox/syb/a/l;->width:I

    int-to-float v3, v3

    iget v4, p1, Lcom/sphericbox/syb/a/l;->height:I

    int-to-float v4, v4

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 173
    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 174
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->aX:[I

    iget v3, p1, Lcom/sphericbox/syb/a/l;->width:I

    iget v6, p1, Lcom/sphericbox/syb/a/l;->width:I

    iget v7, p1, Lcom/sphericbox/syb/a/l;->height:I

    const/4 v9, 0x0

    move v4, v2

    move v5, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 175
    return-void
.end method

.method private a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Landroid/graphics/Bitmap;Lcom/sphericbox/syb/a/l;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 118
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    const/16 v3, 0xff

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 122
    invoke-direct {p0, p3, v0, v1}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/a/l;II)V

    .line 123
    invoke-interface {p1, p2}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->previewUpdated(Landroid/graphics/Bitmap;)V

    .line 124
    return-void
.end method

.method private a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Lcom/sphericbox/syb/a/l;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x12b

    const/16 v7, 0x12c

    const/16 v3, 0x1c2

    const/4 v2, 0x0

    const-string v10, "Facade"

    .line 127
    const-string v0, "Facade"

    const-string v0, "detect edges"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v8, Lcom/sphericbox/syb/a;

    invoke-direct {v8}, Lcom/sphericbox/syb/a;-><init>()V

    .line 130
    invoke-direct {p0, p2, v3, v7}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/a/l;II)V

    .line 131
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->aY:[I

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 133
    iget v6, p2, Lcom/sphericbox/syb/a/l;->width:I

    .line 134
    iget v9, p2, Lcom/sphericbox/syb/a/l;->height:I

    .line 136
    new-instance v0, Lcom/sphericbox/syb/a/l;

    invoke-direct {v0, v3, v7}, Lcom/sphericbox/syb/a/l;-><init>(II)V

    .line 137
    new-instance v1, Lcom/sphericbox/syb/a/o;

    new-instance v3, Lcom/sphericbox/syb/a/n;

    invoke-direct {v3, v2, v2}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    new-instance v4, Lcom/sphericbox/syb/a/n;

    const/16 v5, 0x1c1

    invoke-direct {v4, v5, v2}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    new-instance v5, Lcom/sphericbox/syb/a/n;

    invoke-direct {v5, v2, v11}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    new-instance v2, Lcom/sphericbox/syb/a/n;

    const/16 v7, 0x1c1

    invoke-direct {v2, v7, v11}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/sphericbox/syb/a/o;-><init>(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;)V

    iput-object v1, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    .line 142
    new-instance v1, Lcom/sphericbox/syb/a/k;

    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    invoke-direct {v1, v2}, Lcom/sphericbox/syb/a/k;-><init>(Lcom/sphericbox/syb/a/o;)V

    .line 143
    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->aY:[I

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/sphericbox/syb/a/h;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[I[ILcom/sphericbox/syb/a/l;)V

    .line 144
    const-string v0, "Facade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quad found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 147
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    const/high16 v0, 0x4080

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    const/high16 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 151
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v1, v1, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iget v1, v1, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v2, v2, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iget v2, v2, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, v3, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iget v3, v3, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v4, v4, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iget v4, v4, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v1, v1, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iget v1, v1, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v2, v2, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iget v2, v2, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, v3, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iget v3, v3, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v4, v4, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iget v4, v4, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v1, v1, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iget v1, v1, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v2, v2, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iget v2, v2, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, v3, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iget v3, v3, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v4, v4, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iget v4, v4, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 154
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->ba:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v1, v1, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iget v1, v1, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v2, v2, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iget v2, v2, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, v3, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iget v3, v3, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v4, v4, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iget v4, v4, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    int-to-float v0, v6

    const/high16 v1, 0x43e1

    div-float/2addr v0, v1

    .line 157
    int-to-float v1, v9

    const/high16 v2, 0x4396

    div-float/2addr v1, v2

    .line 158
    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, v3, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iget v3, v3, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v4, v4, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iget v4, v4, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sphericbox/syb/a/o;->d(II)V

    .line 159
    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, v3, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iget v3, v3, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v4, v4, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iget v4, v4, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sphericbox/syb/a/o;->e(II)V

    .line 160
    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, v3, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iget v3, v3, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v4, v4, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iget v4, v4, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sphericbox/syb/a/o;->b(II)V

    .line 161
    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, v3, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iget v3, v3, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    iget-object v3, v3, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iget v3, v3, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/sphericbox/syb/a/o;->c(II)V

    .line 163
    const-string v0, "Facade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edges detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method private a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Lcom/sphericbox/syb/a/l;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v4, "Facade"

    .line 178
    const-string v0, "Facade"

    const-string v0, "fix geometry"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Lcom/sphericbox/syb/a;

    invoke-direct {v0}, Lcom/sphericbox/syb/a;-><init>()V

    .line 180
    new-instance v1, Lcom/sphericbox/syb/a/i;

    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    invoke-direct {v1, v2, p3}, Lcom/sphericbox/syb/a/i;-><init>(Lcom/sphericbox/syb/a/o;I)V

    .line 181
    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->aX:[I

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->aY:[I

    invoke-interface {v1, p1, v2, v3, p2}, Lcom/sphericbox/syb/a/h;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[I[ILcom/sphericbox/syb/a/l;)V

    .line 182
    const-string v1, "Facade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geometry correction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method


# virtual methods
.method public B()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sphericbox/syb/a/p;->aX:[I

    .line 36
    iput-object v0, p0, Lcom/sphericbox/syb/a/p;->aY:[I

    .line 37
    iput-object v0, p0, Lcom/sphericbox/syb/a/p;->bb:Lcom/sphericbox/syb/a/o;

    .line 38
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 39
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 40
    return-void
.end method

.method public C()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Landroid/graphics/Bitmap;ZZZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 53
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 55
    new-instance v8, Lcom/sphericbox/syb/a/l;

    invoke-direct {v8, v3, v7}, Lcom/sphericbox/syb/a/l;-><init>(II)V

    .line 56
    const-string v0, "Facade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dimension set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "Facade"

    const-string v1, "allocate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0, v8}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/a/l;)V

    .line 60
    const-string v0, "Facade"

    const-string v1, "allocated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->aX:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 63
    const-string v0, "Facade"

    const-string v1, "pixels received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    const-string v0, "Facade"

    const-string v1, "bitmap recycled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v8}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Landroid/graphics/Bitmap;Lcom/sphericbox/syb/a/l;)V

    .line 70
    const-string v0, "Facade"

    const-string v1, "preview updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p0, p1, v8}, Lcom/sphericbox/syb/a/p;->c(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Lcom/sphericbox/syb/a/l;)V

    .line 74
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v8}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Landroid/graphics/Bitmap;Lcom/sphericbox/syb/a/l;)V

    .line 77
    :cond_0
    if-eqz p4, :cond_1

    .line 78
    invoke-direct {p0, p1, v8}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Lcom/sphericbox/syb/a/l;)V

    .line 79
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->previewUpdated(Landroid/graphics/Bitmap;)V

    .line 81
    if-eqz p5, :cond_3

    const/high16 v0, 0x100

    :goto_0
    invoke-direct {p0, p1, v8, v0}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Lcom/sphericbox/syb/a/l;I)V

    .line 82
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v8}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Landroid/graphics/Bitmap;Lcom/sphericbox/syb/a/l;)V

    .line 85
    :cond_1
    if-eqz p5, :cond_2

    .line 86
    invoke-virtual {p0, p1, v8}, Lcom/sphericbox/syb/a/p;->b(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Lcom/sphericbox/syb/a/l;)V

    .line 87
    iget-object v0, p0, Lcom/sphericbox/syb/a/p;->aZ:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v8}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Landroid/graphics/Bitmap;Lcom/sphericbox/syb/a/l;)V

    .line 90
    :cond_2
    iget v0, v8, Lcom/sphericbox/syb/a/l;->width:I

    iget v1, v8, Lcom/sphericbox/syb/a/l;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/sphericbox/syb/a/p;->aX:[I

    const/4 v2, 0x0

    iget v3, v8, Lcom/sphericbox/syb/a/l;->width:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v8, Lcom/sphericbox/syb/a/l;->width:I

    iget v7, v8, Lcom/sphericbox/syb/a/l;->height:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-object v0

    .line 81
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "Facade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeHeapAllocatedSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "Facade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeHeapFreeSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v1, "Facade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeHeapSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    throw v0
.end method

.method public b(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Lcom/sphericbox/syb/a/l;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-string v4, "Facade"

    .line 186
    const-string v0, "Facade"

    const-string v0, "white balance"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/sphericbox/syb/a;

    invoke-direct {v0}, Lcom/sphericbox/syb/a;-><init>()V

    .line 188
    new-instance v1, Lcom/sphericbox/syb/a/a;

    invoke-direct {v1}, Lcom/sphericbox/syb/a/a;-><init>()V

    .line 189
    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->aX:[I

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->aY:[I

    invoke-interface {v1, p1, v2, v3, p2}, Lcom/sphericbox/syb/a/h;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[I[ILcom/sphericbox/syb/a/l;)V

    .line 190
    const-string v1, "Facade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linear bg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public c(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Lcom/sphericbox/syb/a/l;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-string v4, "Facade"

    .line 194
    const-string v0, "Facade"

    const-string v0, "auto contrast"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Lcom/sphericbox/syb/a;

    invoke-direct {v0}, Lcom/sphericbox/syb/a;-><init>()V

    .line 196
    new-instance v1, Lcom/sphericbox/syb/a/q;

    invoke-direct {v1}, Lcom/sphericbox/syb/a/q;-><init>()V

    .line 197
    iget-object v2, p0, Lcom/sphericbox/syb/a/p;->aX:[I

    iget-object v3, p0, Lcom/sphericbox/syb/a/p;->aY:[I

    invoke-interface {v1, p1, v2, v3, p2}, Lcom/sphericbox/syb/a/h;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[I[ILcom/sphericbox/syb/a/l;)V

    .line 198
    const-string v1, "Facade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto contrast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method
