.class public Lexam/Output/DrawBitmap$MyView;
.super Landroid/view/View;
.source "DrawBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Output/DrawBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Output/DrawBitmap;


# direct methods
.method public constructor <init>(Lexam/Output/DrawBitmap;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 18
    iput-object p1, p0, Lexam/Output/DrawBitmap$MyView;->this$0:Lexam/Output/DrawBitmap;

    .line 19
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/16 v12, 0x5a

    const/16 v4, 0x3a

    const/16 v11, 0xa

    const/high16 v10, 0x4120

    const/4 v9, 0x0

    .line 23
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .local v5, Pnt:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 33
    invoke-virtual {p0}, Lexam/Output/DrawBitmap$MyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 35
    .local v7, bit:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v7, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x50

    const/16 v3, 0x6e

    invoke-direct {v1, v2, v11, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v7, v9, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 37
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x1e

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3, v4, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x78

    const/16 v4, 0xb0

    invoke-direct {v2, v3, v11, v4, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v7, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 39
    const/16 v1, 0xc8

    const/16 v2, 0x64

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 40
    .local v6, BackBit:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 41
    .local v0, offscreen:Landroid/graphics/Canvas;
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 42
    const/high16 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    const/4 v8, 0x0

    .local v8, x:I
    :goto_0
    const/16 v1, 0xc8

    if-lt v8, v1, :cond_0

    .line 46
    const/high16 v1, 0x42f0

    invoke-virtual {p1, v6, v10, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    return-void

    .line 44
    :cond_0
    int-to-float v1, v8

    const/4 v2, 0x0

    rsub-int v3, v8, 0xc8

    int-to-float v3, v3

    const/high16 v4, 0x42c8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    add-int/lit8 v8, v8, 0x5

    goto :goto_0
.end method
