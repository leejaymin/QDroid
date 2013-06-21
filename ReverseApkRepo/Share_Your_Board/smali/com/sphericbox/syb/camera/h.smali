.class Lcom/sphericbox/syb/camera/h;
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
    .line 209
    iput-object p1, p0, Lcom/sphericbox/syb/camera/h;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/camera/CaptureActivity;Lcom/sphericbox/syb/camera/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/camera/h;-><init>(Lcom/sphericbox/syb/camera/CaptureActivity;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sphericbox/syb/camera/h;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->c(Lcom/sphericbox/syb/camera/CaptureActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v0, p0, Lcom/sphericbox/syb/camera/h;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sphericbox/syb/camera/CaptureActivity;->b(Lcom/sphericbox/syb/camera/CaptureActivity;Z)Z

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/camera/h;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->c(Lcom/sphericbox/syb/camera/CaptureActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v0, p0, Lcom/sphericbox/syb/camera/h;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sphericbox/syb/camera/CaptureActivity;->b(Lcom/sphericbox/syb/camera/CaptureActivity;Z)Z

    goto :goto_0
.end method

.method public a([B)V
    .locals 0
    .parameter

    .prologue
    .line 212
    return-void
.end method
