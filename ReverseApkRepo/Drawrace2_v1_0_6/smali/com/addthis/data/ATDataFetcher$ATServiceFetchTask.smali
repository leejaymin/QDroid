.class public Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;
.super Landroid/os/AsyncTask;
.source "ATDataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/data/ATDataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ATServiceFetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/addthis/models/ATServiceList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/data/ATDataFetcher;


# direct methods
.method public constructor <init>(Lcom/addthis/data/ATDataFetcher;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;->this$0:Lcom/addthis/data/ATDataFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/addthis/models/ATServiceList;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 375
    const/4 v3, 0x0

    .line 377
    .local v3, serviceList:Lcom/addthis/models/ATServiceList;
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lcom/addthis/data/ATDataFetcher;->access$0(Z)V

    .line 378
    new-instance v1, Lcom/addthis/webservices/ATApi;

    invoke-direct {v1}, Lcom/addthis/webservices/ATApi;-><init>()V

    .line 379
    .local v1, favApi:Lcom/addthis/webservices/ATApi;
    invoke-virtual {v1}, Lcom/addthis/webservices/ATApi;->fetchServices()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, favlist:Ljava/lang/String;
    invoke-static {v2}, Lcom/addthis/parser/ATServiceListParser;->parse(Ljava/lang/String;)Lcom/addthis/models/ATServiceList;

    move-result-object v3

    .line 383
    iget-object v4, p0, Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;->this$0:Lcom/addthis/data/ATDataFetcher;

    invoke-virtual {v4, v3}, Lcom/addthis/data/ATDataFetcher;->updateDb(Lcom/addthis/models/ATServiceList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/addthis/error/ATDatabaseException; {:try_start_0 .. :try_end_0} :catch_3

    .line 394
    const-string v4, "Data fetcher"

    const-string v5, "Final block of try"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v7}, Lcom/addthis/data/ATDataFetcher;->access$0(Z)V

    .line 397
    .end local v1           #favApi:Lcom/addthis/webservices/ATApi;
    .end local v2           #favlist:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Lorg/apache/http/ParseException;
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    const-string v4, "Data fetcher"

    const-string v5, "Final block of try"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v7}, Lcom/addthis/data/ATDataFetcher;->access$0(Z)V

    goto :goto_0

    .line 386
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 387
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    const-string v4, "Data fetcher"

    const-string v5, "Final block of try"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v7}, Lcom/addthis/data/ATDataFetcher;->access$0(Z)V

    goto :goto_0

    .line 388
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 389
    .local v0, e:Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    const-string v4, "Data fetcher"

    const-string v5, "Final block of try"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v7}, Lcom/addthis/data/ATDataFetcher;->access$0(Z)V

    goto :goto_0

    .line 390
    .end local v0           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 392
    .local v0, e:Lcom/addthis/error/ATDatabaseException;
    :try_start_4
    invoke-virtual {v0}, Lcom/addthis/error/ATDatabaseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    const-string v4, "Data fetcher"

    const-string v5, "Final block of try"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v7}, Lcom/addthis/data/ATDataFetcher;->access$0(Z)V

    goto :goto_0

    .line 393
    .end local v0           #e:Lcom/addthis/error/ATDatabaseException;
    :catchall_0
    move-exception v4

    .line 394
    const-string v5, "Data fetcher"

    const-string v6, "Final block of try"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v7}, Lcom/addthis/data/ATDataFetcher;->access$0(Z)V

    .line 396
    throw v4
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;->doInBackground([Ljava/lang/Void;)Lcom/addthis/models/ATServiceList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/addthis/models/ATServiceList;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;->this$0:Lcom/addthis/data/ATDataFetcher;

    #calls: Lcom/addthis/data/ATDataFetcher;->didFinishServiceFetch()V
    invoke-static {v0}, Lcom/addthis/data/ATDataFetcher;->access$1(Lcom/addthis/data/ATDataFetcher;)V

    .line 402
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/addthis/models/ATServiceList;

    invoke-virtual {p0, p1}, Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;->onPostExecute(Lcom/addthis/models/ATServiceList;)V

    return-void
.end method
