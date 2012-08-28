.class public Lorg/connectbot/TerminalViewSurface;
.super Landroid/view/SurfaceView;
.source "TerminalViewSurface.java"


# instance fields
.field public final bridge:Lorg/connectbot/service/TerminalBridgeSurface;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/connectbot/service/TerminalBridgeSurface;)V
    .locals 3
    .parameter "context"
    .parameter "bridge"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lorg/connectbot/TerminalViewSurface;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lorg/connectbot/TerminalViewSurface;->bridge:Lorg/connectbot/service/TerminalBridgeSurface;

    .line 22
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/connectbot/TerminalViewSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {p0, v1}, Lorg/connectbot/TerminalViewSurface;->setFocusable(Z)V

    .line 24
    invoke-virtual {p0, v1}, Lorg/connectbot/TerminalViewSurface;->setFocusableInTouchMode(Z)V

    .line 28
    invoke-virtual {p0}, Lorg/connectbot/TerminalViewSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 29
    invoke-virtual {p0}, Lorg/connectbot/TerminalViewSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 30
    invoke-virtual {p0, p2}, Lorg/connectbot/TerminalViewSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 32
    return-void
.end method
