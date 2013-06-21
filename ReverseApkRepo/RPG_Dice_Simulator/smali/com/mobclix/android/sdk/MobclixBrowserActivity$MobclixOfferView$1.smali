.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;
.super Ljava/lang/Object;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 591
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->type:Ljava/lang/String;

    const-string v4, "app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://search?q=pname:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->bundleId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 593
    .local v1, mIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 606
    :goto_0
    return-void

    .line 595
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 596
    .restart local v1       #mIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, packageName:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 599
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "url"

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_1
    const-class v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "browser"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 600
    :catch_0
    move-exception v3

    goto :goto_1
.end method
