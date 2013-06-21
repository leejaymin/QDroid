.class Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$1;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$1;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 348
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 349
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$1;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setResult(ILandroid/content/Intent;)V

    .line 350
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$1;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->finish()V

    .line 351
    return-void
.end method
