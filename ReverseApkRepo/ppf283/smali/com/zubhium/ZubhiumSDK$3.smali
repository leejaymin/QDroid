.class Lcom/zubhium/ZubhiumSDK$3;
.super Landroid/os/AsyncTask;
.source "ZubhiumSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/ZubhiumSDK;->initConfig(ZZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zubhium/ZubhiumSDK;

.field private final synthetic val$new_install:Z

.field private final synthetic val$secret_key:Ljava/lang/String;

.field private final synthetic val$version_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    iput-object p2, p0, Lcom/zubhium/ZubhiumSDK$3;->val$secret_key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zubhium/ZubhiumSDK$3;->val$new_install:Z

    iput-object p4, p0, Lcom/zubhium/ZubhiumSDK$3;->val$version_code:Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zubhium/ZubhiumSDK$3;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 273
    :try_start_0
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->initDeviceId()V
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$2(Lcom/zubhium/ZubhiumSDK;)V

    .line 274
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->initWindow()V
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$3(Lcom/zubhium/ZubhiumSDK;)V

    .line 275
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    const-string v7, "init"

    #calls: Lcom/zubhium/ZubhiumSDK;->getDevicePostData(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v6, v7}, Lcom/zubhium/ZubhiumSDK;->access$4(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 276
    .local v4, object:Lorg/json/JSONObject;
    const-string v6, "secret_key"

    iget-object v7, p0, Lcom/zubhium/ZubhiumSDK$3;->val$secret_key:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v6, "new_install"

    iget-boolean v7, p0, Lcom/zubhium/ZubhiumSDK$3;->val$new_install:Z

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 278
    const-string v6, "app_version_code"

    iget-object v7, p0, Lcom/zubhium/ZubhiumSDK$3;->val$version_code:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 280
    .local v2, initObject:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->getDeviceState()Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$5(Lcom/zubhium/ZubhiumSDK;)Lorg/json/JSONObject;

    move-result-object v0

    .line 281
    .local v0, device_state:Lorg/json/JSONObject;
    const-string v6, "device_state"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v6, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v6, "uuid"

    iget-object v7, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/zubhium/ZubhiumSDK;->access$6(Lcom/zubhium/ZubhiumSDK;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->ZUBHIUM_DEVICE_ID:Ljava/lang/String;
    invoke-static {v8}, Lcom/zubhium/ZubhiumSDK;->access$7(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zubhium/utils/ZubhiumUtils;->readPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$8(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 285
    const-string v6, "devuuid"

    iget-object v7, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;
    invoke-static {v7}, Lcom/zubhium/ZubhiumSDK;->access$8(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :cond_0
    const-string v6, "init"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->getParameters()Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$9(Lcom/zubhium/ZubhiumSDK;)Lorg/json/JSONObject;

    move-result-object v5

    .line 289
    .local v5, postParams:Lorg/json/JSONObject;
    const-string v6, "secret_key"

    iget-object v7, p0, Lcom/zubhium/ZubhiumSDK$3;->val$secret_key:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->initConfig(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 291
    .local v3, init_result:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Lcom/zubhium/ZubhiumSDK;->parseResult(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 292
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v7, p0, Lcom/zubhium/ZubhiumSDK$3;->val$secret_key:Ljava/lang/String;

    #setter for: Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/zubhium/ZubhiumSDK;->access$10(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;)V

    .line 293
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$6(Lcom/zubhium/ZubhiumSDK;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "secret_key"

    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/zubhium/ZubhiumSDK;->access$0(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/zubhium/utils/ZubhiumUtils;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$6(Lcom/zubhium/ZubhiumSDK;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "version_code"

    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$3;->val$version_code:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/zubhium/utils/ZubhiumUtils;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v6, "confiured ZubhiumAndroidSDK 0.9 successfully"

    invoke-static {v6}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 296
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->enableCrashReporting()V
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$1(Lcom/zubhium/ZubhiumSDK;)V

    .line 297
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    invoke-virtual {v6}, Lcom/zubhium/ZubhiumSDK;->submitCrashes()Ljava/lang/String;
    :try_end_0
    .catch Lcom/zubhium/utils/ZubhiumError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    .end local v0           #device_state:Lorg/json/JSONObject;
    .end local v2           #initObject:Lorg/json/JSONObject;
    .end local v3           #init_result:Lorg/json/JSONObject;
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #postParams:Lorg/json/JSONObject;
    :goto_0
    const-string v6, ""

    return-object v6

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Lcom/zubhium/utils/ZubhiumError;
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    const-string v7, ""

    #setter for: Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/zubhium/ZubhiumSDK;->access$10(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;)V

    .line 300
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$6(Lcom/zubhium/ZubhiumSDK;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "init"

    invoke-static {v6, v7, v9}, Lcom/zubhium/utils/ZubhiumUtils;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to configure ZubhiumAndroidSDK 0.9 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zubhium/utils/ZubhiumError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v1           #e:Lcom/zubhium/utils/ZubhiumError;
    :catch_1
    move-exception v1

    .line 303
    .local v1, e:Lorg/json/JSONException;
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    const-string v7, ""

    #setter for: Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/zubhium/ZubhiumSDK;->access$10(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;)V

    .line 304
    iget-object v6, p0, Lcom/zubhium/ZubhiumSDK$3;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/zubhium/ZubhiumSDK;->access$6(Lcom/zubhium/ZubhiumSDK;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "init"

    invoke-static {v6, v7, v9}, Lcom/zubhium/utils/ZubhiumUtils;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to configure ZubhiumAndroidSDK 0.9 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method
