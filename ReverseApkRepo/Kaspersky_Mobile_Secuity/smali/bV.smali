.class public final LbV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 553
    const/16 v0, 0x17

    if-ne p2, v0, :cond_0

    .line 555
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
