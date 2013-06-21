.class Lcom/zubhium/ZubhiumSDK$7;
.super Landroid/os/AsyncTask;
.source "ZubhiumSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/ZubhiumSDK;->submitFeedback(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zubhium/ZubhiumSDK;

.field private final synthetic val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$email:Ljava/lang/String;

.field private final synthetic val$feedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

.field private final synthetic val$includeSystemDetails:Z

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;ZLandroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iput-object p2, p0, Lcom/zubhium/ZubhiumSDK$7;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/zubhium/ZubhiumSDK$7;->val$email:Ljava/lang/String;

    iput-object p4, p0, Lcom/zubhium/ZubhiumSDK$7;->val$feedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    iput-boolean p5, p0, Lcom/zubhium/ZubhiumSDK$7;->val$includeSystemDetails:Z

    iput-object p6, p0, Lcom/zubhium/ZubhiumSDK$7;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/zubhium/ZubhiumSDK$7;->val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

    .line 611
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .parameter "params"

    .prologue
    .line 615
    const/4 v7, 0x0

    .line 617
    .local v7, returnValue:Z
    :try_start_0
    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$7;->val$message:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 618
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 653
    :goto_0
    return-object v8

    .line 620
    :cond_0
    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->getParameters()Lorg/json/JSONObject;
    invoke-static {v8}, Lcom/zubhium/ZubhiumSDK;->access$9(Lcom/zubhium/ZubhiumSDK;)Lorg/json/JSONObject;

    move-result-object v5

    .line 621
    .local v5, postParams:Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    const-string v9, "feedback"

    #calls: Lcom/zubhium/ZubhiumSDK;->getDevicePostData(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v8, v9}, Lcom/zubhium/ZubhiumSDK;->access$4(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 622
    .local v4, object:Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 623
    .local v3, feedbackObject:Lorg/json/JSONObject;
    const-string v8, "text"

    iget-object v9, p0, Lcom/zubhium/ZubhiumSDK$7;->val$message:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$7;->val$email:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 625
    const-string v8, "email"

    const-string v9, "unknown"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    :goto_1
    const-string v8, "uuid"

    iget-object v9, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/zubhium/ZubhiumSDK;->access$6(Lcom/zubhium/ZubhiumSDK;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->ZUBHIUM_DEVICE_ID:Ljava/lang/String;
    invoke-static {v10}, Lcom/zubhium/ZubhiumSDK;->access$7(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/zubhium/utils/ZubhiumUtils;->readPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string v0, "other"

    .line 631
    .local v0, category:Ljava/lang/String;
    sget-object v8, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->BUG:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    iget-object v9, p0, Lcom/zubhium/ZubhiumSDK$7;->val$feedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    if-ne v8, v9, :cond_5

    .line 632
    const-string v0, "bug"

    .line 636
    :cond_1
    :goto_2
    const-string v8, "tag"

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    iget-boolean v8, p0, Lcom/zubhium/ZubhiumSDK$7;->val$includeSystemDetails:Z

    if-eqz v8, :cond_2

    .line 638
    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->getDeviceState()Lorg/json/JSONObject;
    invoke-static {v8}, Lcom/zubhium/ZubhiumSDK;->access$5(Lcom/zubhium/ZubhiumSDK;)Lorg/json/JSONObject;

    move-result-object v1

    .line 639
    .local v1, device_state:Lorg/json/JSONObject;
    const-string v8, "device_state"

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    .end local v1           #device_state:Lorg/json/JSONObject;
    :cond_2
    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;
    invoke-static {v8}, Lcom/zubhium/ZubhiumSDK;->access$8(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 642
    const-string v8, "devuuid"

    iget-object v9, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;
    invoke-static {v9}, Lcom/zubhium/ZubhiumSDK;->access$8(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    :cond_3
    const-string v8, "feedback"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->submitFeedback(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 646
    .local v6, result:Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v9, p0, Lcom/zubhium/ZubhiumSDK$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v6}, Lcom/zubhium/ZubhiumSDK;->parseResult(Landroid/app/Activity;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zubhium/utils/ZubhiumError; {:try_start_0 .. :try_end_0} :catch_1

    .line 647
    const/4 v7, 0x1

    .line 653
    .end local v0           #category:Ljava/lang/String;
    .end local v3           #feedbackObject:Lorg/json/JSONObject;
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #postParams:Lorg/json/JSONObject;
    .end local v6           #result:Lorg/json/JSONObject;
    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 627
    .restart local v3       #feedbackObject:Lorg/json/JSONObject;
    .restart local v4       #object:Lorg/json/JSONObject;
    .restart local v5       #postParams:Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v8, "email"

    iget-object v9, p0, Lcom/zubhium/ZubhiumSDK$7;->val$email:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/zubhium/utils/ZubhiumError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 648
    .end local v3           #feedbackObject:Lorg/json/JSONObject;
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #postParams:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 649
    .local v2, e:Lorg/json/JSONException;
    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v9, p0, Lcom/zubhium/ZubhiumSDK$7;->val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

    new-instance v10, Lcom/zubhium/utils/ZubhiumError;

    const-string v11, "feedback-JSONException"

    invoke-direct {v10, v11}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/zubhium/ZubhiumSDK;->reportErrorBack(Lcom/zubhium/interfaces/ZubhiumListener;Lcom/zubhium/utils/ZubhiumError;)V

    goto :goto_3

    .line 633
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v0       #category:Ljava/lang/String;
    .restart local v3       #feedbackObject:Lorg/json/JSONObject;
    .restart local v4       #object:Lorg/json/JSONObject;
    .restart local v5       #postParams:Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    sget-object v8, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->FEATURE:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    iget-object v9, p0, Lcom/zubhium/ZubhiumSDK$7;->val$feedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    if-ne v8, v9, :cond_1

    .line 634
    const-string v0, "feature"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/zubhium/utils/ZubhiumError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 650
    .end local v0           #category:Ljava/lang/String;
    .end local v3           #feedbackObject:Lorg/json/JSONObject;
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v5           #postParams:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 651
    .local v2, e:Lcom/zubhium/utils/ZubhiumError;
    iget-object v8, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v9, p0, Lcom/zubhium/ZubhiumSDK$7;->val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

    invoke-virtual {v8, v9, v2}, Lcom/zubhium/ZubhiumSDK;->reportErrorBack(Lcom/zubhium/interfaces/ZubhiumListener;Lcom/zubhium/utils/ZubhiumError;)V

    goto :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zubhium/ZubhiumSDK$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 658
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    const-string v0, "feedback submitted successfully"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$7;->val$activity:Landroid/app/Activity;

    const-string v2, "feedback submitted successfully"

    #calls: Lcom/zubhium/ZubhiumSDK;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK;->access$13(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$7;->val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

    invoke-virtual {v0, v1}, Lcom/zubhium/ZubhiumSDK;->reportSuccessBack(Lcom/zubhium/interfaces/ZubhiumListener;)V

    .line 671
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 672
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$7;->val$message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$7;->val$activity:Landroid/app/Activity;

    const-string v2, "Please enter valid feedback"

    #calls: Lcom/zubhium/ZubhiumSDK;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK;->access$13(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$7;->val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

    new-instance v2, Lcom/zubhium/utils/ZubhiumError;

    const-string v3, "Missing required filed"

    invoke-direct {v2, v3}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK;->reportErrorBack(Lcom/zubhium/interfaces/ZubhiumListener;Lcom/zubhium/utils/ZubhiumError;)V

    goto :goto_0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$7;->val$activity:Landroid/app/Activity;

    const-string v2, "Error occured, please check network connection"

    #calls: Lcom/zubhium/ZubhiumSDK;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK;->access$13(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$7;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$7;->val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

    new-instance v2, Lcom/zubhium/utils/ZubhiumError;

    const-string v3, "please check network connection"

    invoke-direct {v2, v3}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK;->reportErrorBack(Lcom/zubhium/interfaces/ZubhiumListener;Lcom/zubhium/utils/ZubhiumError;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zubhium/ZubhiumSDK$7;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 676
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 677
    return-void
.end method
