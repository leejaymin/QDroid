.class public final LbS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/LockScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 511
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 513
    return v0
.end method
