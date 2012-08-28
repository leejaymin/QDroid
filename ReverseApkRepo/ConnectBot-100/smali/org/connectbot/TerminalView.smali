.class public Lorg/connectbot/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"


# instance fields
.field public final bridge:Lorg/connectbot/service/TerminalBridge;

.field public final context:Landroid/content/Context;

.field public final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/connectbot/service/TerminalBridge;)V
    .locals 3
    .parameter "context"
    .parameter "bridge"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lorg/connectbot/TerminalView;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->paint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/connectbot/TerminalView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-virtual {p0, v2}, Lorg/connectbot/TerminalView;->setFocusable(Z)V

    .line 29
    invoke-virtual {p0, v2}, Lorg/connectbot/TerminalView;->setFocusableInTouchMode(Z)V

    .line 32
    invoke-virtual {p0, p2}, Lorg/connectbot/TerminalView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v0}, Lorg/connectbot/service/TerminalBridge;->parentDestroyed()V

    .line 39
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/connectbot/TerminalView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 54
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 44
    iget-object v0, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v0, p0}, Lorg/connectbot/service/TerminalBridge;->parentChanged(Landroid/view/View;)V

    .line 45
    return-void
.end method
