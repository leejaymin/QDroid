.class Lcom/sphericbox/syb/camera/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sphericbox/syb/camera/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/camera/CaptureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sphericbox/syb/camera/g;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sphericbox/syb/camera/g;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->b(Lcom/sphericbox/syb/camera/CaptureActivity;)V

    .line 110
    return-void
.end method
