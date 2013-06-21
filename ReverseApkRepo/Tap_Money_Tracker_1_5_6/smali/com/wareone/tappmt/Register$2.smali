.class Lcom/wareone/tappmt/Register$2;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Register;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Register;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Register$2;->this$0:Lcom/wareone/tappmt/Register;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 141
    iget-object v5, p0, Lcom/wareone/tappmt/Register$2;->this$0:Lcom/wareone/tappmt/Register;

    const-string v6, "TapPMTPrefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/wareone/tappmt/Register;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 142
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v5, "google_account"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, account:Ljava/lang/String;
    iget-object v5, p0, Lcom/wareone/tappmt/Register$2;->this$0:Lcom/wareone/tappmt/Register;

    const v6, 0x7f0c008c

    invoke-virtual {v5, v6}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 144
    .local v3, tv_device:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://android.wareone.com/purchase_m2.php?package="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/wareone/tappmt/Register$2;->this$0:Lcom/wareone/tappmt/Register;

    invoke-virtual {v6}, Lcom/wareone/tappmt/Register;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&account="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 145
    .local v4, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v1, it:Landroid/content/Intent;
    iget-object v5, p0, Lcom/wareone/tappmt/Register$2;->this$0:Lcom/wareone/tappmt/Register;

    invoke-virtual {v5, v1}, Lcom/wareone/tappmt/Register;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method
