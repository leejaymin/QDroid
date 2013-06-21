.class Lcom/wolfram/android/alpha/activity/LicenseCheck$1;
.super Ljava/lang/Object;
.source "LicenseCheck.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/LicenseCheck;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/LicenseCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$1;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 152
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$1;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->setResult(ILandroid/content/Intent;)V

    .line 153
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$1;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->finish()V

    .line 154
    return-void
.end method
