.class Lcom/donple/cpa/CpaModule$DonpleWork;
.super Ljava/lang/Object;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DonpleWork"
.end annotation


# instance fields
.field private appsServer:Ljava/lang/String;

.field private cpaCode:Ljava/lang/String;

.field private cpaProxy:I

.field private infoServer:Ljava/lang/String;

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method private constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$DonpleWork;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1174
    invoke-direct {p0, p1}, Lcom/donple/cpa/CpaModule$DonpleWork;-><init>(Lcom/donple/cpa/CpaModule;)V

    return-void
.end method

.method private convertUrlEncodedFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/entity/UrlEncodedFormEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1489
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    .local v2, nvpParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1491
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1497
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    return-object v4

    .line 1493
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1494
    .local v1, key:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1495
    .local v3, value:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getThreadSafeClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 5

    .prologue
    const/16 v3, 0x2710

    .line 1542
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1543
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    .line 1544
    .local v1, mgr:Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 1545
    .local v2, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1546
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1548
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 1549
    .restart local v0       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v0
.end method

.method private requestPost(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Lcom/donple/cpa/CpaModule$Response;
    .locals 7
    .parameter "url"
    .parameter "entity"

    .prologue
    .line 1508
    new-instance v4, Lcom/donple/cpa/CpaModule$Response;

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/donple/cpa/CpaModule$Response;-><init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$Response;)V

    .line 1510
    .local v4, vo:Lcom/donple/cpa/CpaModule$Response;
    invoke-direct {p0}, Lcom/donple/cpa/CpaModule$DonpleWork;->getThreadSafeClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 1511
    .local v0, postClient:Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v1, request:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    invoke-virtual {v1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1515
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1516
    .local v2, response:Lorg/apache/http/HttpResponse;
    if-eqz v2, :cond_0

    .line 1518
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 1519
    .local v3, status:I
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_0

    .line 1521
    invoke-virtual {v4, v3}, Lcom/donple/cpa/CpaModule$Response;->setCode(I)V

    .line 1522
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    const-string v6, "UTF8"

    invoke-static {v5, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/donple/cpa/CpaModule$Response;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    .end local v3           #status:I
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1533
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v4

    .line 1526
    :catch_0
    move-exception v5

    .line 1531
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 1530
    :catchall_0
    move-exception v5

    .line 1531
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1532
    throw v5
.end method


# virtual methods
.method public agentSetting()Z
    .locals 5

    .prologue
    .line 1190
    :try_start_0
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-virtual {v3}, Lcom/donple/cpa/CpaModule;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1191
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "DONPLE_CPA_AGENT_PROXY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaProxy:I

    .line 1192
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "DONPLE_CPA_AGENT_CODE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaCode:Ljava/lang/String;

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PROXY= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaProxy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CODE= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1195
    iget v2, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaProxy:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaCode:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaCode:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1197
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1202
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1204
    .end local v1           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestAuth(I)Z
    .locals 13
    .parameter "sCode"

    .prologue
    const/4 v12, 0x1

    .line 1389
    const/4 v11, 0x0

    .line 1390
    .local v11, serverUrl:Ljava/lang/String;
    if-ne p1, v12, :cond_1

    .line 1392
    iget-object v11, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->appsServer:Ljava/lang/String;

    .line 1401
    :cond_0
    :goto_0
    :try_start_0
    new-instance v0, Lcom/donple/cpa/CpaModule$Hash;

    iget-object v1, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->uid:Ljava/lang/String;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$21(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->mid:Ljava/lang/String;
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$25(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaProxy:I

    invoke-direct/range {v0 .. v5}, Lcom/donple/cpa/CpaModule$Hash;-><init>(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1402
    .local v0, hash:Lcom/donple/cpa/CpaModule$Hash;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1403
    .local v7, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "proxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$Hash;->getProxy()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    const-string v1, "uid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$Hash;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    const-string v1, "mid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$Hash;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    const-string v1, "hstr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$Hash;->getHstr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    const-string v1, "rdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$Hash;->getRdate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    const-string v1, "bundleId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-virtual {v3}, Lcom/donple/cpa/CpaModule;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AUTH >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "opiAuth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->getParam(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/donple/cpa/CpaModule;->access$24(Lcom/donple/cpa/CpaModule;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "opiAuth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7}, Lcom/donple/cpa/CpaModule$DonpleWork;->convertUrlEncodedFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestPost(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Lcom/donple/cpa/CpaModule$Response;

    move-result-object v8

    .line 1413
    .local v8, response:Lcom/donple/cpa/CpaModule$Response;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AUTH << HTTP= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", JSON= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v8}, Lcom/donple/cpa/CpaModule$Response;->getCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 1419
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v8}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v10, rootObj:Lorg/json/JSONObject;
    const-string v1, "ret"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 1421
    .local v9, retCode:I
    if-nez v9, :cond_2

    move v1, v12

    .line 1436
    .end local v0           #hash:Lcom/donple/cpa/CpaModule$Hash;
    .end local v7           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #response:Lcom/donple/cpa/CpaModule$Response;
    .end local v9           #retCode:I
    .end local v10           #rootObj:Lorg/json/JSONObject;
    :goto_1
    return v1

    .line 1394
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1396
    iget-object v11, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->infoServer:Ljava/lang/String;

    goto/16 :goto_0

    .line 1432
    :catch_0
    move-exception v6

    .line 1434
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "requestAuth()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v6}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1436
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1426
    .restart local v0       #hash:Lcom/donple/cpa/CpaModule$Hash;
    .restart local v7       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #response:Lcom/donple/cpa/CpaModule$Response;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public requestCmd(Lcom/donple/cpa/CpaModule$App;I)Lcom/donple/cpa/CpaModule$CmdData;
    .locals 8
    .parameter "app"
    .parameter "status"

    .prologue
    .line 1213
    new-instance v0, Lcom/donple/cpa/CpaModule$CmdData;

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {v0, v5}, Lcom/donple/cpa/CpaModule$CmdData;-><init>(Lcom/donple/cpa/CpaModule;)V

    .line 1214
    .local v0, cmdData:Lcom/donple/cpa/CpaModule$CmdData;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1215
    .local v3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaProxy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string v5, "uid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->uid:Ljava/lang/String;
    invoke-static {v7}, Lcom/donple/cpa/CpaModule;->access$21(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const-string v5, "appId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/donple/cpa/CpaModule$App;->getAppId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const-string v5, "point"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/donple/cpa/CpaModule$App;->getUnitPointGiving()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const-string v5, "status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const-string v5, "eventtime"

    invoke-static {}, Lcom/donple/cpa/CpaModule;->access$22()Ljava/text/SimpleDateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 1226
    const-string v5, "trxId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/donple/cpa/CpaModule$App;->getTransactionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->agentParams:Ljava/lang/String;
    invoke-static {v5}, Lcom/donple/cpa/CpaModule;->access$23(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->agentParams:Ljava/lang/String;
    invoke-static {v5}, Lcom/donple/cpa/CpaModule;->access$23(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1235
    :try_start_0
    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->agentParams:Ljava/lang/String;
    invoke-static {v5}, Lcom/donple/cpa/CpaModule;->access$23(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1236
    .local v2, encode:Ljava/lang/String;
    const-string v5, "userParams"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1242
    .end local v2           #encode:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/donple/cpa/CpaModule$App;->getCpaParams()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/donple/cpa/CpaModule$App;->getCpaParams()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1248
    :try_start_1
    invoke-virtual {p1}, Lcom/donple/cpa/CpaModule$App;->getCpaParams()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1249
    .restart local v2       #encode:Ljava/lang/String;
    const-string v5, "cpaParams"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1255
    .end local v2           #encode:Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CMD["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->appsServer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "adpCmd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->getParam(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/donple/cpa/CpaModule;->access$24(Lcom/donple/cpa/CpaModule;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1259
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->appsServer:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "adpCmd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/donple/cpa/CpaModule$DonpleWork;->convertUrlEncodedFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestPost(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Lcom/donple/cpa/CpaModule$Response;

    move-result-object v4

    .line 1260
    .local v4, response:Lcom/donple/cpa/CpaModule$Response;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CMD["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "HTTP= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", JSON= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v4}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_4

    .line 1263
    invoke-virtual {v4}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/donple/cpa/CpaModule$CmdData;->toObject(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$CmdData;->getRetCode()I

    move-result v5

    if-nez v5, :cond_3

    .line 1278
    .end local v0           #cmdData:Lcom/donple/cpa/CpaModule$CmdData;
    .end local v4           #response:Lcom/donple/cpa/CpaModule$Response;
    :cond_2
    :goto_2
    return-object v0

    .line 1268
    .restart local v0       #cmdData:Lcom/donple/cpa/CpaModule$CmdData;
    .restart local v4       #response:Lcom/donple/cpa/CpaModule$Response;
    :cond_3
    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$CmdData;->getRetCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    const/16 v6, 0xce

    if-eq v5, v6, :cond_2

    .line 1278
    .end local v4           #response:Lcom/donple/cpa/CpaModule$Response;
    :cond_4
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1274
    :catch_0
    move-exception v1

    .line 1276
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "requestCmd()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v5, v1}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1251
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto/16 :goto_1

    .line 1238
    :catch_2
    move-exception v5

    goto/16 :goto_0
.end method

.method public requestDevInit()Z
    .locals 7

    .prologue
    const/16 v6, 0xc8

    .line 1287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1288
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "proxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaProxy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEV_INIT_APPS >> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->appsServer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adpInitialize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->getParam(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/donple/cpa/CpaModule;->access$24(Lcom/donple/cpa/CpaModule;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->appsServer:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "adpInitialize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/donple/cpa/CpaModule$DonpleWork;->convertUrlEncodedFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestPost(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Lcom/donple/cpa/CpaModule$Response;

    move-result-object v2

    .line 1295
    .local v2, response:Lcom/donple/cpa/CpaModule$Response;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEV_INIT_APPS << HTTP= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", JSON= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEV_INIT_INFO >> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->infoServer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adpInitialize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->getParam(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/donple/cpa/CpaModule;->access$24(Lcom/donple/cpa/CpaModule;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1300
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->infoServer:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "adpInitialize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/donple/cpa/CpaModule$DonpleWork;->convertUrlEncodedFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestPost(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Lcom/donple/cpa/CpaModule$Response;

    move-result-object v2

    .line 1302
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEV_INIT_INFO << HTTP= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", JSON= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1305
    const/4 v3, 0x1

    .line 1314
    .end local v2           #response:Lcom/donple/cpa/CpaModule$Response;
    :goto_0
    return v3

    .line 1310
    :catch_0
    move-exception v0

    .line 1312
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "requestDevInit()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v0}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1314
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public requestIni()Lcom/donple/cpa/CpaModule$IniData;
    .locals 7

    .prologue
    .line 1322
    new-instance v1, Lcom/donple/cpa/CpaModule$IniData;

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {v1, v4}, Lcom/donple/cpa/CpaModule$IniData;-><init>(Lcom/donple/cpa/CpaModule;)V

    .line 1323
    .local v1, iniData:Lcom/donple/cpa/CpaModule$IniData;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1324
    .local v2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "ver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaProxy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "INI >> http://main.donple.com/adpMain/adpIni?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->getParam(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/donple/cpa/CpaModule;->access$24(Lcom/donple/cpa/CpaModule;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1329
    :try_start_0
    const-string v4, "http://main.donple.com/adpMain/adpIni"

    invoke-direct {p0, v2}, Lcom/donple/cpa/CpaModule$DonpleWork;->convertUrlEncodedFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestPost(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Lcom/donple/cpa/CpaModule$Response;

    move-result-object v3

    .line 1330
    .local v3, response:Lcom/donple/cpa/CpaModule$Response;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "INI << HTTP= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", JSON= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v3}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 1333
    invoke-virtual {v3}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/donple/cpa/CpaModule$IniData;->toObject(Ljava/lang/String;)V

    .line 1336
    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->devMode:Z
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$9(Lcom/donple/cpa/CpaModule;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/donple/cpa/CpaModule$IniData;->getDevServer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "adpMain/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->appsServer:Ljava/lang/String;

    .line 1339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/donple/cpa/CpaModule$IniData;->getDevServer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "adpInfo/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->infoServer:Ljava/lang/String;

    .line 1352
    .end local v3           #response:Lcom/donple/cpa/CpaModule$Response;
    :cond_0
    :goto_0
    return-object v1

    .line 1343
    .restart local v3       #response:Lcom/donple/cpa/CpaModule$Response;
    :cond_1
    invoke-virtual {v1}, Lcom/donple/cpa/CpaModule$IniData;->getAppsServer()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->appsServer:Ljava/lang/String;

    .line 1344
    invoke-virtual {v1}, Lcom/donple/cpa/CpaModule$IniData;->getInfoServer()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->infoServer:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1348
    .end local v3           #response:Lcom/donple/cpa/CpaModule$Response;
    :catch_0
    move-exception v0

    .line 1350
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "requestIni()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v4, v0}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestList()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/donple/cpa/CpaModule$App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1444
    new-instance v0, Lcom/donple/cpa/CpaModule$AppData;

    iget-object v6, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {v0, v6}, Lcom/donple/cpa/CpaModule$AppData;-><init>(Lcom/donple/cpa/CpaModule;)V

    .line 1445
    .local v0, appData:Lcom/donple/cpa/CpaModule$AppData;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1446
    .local v3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "proxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaProxy:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    const-string v6, "mid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->mid:Ljava/lang/String;
    invoke-static {v8}, Lcom/donple/cpa/CpaModule;->access$25(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const-string v6, "isfree"

    const-string v7, "1"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LIST >> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->appsServer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "adpList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->getParam(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v7, v3}, Lcom/donple/cpa/CpaModule;->access$24(Lcom/donple/cpa/CpaModule;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1454
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->appsServer:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "adpList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/donple/cpa/CpaModule$DonpleWork;->convertUrlEncodedFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestPost(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Lcom/donple/cpa/CpaModule$Response;

    move-result-object v4

    .line 1455
    .local v4, response:Lcom/donple/cpa/CpaModule$Response;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LIST << HTTP= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", JSON= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v4}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 1458
    invoke-virtual {v4}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/donple/cpa/CpaModule$AppData;->toObject(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$AppData;->getRetCode()I

    move-result v5

    .line 1460
    .local v5, retCode:I
    if-nez v5, :cond_0

    .line 1462
    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule$AppData;->getApps()Ljava/util/Map;

    move-result-object v1

    .line 1463
    .local v1, apps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/donple/cpa/CpaModule$App;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1478
    .end local v1           #apps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/donple/cpa/CpaModule$App;>;"
    .end local v4           #response:Lcom/donple/cpa/CpaModule$Response;
    .end local v5           #retCode:I
    :goto_0
    return-object v1

    .line 1468
    .restart local v4       #response:Lcom/donple/cpa/CpaModule$Response;
    .restart local v5       #retCode:I
    :cond_0
    const/16 v6, 0xcf

    if-ne v5, v6, :cond_1

    .line 1470
    const-string v6, "\uc11c\ubc84\ub9ac\ud134\ucf54\ub4dc(207) : \uad11\uace0\uc5c6\uc74c"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    .end local v4           #response:Lcom/donple/cpa/CpaModule$Response;
    .end local v5           #retCode:I
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1474
    :catch_0
    move-exception v2

    .line 1476
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "requestList()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v6, v2}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public requestSync()Lcom/donple/cpa/CpaModule$SyncData;
    .locals 7

    .prologue
    .line 1360
    new-instance v3, Lcom/donple/cpa/CpaModule$SyncData;

    iget-object v4, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {v3, v4}, Lcom/donple/cpa/CpaModule$SyncData;-><init>(Lcom/donple/cpa/CpaModule;)V

    .line 1361
    .local v3, syncData:Lcom/donple/cpa/CpaModule$SyncData;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1362
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->cpaProxy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    const-string v4, "uid"

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->uid:Ljava/lang/String;
    invoke-static {v5}, Lcom/donple/cpa/CpaModule;->access$21(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SYNC >> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->infoServer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "opiSync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->getParam(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/donple/cpa/CpaModule;->access$24(Lcom/donple/cpa/CpaModule;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1368
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/donple/cpa/CpaModule$DonpleWork;->infoServer:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "opiSync"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/donple/cpa/CpaModule$DonpleWork;->convertUrlEncodedFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestPost(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Lcom/donple/cpa/CpaModule$Response;

    move-result-object v2

    .line 1369
    .local v2, response:Lcom/donple/cpa/CpaModule$Response;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SYNC << HTTP= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", JSON= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 1372
    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/donple/cpa/CpaModule$SyncData;->toObject(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    .end local v2           #response:Lcom/donple/cpa/CpaModule$Response;
    :cond_0
    :goto_0
    return-object v3

    .line 1375
    :catch_0
    move-exception v0

    .line 1377
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "requestSync()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v4, v0}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
