.class Lcom/zubhium/ZubhiumSDK$9;
.super Landroid/os/AsyncTask;
.source "ZubhiumSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/ZubhiumSDK;->registerUpdateReceiver(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zubhium/ZubhiumSDK;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;

    iput-object p2, p0, Lcom/zubhium/ZubhiumSDK$9;->val$activity:Landroid/app/Activity;

    .line 773
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;
    .locals 1
    .parameter

    .prologue
    .line 773
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zubhium/ZubhiumSDK$9;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 4
    .parameter "params"

    .prologue
    .line 783
    :try_start_0
    const-string v2, "checking updates"

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 784
    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;

    const-string v3, "config"

    #calls: Lcom/zubhium/ZubhiumSDK;->getDevicePostData(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v2, v3}, Lcom/zubhium/ZubhiumSDK;->access$4(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 785
    .local v1, request:Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->config(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/zubhium/utils/ZubhiumError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 791
    .end local v1           #request:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, e:Lcom/zubhium/utils/ZubhiumError;
    invoke-virtual {v0}, Lcom/zubhium/utils/ZubhiumError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 791
    .end local v0           #e:Lcom/zubhium/utils/ZubhiumError;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 788
    :catch_1
    move-exception v0

    .line 789
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 777
    const-string v0, "canceling updates"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/zubhium/ZubhiumSDK$9;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 11
    .parameter "result"

    .prologue
    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v0, v0, Lcom/zubhium/ZubhiumSDK;->receiverActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "show_update"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    const-string v0, "update_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 799
    .local v9, msgObject:Lorg/json/JSONObject;
    if-eqz v9, :cond_0

    .line 800
    const-string v0, "New update available"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 801
    const-string v0, "message_title"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 802
    .local v3, title:Ljava/lang/String;
    const-string v0, "message"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 803
    .local v4, description:Ljava/lang/String;
    const-string v0, "target_url"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 804
    .local v8, targetUrl:Ljava/lang/String;
    const-string v0, "force_market_open"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 805
    .local v6, forceUpdate:Z
    const-string v0, "button1_title"

    const-string v1, "Update"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, button1_title:Ljava/lang/String;
    const-string v0, "button2_title"

    const-string v1, "Dismiss"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, button2_title:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v10, v0, Lcom/zubhium/ZubhiumSDK;->receiverActivity:Landroid/app/Activity;

    new-instance v0, Lcom/zubhium/ZubhiumSDK$9$1;

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK$9;->val$activity:Landroid/app/Activity;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/zubhium/ZubhiumSDK$9$1;-><init>(Lcom/zubhium/ZubhiumSDK$9;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #description:Ljava/lang/String;
    .end local v5           #button1_title:Ljava/lang/String;
    .end local v6           #forceUpdate:Z
    .end local v7           #button2_title:Ljava/lang/String;
    .end local v8           #targetUrl:Ljava/lang/String;
    .end local v9           #msgObject:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 855
    return-void

    .line 849
    :cond_1
    :try_start_1
    const-string v0, "no update available"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 859
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 860
    return-void
.end method
