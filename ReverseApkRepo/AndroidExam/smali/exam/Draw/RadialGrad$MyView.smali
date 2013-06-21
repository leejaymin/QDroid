.class public Lexam/Draw/RadialGrad$MyView;
.super Landroid/view/View;
.source "RadialGrad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/RadialGrad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/RadialGrad;


# direct methods
.method public constructor <init>(Lexam/Draw/RadialGrad;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 17
    iput-object p1, p0, Lexam/Draw/RadialGrad$MyView;->this$0:Lexam/Draw/RadialGrad;

    .line 18
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 22
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .local v7, Pnt:Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    const/4 v0, 0x5

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 26
    .local v8, colors:[I
    const/4 v0, 0x5

    new-array v9, v0, [F

    fill-array-data v9, :array_1

    .line 28
    .local v9, pos:[F
    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x42a0

    const/high16 v2, 0x42a0

    const/high16 v3, 0x428c

    .line 29
    const v4, -0xffff01

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 28
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 30
    const/high16 v0, 0x42a0

    const/high16 v1, 0x42a0

    const/high16 v2, 0x428c

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 32
    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x4366

    const/high16 v2, 0x42a0

    const/high16 v3, 0x428c

    .line 33
    const/4 v4, -0x1

    const v5, -0xffff01

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 32
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    const/high16 v0, 0x4366

    const/high16 v1, 0x42a0

    const/high16 v2, 0x428c

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x42a0

    const/high16 v2, 0x4366

    const/high16 v3, 0x428c

    .line 37
    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v8

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 36
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 38
    const/high16 v0, 0x42a0

    const/high16 v1, 0x4366

    const/high16 v2, 0x428c

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 40
    new-instance v0, Landroid/graphics/RadialGradient;

    const/high16 v1, 0x4366

    const/high16 v2, 0x4366

    const/high16 v3, 0x428c

    .line 41
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 40
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 42
    const/high16 v0, 0x4366

    const/high16 v1, 0x4366

    const/high16 v2, 0x428c

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 26
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0x9at 0x99t 0x19t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
