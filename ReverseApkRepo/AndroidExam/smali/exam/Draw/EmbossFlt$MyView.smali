.class public Lexam/Draw/EmbossFlt$MyView;
.super Landroid/view/View;
.source "EmbossFlt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/EmbossFlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/EmbossFlt;


# direct methods
.method public constructor <init>(Lexam/Draw/EmbossFlt;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 17
    iput-object p1, p0, Lexam/Draw/EmbossFlt$MyView;->this$0:Lexam/Draw/EmbossFlt;

    .line 18
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x41f0

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .local v0, Pnt:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    invoke-virtual {p0}, Lexam/Draw/EmbossFlt$MyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 26
    const v4, 0x7f02000e

    .line 25
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 28
    .local v1, eighty8:Landroid/graphics/Bitmap;
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 29
    new-instance v2, Landroid/graphics/EmbossMaskFilter;

    .line 30
    const/4 v3, 0x3

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/high16 v4, 0x3f00

    const/high16 v5, 0x40c0

    const/high16 v6, 0x40a0

    .line 29
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    .line 31
    .local v2, emboss:Landroid/graphics/EmbossMaskFilter;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 32
    invoke-virtual {p1, v1, v7, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 33
    return-void

    .line 30
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method
