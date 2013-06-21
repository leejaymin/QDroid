.class Lcom/kt/olleh/inapp/Purchase$22;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->setModifyText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 770
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.kt.olleh.storefront/inapp.kt.olleh.storefront"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->bTBserver:Z

    if-eqz v2, :cond_0

    .line 773
    const-string v2, "INAPP_URL"

    const-string v3, "http://221.148.243.100/hybrid2/appMy?tab=CERT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    :goto_0
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 785
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 775
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "INAPP_URL"

    const-string v3, "http://hybrid.olleh.com/hybrid/appMy?tab=CERT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 779
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 781
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v3, "\uc548\ub0b4"

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v3, "\uc62c\ub808\ub9c8\ucf13\uc774 \uc124\uce58\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4.\n\uc124\uce58 \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    #setter for: Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 783
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_1
.end method
