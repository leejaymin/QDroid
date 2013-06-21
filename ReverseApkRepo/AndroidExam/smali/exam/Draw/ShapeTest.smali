.class public Lexam/Draw/ShapeTest;
.super Landroid/app/Activity;
.source "ShapeTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v1, 0x7f030017

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lexam/Draw/ShapeTest;->setContentView(I)V

    .line 20
    const v1, 0x7f0c002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lexam/Draw/ShapeTest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 21
    .local v9, btn:Landroid/widget/Button;
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 22
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 21
    invoke-direct {v10, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 23
    .local v10, g:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    const v1, 0x7f0c002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lexam/Draw/ShapeTest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #btn:Landroid/widget/Button;
    check-cast v9, Landroid/widget/Button;

    .line 27
    .restart local v9       #btn:Landroid/widget/Button;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xff0100

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    const v1, 0x7f0c0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lexam/Draw/ShapeTest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #btn:Landroid/widget/Button;
    check-cast v9, Landroid/widget/Button;

    .line 31
    .restart local v9       #btn:Landroid/widget/Button;
    new-instance v15, Landroid/graphics/drawable/PaintDrawable;

    const/16 v1, -0x100

    invoke-direct {v15, v1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 32
    .local v15, pd:Landroid/graphics/drawable/PaintDrawable;
    const/high16 v1, 0x4120

    invoke-virtual {v15, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 33
    invoke-virtual {v9, v15}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    const v1, 0x7f0c0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lexam/Draw/ShapeTest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #btn:Landroid/widget/Button;
    check-cast v9, Landroid/widget/Button;

    .line 37
    .restart local v9       #btn:Landroid/widget/Button;
    new-instance v16, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 38
    .local v16, sd:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    new-instance v1, Landroid/graphics/RadialGradient;

    const/high16 v2, 0x4270

    const/high16 v3, 0x41f0

    const/high16 v4, 0x4248

    .line 39
    const/4 v5, -0x1

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 38
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 40
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    const v1, 0x7f0c0032

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lexam/Draw/ShapeTest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #btn:Landroid/widget/Button;
    check-cast v9, Landroid/widget/Button;

    .line 44
    .restart local v9       #btn:Landroid/widget/Button;
    const/16 v1, 0x8

    new-array v13, v1, [F

    fill-array-data v13, :array_1

    .line 45
    .local v13, outR:[F
    new-instance v12, Landroid/graphics/RectF;

    const/high16 v1, 0x41f0

    const/high16 v2, 0x41f0

    const/high16 v3, 0x41f0

    const/high16 v4, 0x41f0

    invoke-direct {v12, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 46
    .local v12, inRect:Landroid/graphics/RectF;
    const/16 v1, 0x8

    new-array v11, v1, [F

    fill-array-data v11, :array_2

    .line 47
    .local v11, inR:[F
    new-instance v17, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v13, v12, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 48
    .local v17, sd2:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0xff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    const v1, 0x7f0c0033

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lexam/Draw/ShapeTest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #btn:Landroid/widget/Button;
    check-cast v9, Landroid/widget/Button;

    .line 53
    .restart local v9       #btn:Landroid/widget/Button;
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 54
    .local v14, path:Landroid/graphics/Path;
    const/high16 v1, 0x40a0

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    const/4 v1, 0x0

    const/high16 v2, 0x40e0

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    const/high16 v1, 0x4040

    const/high16 v2, 0x40e0

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    const/high16 v1, 0x4040

    const/high16 v2, 0x4120

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    const/high16 v1, 0x40e0

    const/high16 v2, 0x4120

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    const/high16 v1, 0x40e0

    const/high16 v2, 0x40e0

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    const/high16 v1, 0x4120

    const/high16 v2, 0x40e0

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    new-instance v18, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/PathShape;

    const/high16 v2, 0x4120

    const/high16 v3, 0x4120

    invoke-direct {v1, v14, v2, v3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 62
    .local v18, sd3:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v19

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x4120

    .line 63
    const v6, -0xff0100

    const/high16 v7, -0x1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 62
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 64
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void

    .line 22
    nop

    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
    .end array-data

    .line 44
    :array_1
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xf0t 0x41t
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data

    .line 46
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xf0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
