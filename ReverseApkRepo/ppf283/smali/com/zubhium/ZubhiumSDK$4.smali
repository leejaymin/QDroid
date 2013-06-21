.class Lcom/zubhium/ZubhiumSDK$4;
.super Landroid/os/AsyncTask;
.source "ZubhiumSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/ZubhiumSDK;->reportLogs(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
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

.field private final synthetic val$e:Ljava/lang/Throwable;

.field private final synthetic val$ehandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final synthetic val$t:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK;Ljava/lang/Throwable;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$4;->this$0:Lcom/zubhium/ZubhiumSDK;

    iput-object p2, p0, Lcom/zubhium/ZubhiumSDK$4;->val$e:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/zubhium/ZubhiumSDK$4;->val$ehandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p4, p0, Lcom/zubhium/ZubhiumSDK$4;->val$t:Ljava/lang/Thread;

    .line 357
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 20
    .parameter "params"

    .prologue
    .line 361
    const-string v5, "unknown"

    .local v5, className:Ljava/lang/String;
    const-string v4, "unknown"

    .local v4, fileName:Ljava/lang/String;
    const-string v6, "unknown"

    .line 362
    .local v6, methodName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 363
    .local v7, lineNo:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zubhium/ZubhiumSDK$4;->val$e:Ljava/lang/Throwable;

    .line 364
    .local v13, obj:Ljava/lang/Throwable;
    if-eqz v13, :cond_0

    .line 365
    invoke-virtual {v13}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    .line 366
    .local v11, elements:[Ljava/lang/StackTraceElement;
    if-eqz v11, :cond_0

    array-length v2, v11

    if-lez v2, :cond_0

    .line 367
    const/4 v2, 0x0

    aget-object v17, v11, v2

    .line 368
    .local v17, topElement:Ljava/lang/StackTraceElement;
    if-eqz v17, :cond_0

    .line 369
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 371
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    .line 372
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    .line 377
    .end local v11           #elements:[Ljava/lang/StackTraceElement;
    .end local v17           #topElement:Ljava/lang/StackTraceElement;
    :cond_0
    new-instance v16, Ljava/io/StringWriter;

    invoke-direct/range {v16 .. v16}, Ljava/io/StringWriter;-><init>()V

    .line 378
    .local v16, result:Ljava/io/Writer;
    new-instance v15, Ljava/io/PrintWriter;

    invoke-direct/range {v15 .. v16}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 379
    .local v15, printWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zubhium/ZubhiumSDK$4;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v2, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 380
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, stacktrace:Ljava/lang/String;
    move-object v9, v3

    .line 382
    .local v9, consoleStacktrace:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V

    .line 384
    :try_start_0
    const-string v2, "crashreport:found new problem"

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zubhium/ZubhiumSDK$4;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->getParameters()Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/zubhium/ZubhiumSDK;->access$9(Lcom/zubhium/ZubhiumSDK;)Lorg/json/JSONObject;

    move-result-object v14

    .line 386
    .local v14, postParams:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zubhium/ZubhiumSDK$4;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->getCrashReportJSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/zubhium/ZubhiumSDK;->access$11(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 387
    .local v12, message:Ljava/lang/String;
    move-object v3, v12

    .line 388
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->submitLogs(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 389
    .local v8, call_result:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zubhium/ZubhiumSDK$4;->this$0:Lcom/zubhium/ZubhiumSDK;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v8}, Lcom/zubhium/ZubhiumSDK;->parseResult(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 390
    const-string v2, "crashreport:crash report submitted successfully"

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zubhium/utils/ZubhiumError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    .end local v8           #call_result:Lorg/json/JSONObject;
    .end local v12           #message:Ljava/lang/String;
    .end local v14           #postParams:Lorg/json/JSONObject;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zubhium/ZubhiumSDK$4;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->defaultReportingMode:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;
    invoke-static {v2}, Lcom/zubhium/ZubhiumSDK;->access$12(Lcom/zubhium/ZubhiumSDK;)Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    move-result-object v2

    sget-object v18, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;->DEFAULT:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_1

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zubhium/ZubhiumSDK$4;->val$ehandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zubhium/ZubhiumSDK$4;->val$t:Ljava/lang/Thread;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zubhium/ZubhiumSDK$4;->val$e:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v2, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 406
    :goto_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 391
    :catch_0
    move-exception v10

    .line 392
    .local v10, e:Lcom/zubhium/utils/ZubhiumError;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zubhium/ZubhiumSDK$4;->this$0:Lcom/zubhium/ZubhiumSDK;

    invoke-virtual {v2, v3}, Lcom/zubhium/ZubhiumSDK;->writeToOfflineCrash(Ljava/lang/String;)V

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v18, "crashreport:"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/zubhium/utils/ZubhiumError;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .end local v10           #e:Lcom/zubhium/utils/ZubhiumError;
    :catch_1
    move-exception v10

    .line 395
    .local v10, e:Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zubhium/ZubhiumSDK$4;->this$0:Lcom/zubhium/ZubhiumSDK;

    invoke-virtual {v2, v3}, Lcom/zubhium/ZubhiumSDK;->writeToOfflineCrash(Ljava/lang/String;)V

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v18, "crashreport:"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    .end local v10           #e:Lorg/json/JSONException;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v18, "Error occured : "

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 404
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zubhium/ZubhiumSDK$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
