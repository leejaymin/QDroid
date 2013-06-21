.class Lcom/sphericbox/syb/camera/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sphericbox/syb/camera/e;


# instance fields
.field final synthetic a:Lcom/sphericbox/syb/camera/CaptureActivity;


# direct methods
.method private constructor <init>(Lcom/sphericbox/syb/camera/CaptureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sphericbox/syb/camera/a;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/camera/CaptureActivity;Lcom/sphericbox/syb/camera/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/camera/a;-><init>(Lcom/sphericbox/syb/camera/CaptureActivity;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 206
    return-void
.end method

.method public a([B)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 176
    const-string v0, "CaptureActivity"

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/sphericbox/syb/camera/a;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0, v2}, Lcom/sphericbox/syb/camera/CaptureActivity;->b(Lcom/sphericbox/syb/camera/CaptureActivity;Z)Z

    .line 178
    iget-object v0, p0, Lcom/sphericbox/syb/camera/a;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-virtual {v0, v2}, Lcom/sphericbox/syb/camera/CaptureActivity;->showDialog(I)V

    .line 179
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sphericbox/syb/camera/k;

    invoke-direct {v1, p0, p1}, Lcom/sphericbox/syb/camera/k;-><init>(Lcom/sphericbox/syb/camera/a;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    return-void
.end method
