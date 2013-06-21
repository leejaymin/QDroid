.class public Lcom/spritefish/camera/controls/PreviewTopControl;
.super Landroid/view/View;
.source "PreviewTopControl.java"


# instance fields
.field private flash:Z

.field private focusBitmap:Landroid/graphics/drawable/Drawable;

.field private focusMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "focus9pathid"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    iput-boolean v0, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->flash:Z

    .line 17
    iput-boolean v0, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->focusMode:Z

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->focusBitmap:Landroid/graphics/drawable/Drawable;

    .line 25
    return-void
.end method


# virtual methods
.method public activateFlash()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->flash:Z

    .line 30
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewTopControl;->invalidate()V

    .line 31
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 42
    iget-boolean v0, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->focusMode:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->focusBitmap:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x64

    const/16 v2, 0x32

    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewTopControl;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewTopControl;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->focusBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->flash:Z

    if-eqz v0, :cond_2

    .line 51
    const v0, 0x66ffffff

    invoke-virtual {p0, v0}, Lcom/spritefish/camera/controls/PreviewTopControl;->setBackgroundColor(I)V

    .line 54
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-boolean v0, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->flash:Z

    if-eqz v0, :cond_1

    .line 57
    iput-boolean v5, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->flash:Z

    .line 58
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewTopControl;->invalidate()V

    .line 61
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-virtual {p0, v5}, Lcom/spritefish/camera/controls/PreviewTopControl;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setFocusMode(Z)V
    .locals 0
    .parameter "focusOngoing"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/spritefish/camera/controls/PreviewTopControl;->focusMode:Z

    .line 36
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewTopControl;->invalidate()V

    .line 37
    return-void
.end method
