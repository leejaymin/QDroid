.class public Lexam/Draw/SweepGrad$MyView;
.super Landroid/view/View;
.source "SweepGrad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/SweepGrad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/SweepGrad;


# direct methods
.method public constructor <init>(Lexam/Draw/SweepGrad;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 16
    iput-object p1, p0, Lexam/Draw/SweepGrad$MyView;->this$0:Lexam/Draw/SweepGrad;

    .line 17
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, -0x1

    const v4, -0xffff01

    const/high16 v7, 0x428c

    const/high16 v6, 0x4366

    const/high16 v5, 0x42a0

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .local v0, Pnt:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    const/4 v3, 0x5

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 25
    .local v1, colors:[I
    const/4 v3, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    .line 27
    .local v2, pos:[F
    new-instance v3, Landroid/graphics/SweepGradient;

    invoke-direct {v3, v5, v5, v4, v8}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 28
    invoke-virtual {p1, v5, v5, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 30
    new-instance v3, Landroid/graphics/SweepGradient;

    invoke-direct {v3, v6, v5, v8, v4}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    invoke-virtual {p1, v6, v5, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    new-instance v3, Landroid/graphics/SweepGradient;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v6, v1, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    invoke-virtual {p1, v5, v6, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    new-instance v3, Landroid/graphics/SweepGradient;

    invoke-direct {v3, v6, v6, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 37
    invoke-virtual {p1, v6, v6, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38
    return-void

    .line 24
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 25
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0x9at 0x99t 0x19t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
