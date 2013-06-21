.class Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;
.super Lcom/stickycoding/rokon/GLSurfaceView$BaseConfigChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lcom/stickycoding/rokon/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/GLSurfaceView;IIIIII)V
    .locals 4
    .parameter
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    const/4 v3, 0x1

    .line 710
    iput-object p1, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->this$0:Lcom/stickycoding/rokon/GLSurfaceView;

    .line 695
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 696
    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    .line 697
    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    .line 698
    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    .line 699
    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    .line 700
    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    .line 701
    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    .line 702
    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/stickycoding/rokon/GLSurfaceView$BaseConfigChooser;-><init>(Lcom/stickycoding/rokon/GLSurfaceView;[I)V

    .line 703
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 704
    iput p2, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 705
    iput p3, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 706
    iput p4, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 707
    iput p5, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 708
    iput p6, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 709
    iput p7, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 750
    :goto_0
    return v0

    :cond_0
    move v0, p5

    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 19
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    .line 715
    const/4 v10, 0x0

    .line 716
    .local v10, closestConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v11, 0x3e8

    .line 717
    .local v11, closestDistance:I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 741
    return-object v10

    .line 717
    :cond_0
    aget-object v5, p3, v18

    .line 719
    .local v5, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 718
    invoke-direct/range {v2 .. v7}, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 721
    .local v12, d:I
    const/16 v6, 0x3026

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 720
    invoke-direct/range {v2 .. v7}, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v16

    .line 722
    .local v16, s:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    move v2, v0

    if-lt v12, v2, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-lt v0, v1, :cond_1

    .line 724
    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 723
    invoke-direct/range {v2 .. v7}, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 726
    .local v15, r:I
    const/16 v6, 0x3023

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 725
    invoke-direct/range {v2 .. v7}, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 728
    .local v14, g:I
    const/16 v6, 0x3022

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 727
    invoke-direct/range {v2 .. v7}, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 730
    .local v9, b:I
    const/16 v6, 0x3021

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 729
    invoke-direct/range {v2 .. v7}, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 731
    .local v8, a:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    move v2, v0

    sub-int v2, v15, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    move v3, v0

    sub-int v3, v14, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 731
    add-int/2addr v2, v3

    .line 733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    move v3, v0

    sub-int v3, v9, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 731
    add-int/2addr v2, v3

    .line 734
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    move v3, v0

    sub-int v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 731
    add-int v13, v2, v3

    .line 735
    .local v13, distance:I
    if-ge v13, v11, :cond_1

    .line 736
    move v11, v13

    .line 737
    move-object v10, v5

    .line 717
    .end local v8           #a:I
    .end local v9           #b:I
    .end local v13           #distance:I
    .end local v14           #g:I
    .end local v15           #r:I
    :cond_1
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_0
.end method
