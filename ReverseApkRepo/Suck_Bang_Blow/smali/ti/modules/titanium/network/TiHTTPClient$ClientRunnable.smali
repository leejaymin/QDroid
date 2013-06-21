.class Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;

.field private totalLength:D


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;D)V
    .locals 0
    .parameter
    .parameter "totalLength"

    .prologue
    .line 915
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput-wide p2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:D

    .line 917
    return-void
.end method

.method static synthetic access$1900(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 913
    iget-wide v0, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:D

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 920
    const-wide/16 v13, 0xa

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 921
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$200()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 922
    const-string v13, "TiHttpClient"

    const-string v14, "send()"

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    new-instance v14, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;-><init>(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient;)V

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    invoke-static {v13, v14}, Lti/modules/titanium/network/TiHTTPClient;->access$1102(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/auth/Credentials;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 934
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$1400()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v13

    new-instance v14, Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v15, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;
    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1300(Lti/modules/titanium/network/TiHTTPClient;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v15, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;
    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/auth/Credentials;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    const/4 v14, 0x0

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;
    invoke-static {v13, v14}, Lti/modules/titanium/network/TiHTTPClient;->access$1202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/auth/Credentials;)Lorg/apache/http/auth/Credentials;

    .line 937
    :cond_1
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$1400()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v13

    new-instance v14, Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v15, v0

    invoke-direct {v14, v15}, Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;-><init>(Lti/modules/titanium/network/TiHTTPClient;)V

    invoke-virtual {v13, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v13

    instance-of v13, v13, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    if-eqz v13, :cond_7

    .line 940
    const/4 v4, 0x0

    .line 941
    .local v4, form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const/4 v7, 0x0

    .line 943
    .local v7, mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-lez v13, :cond_2

    .line 945
    :try_start_1
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v5, v13, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4           #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .local v5, form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object v4, v5

    .line 951
    .end local v5           #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v4       #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1800(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 952
    new-instance v7, Lorg/apache/http/entity/mime/MultipartEntity;

    .end local v7           #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    invoke-direct {v7}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 953
    .restart local v7       #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 954
    .local v9, name:Ljava/lang/String;
    const-string v13, "TiHttpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "adding part "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", part type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v15, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-interface {v2}, Lorg/apache/http/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", len: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v15, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-interface {v2}, Lorg/apache/http/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-virtual {v7, v9, v2}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1007
    .end local v4           #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v9           #name:Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v12, v13

    .line 1008
    .local v12, t:Ljava/lang/Throwable;
    const-string v13, "TiHttpClient"

    const-string v14, "clearing the expired and idle connections"

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$1400()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 1010
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$1400()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    const-wide/16 v14, 0x0

    sget-object v16, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v13 .. v16}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 1012
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 1013
    .local v8, msg:Ljava/lang/String;
    if-nez v8, :cond_3

    invoke-virtual {v12}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 1014
    invoke-virtual {v12}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 1016
    :cond_3
    if-nez v8, :cond_4

    .line 1017
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1019
    :cond_4
    const-string v13, "TiHttpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "HTTP Error ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v12}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    invoke-virtual {v13, v8}, Lti/modules/titanium/network/TiHTTPClient;->sendError(Ljava/lang/String;)V

    .line 1022
    .end local v8           #msg:Ljava/lang/String;
    .end local v12           #t:Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 946
    .restart local v4       #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v7       #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    :catch_1
    move-exception v13

    move-object v3, v13

    .line 947
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v13, "TiHttpClient"

    const-string v14, "Unsupported encoding: "

    invoke-static {v13, v14, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 957
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz v4, :cond_6

    .line 959
    :try_start_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentLength()J

    move-result-wide v13

    long-to-int v13, v13

    invoke-direct {v2, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 960
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v4, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 961
    const-string v13, "form"

    new-instance v14, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "application/x-www-form-urlencoded"

    const-string v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v7, v13, v14}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 969
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    :cond_6
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 970
    .local v3, e:Lorg/apache/http/HttpEntityEnclosingRequest;
    const-string v13, "TiHttpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "totalLength="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:D

    move-wide v15, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v10, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    new-instance v14, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;-><init>(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)V

    invoke-direct {v10, v13, v7, v14}, Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;-><init>(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpEntity;Lti/modules/titanium/network/TiHTTPClient$ProgressListener;)V

    .line 983
    .local v10, progressEntity:Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;
    invoke-interface {v3, v10}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 985
    const-string v13, "Length"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:D

    move-wide v15, v0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .end local v3           #e:Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v4           #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v10           #progressEntity:Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->timeout:I
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$2100(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_8

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v14, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->timeout:I
    invoke-static {v14}, Lti/modules/titanium/network/TiHTTPClient;->access$2100(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v14

    invoke-static {v13, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static {v13}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v14, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->timeout:I
    invoke-static {v14}, Lti/modules/titanium/network/TiHTTPClient;->access$2100(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v14

    invoke-static {v13, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 997
    :cond_8
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$200()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 998
    const-string v13, "TiHttpClient"

    const-string v14, "Preparing to execute request"

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_9
    invoke-static {}, Lti/modules/titanium/network/TiHTTPClient;->access$1400()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v14, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->host:Lorg/apache/http/HttpHost;
    invoke-static {v14}, Lti/modules/titanium/network/TiHTTPClient;->access$2200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpHost;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v15, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;
    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    #getter for: Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    invoke-static/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$1100(Lti/modules/titanium/network/TiHTTPClient;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1001
    .local v11, result:Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 1002
    const-string v13, "TiHttpClient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Have result back from request len="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    const/4 v14, 0x0

    #setter for: Lti/modules/titanium/network/TiHTTPClient;->connected:Z
    invoke-static {v13, v14}, Lti/modules/titanium/network/TiHTTPClient;->access$002(Lti/modules/titanium/network/TiHTTPClient;Z)Z

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    invoke-virtual {v13, v11}, Lti/modules/titanium/network/TiHTTPClient;->setResponseText(Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    goto/16 :goto_2

    .line 962
    .end local v11           #result:Ljava/lang/String;
    .restart local v4       #form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #mpe:Lorg/apache/http/entity/mime/MultipartEntity;
    :catch_2
    move-exception v13

    move-object v3, v13

    .line 963
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v13, "TiHttpClient"

    const-string v14, "Unsupported encoding: "

    invoke-static {v13, v14, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 964
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v13

    move-object v3, v13

    .line 965
    .local v3, e:Ljava/io/IOException;
    const-string v13, "TiHttpClient"

    const-string v14, "Error converting form to string: "

    invoke-static {v13, v14, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 987
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object v13, v0

    #calls: Lti/modules/titanium/network/TiHTTPClient;->handleURLEncodedData(Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V
    invoke-static {v13, v4}, Lti/modules/titanium/network/TiHTTPClient;->access$2000(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4
.end method
