.class public Lcom/google/devtools/simple/runtime/components/android/ImageSprite;
.super Lcom/google/devtools/simple/runtime/components/android/Sprite;
.source "ImageSprite.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->ANIMATION:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>Ball</code>s and other <code>ImageSprite</code>s) and the edge of the Canvas, and move according to its property values.  Its appearance is that of the image specified in its <code>Picture</code> property (unless its <code>Visible</code> property is <code>False</code>.</p> <p>To have an <code>ImageSprite</code> move 10 pixels to the left every 1000 milliseconds (one second), for example, you would set the <code>Speed</code> property to 10 [pixels], the <code>Interval</code> property to 1000 [milliseconds], the <code>Heading</code> property to 180 [degrees], and the <code>Enabled</code> property to <code>True</code>.  Any of these or its other properties can be changed at any time.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private heightHint:I

.field private picturePath:Ljava/lang/String;

.field private widthHint:I


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 45
    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->widthHint:I

    .line 46
    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->heightHint:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->picturePath:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 108
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->heightHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->heightHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_2
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->heightHint:I

    goto :goto_0
.end method

.method public Height(I)V
    .locals 0
    .parameter "height"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 117
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->heightHint:I

    .line 118
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->registerChange()V

    .line 119
    return-void
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->picturePath:Ljava/lang/String;

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->getDrawable(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->drawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->registerChange()V

    .line 100
    return-void

    :cond_0
    move-object v1, p1

    .line 90
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 95
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "ImageSprite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 124
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->widthHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->widthHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_2
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->widthHint:I

    goto :goto_0
.end method

.method public Width(I)V
    .locals 0
    .parameter "width"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 133
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->widthHint:I

    .line 134
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->registerChange()V

    .line 135
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->visible:Z

    if-eqz v2, :cond_0

    .line 60
    iget-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->xLeft:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 61
    .local v0, xint:I
    iget-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->yTop:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 62
    .local v1, yint:I
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->Width()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->Height()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ImageSprite;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    .end local v0           #xint:I
    .end local v1           #yint:I
    :cond_0
    return-void
.end method
