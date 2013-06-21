.class Lcom/sphericbox/syb/camera/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic ag:Lcom/sphericbox/syb/camera/e;

.field final synthetic ah:Lcom/sphericbox/syb/camera/b;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/camera/b;Lcom/sphericbox/syb/camera/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sphericbox/syb/camera/d;->ah:Lcom/sphericbox/syb/camera/b;

    iput-object p2, p0, Lcom/sphericbox/syb/camera/d;->ag:Lcom/sphericbox/syb/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sphericbox/syb/camera/d;->ag:Lcom/sphericbox/syb/camera/e;

    invoke-interface {v0, p1}, Lcom/sphericbox/syb/camera/e;->a(Z)V

    .line 54
    return-void
.end method
