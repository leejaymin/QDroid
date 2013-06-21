.class Lcom/sphericbox/syb/camera/i;
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
    .line 226
    iput-object p1, p0, Lcom/sphericbox/syb/camera/i;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/camera/CaptureActivity;Lcom/sphericbox/syb/camera/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/camera/i;-><init>(Lcom/sphericbox/syb/camera/CaptureActivity;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sphericbox/syb/camera/i;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->d(Lcom/sphericbox/syb/camera/CaptureActivity;)V

    .line 236
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 0
    .parameter

    .prologue
    .line 229
    return-void
.end method
