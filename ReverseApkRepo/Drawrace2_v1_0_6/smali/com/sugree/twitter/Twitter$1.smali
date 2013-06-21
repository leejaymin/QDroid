.class Lcom/sugree/twitter/Twitter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sugree/twitter/Twitter$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sugree/twitter/Twitter;->authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sugree/twitter/Twitter$DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sugree/twitter/Twitter;

.field final synthetic val$listener:Lcom/sugree/twitter/Twitter$DialogListener;


# direct methods
.method constructor <init>(Lcom/sugree/twitter/Twitter;Lcom/sugree/twitter/Twitter$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/Twitter$1;->this$0:Lcom/sugree/twitter/Twitter;

    iput-object p2, p0, Lcom/sugree/twitter/Twitter$1;->val$listener:Lcom/sugree/twitter/Twitter$DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "twitter"

    const-string v1, "Login cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sugree/twitter/Twitter$1;->val$listener:Lcom/sugree/twitter/Twitter$DialogListener;

    invoke-interface {v0}, Lcom/sugree/twitter/Twitter$DialogListener;->onCancel()V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/sugree/twitter/Twitter$1;->this$0:Lcom/sugree/twitter/Twitter;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sugree/twitter/Twitter;->setAccessToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sugree/twitter/Twitter$1;->this$0:Lcom/sugree/twitter/Twitter;

    const-string v1, "secret_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sugree/twitter/Twitter;->setSecretToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sugree/twitter/Twitter$1;->this$0:Lcom/sugree/twitter/Twitter;

    invoke-virtual {v0}, Lcom/sugree/twitter/Twitter;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "twitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sugree/twitter/Twitter$1;->this$0:Lcom/sugree/twitter/Twitter;

    invoke-virtual {v2}, Lcom/sugree/twitter/Twitter;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sugree/twitter/Twitter$1;->this$0:Lcom/sugree/twitter/Twitter;

    invoke-virtual {v2}, Lcom/sugree/twitter/Twitter;->getSecretToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sugree/twitter/Twitter$1;->val$listener:Lcom/sugree/twitter/Twitter$DialogListener;

    invoke-interface {v0, p1}, Lcom/sugree/twitter/Twitter$DialogListener;->onComplete(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sugree/twitter/TwitterError;

    const-string v1, "failed to receive oauth token"

    invoke-direct {v0, v1}, Lcom/sugree/twitter/TwitterError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sugree/twitter/Twitter$1;->onTwitterError(Lcom/sugree/twitter/TwitterError;)V

    goto :goto_0
.end method

.method public onError(Lcom/sugree/twitter/DialogError;)V
    .locals 3

    const-string v0, "twitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sugree/twitter/Twitter$1;->val$listener:Lcom/sugree/twitter/Twitter$DialogListener;

    invoke-interface {v0, p1}, Lcom/sugree/twitter/Twitter$DialogListener;->onError(Lcom/sugree/twitter/DialogError;)V

    return-void
.end method

.method public onTwitterError(Lcom/sugree/twitter/TwitterError;)V
    .locals 3

    const-string v0, "twitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sugree/twitter/Twitter$1;->val$listener:Lcom/sugree/twitter/Twitter$DialogListener;

    invoke-interface {v0, p1}, Lcom/sugree/twitter/Twitter$DialogListener;->onTwitterError(Lcom/sugree/twitter/TwitterError;)V

    return-void
.end method
