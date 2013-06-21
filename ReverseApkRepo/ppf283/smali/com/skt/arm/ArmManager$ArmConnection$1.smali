.class Lcom/skt/arm/ArmManager$ArmConnection$1;
.super Landroid/os/AsyncTask;
.source "ArmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skt/arm/ArmManager$ArmConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
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
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/skt/arm/ArmManager$ArmConnection;


# direct methods
.method constructor <init>(Lcom/skt/arm/ArmManager$ArmConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    .line 257
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

    invoke-virtual {p0, p1}, Lcom/skt/arm/ArmManager$ArmConnection$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    .line 263
    const-string v3, ""

    .line 264
    .local v3, strRet:Ljava/lang/String;
    const/4 v2, -0x1

    .line 265
    .local v2, nRet:I
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " onServiceConnected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    #getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    #getter for: Lcom/skt/arm/ArmManager;->mBoundService:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/skt/arm/ArmManager;->access$2(Lcom/skt/arm/ArmManager;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/skt/arm/aidl/IArmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/skt/arm/aidl/IArmService;

    move-result-object v4

    invoke-static {v4}, Lcom/skt/arm/ArmManager;->access$3(Lcom/skt/arm/aidl/IArmService;)V

    .line 269
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    #getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    #getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v5}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v5

    iget-object v5, v5, Lcom/skt/arm/ArmManager;->sAID:Ljava/lang/String;

    #calls: Lcom/skt/arm/ArmManager;->GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/skt/arm/ArmManager;->access$4(Lcom/skt/arm/ArmManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 272
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    #getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    #calls: Lcom/skt/arm/ArmManager;->ARMServiceExecute(Ljava/lang/String;)I
    invoke-static {v4, v3}, Lcom/skt/arm/ArmManager;->access$5(Lcom/skt/arm/ArmManager;Ljava/lang/String;)I

    move-result v2

    .line 273
    const-string v4, "ArmLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ArmServiceExecute nRet = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    #getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    #calls: Lcom/skt/arm/ArmManager;->GetProcessResponse(I)I
    invoke-static {v4, v2}, Lcom/skt/arm/ArmManager;->access$6(Lcom/skt/arm/ArmManager;I)I

    move-result v2

    .line 275
    const-string v4, "ArmLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetProcessResponse nRet = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eq v2, v7, :cond_0

    .line 279
    :try_start_0
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$7()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 280
    .local v0, a:Landroid/app/Activity;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0           #a:Landroid/app/Activity;
    :cond_0
    :goto_0
    if-ne v2, v7, :cond_1

    .line 288
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    #getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    iput v7, v4, Lcom/skt/arm/ArmManager;->nNetState:I

    .line 293
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$7()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/skt/arm/ArmManager;->access$8()Lcom/skt/arm/ArmManager$ArmConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :goto_2
    const/4 v4, 0x0

    return-object v4

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/skt/arm/ArmManager;->access$1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " Not ACTIVITY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    #getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v4}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v4

    const/16 v5, 0x14

    iput v5, v4, Lcom/skt/arm/ArmManager;->nNetState:I

    goto :goto_1

    .line 295
    :catch_1
    move-exception v1

    .line 296
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/skt/arm/ArmManager$ArmConnection$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/skt/arm/ArmManager$ArmConnection$1;->this$1:Lcom/skt/arm/ArmManager$ArmConnection;

    #getter for: Lcom/skt/arm/ArmManager$ArmConnection;->this$0:Lcom/skt/arm/ArmManager;
    invoke-static {v0}, Lcom/skt/arm/ArmManager$ArmConnection;->access$1(Lcom/skt/arm/ArmManager$ArmConnection;)Lcom/skt/arm/ArmManager;

    move-result-object v0

    #calls: Lcom/skt/arm/ArmManager;->ReturnService()V
    invoke-static {v0}, Lcom/skt/arm/ArmManager;->access$9(Lcom/skt/arm/ArmManager;)V

    .line 307
    return-void
.end method
