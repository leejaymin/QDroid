.class Lcom/wolfram/android/alpha/activity/LicenseCheck$2;
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
    .line 138
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$2;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://market.android.com/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$2;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .local v0, marketIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$2;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-virtual {v1, v0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$2;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->finish()V

    .line 145
    return-void
.end method
