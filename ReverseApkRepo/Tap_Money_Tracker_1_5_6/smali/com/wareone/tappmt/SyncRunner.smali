.class public Lcom/wareone/tappmt/SyncRunner;
.super Ljava/lang/Object;
.source "SyncRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_Ctx:Landroid/content/Context;

.field private m_action:I

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_handler:Landroid/os/Handler;

.field private m_repeat:Z

.field private m_uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/wareone/tappmt/SyncRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "action"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v3, p0, Lcom/wareone/tappmt/SyncRunner;->m_repeat:Z

    .line 40
    const-string v1, "josh@wareone.com"

    iput-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/wareone/tappmt/SyncRunner;->m_Ctx:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    .line 59
    iput-boolean v3, p0, Lcom/wareone/tappmt/SyncRunner;->m_repeat:Z

    .line 60
    iput p3, p0, Lcom/wareone/tappmt/SyncRunner;->m_action:I

    .line 62
    iget-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_Ctx:Landroid/content/Context;

    const-string v2, "TapPMTPrefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "google_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    .line 65
    new-instance v1, Lcom/wareone/tappmt/PmtDbAdapter;

    iget-object v2, p0, Lcom/wareone/tappmt/SyncRunner;->m_Ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "repeat"

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v3, p0, Lcom/wareone/tappmt/SyncRunner;->m_repeat:Z

    .line 40
    const-string v1, "josh@wareone.com"

    iput-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/wareone/tappmt/SyncRunner;->m_Ctx:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    .line 46
    iput-boolean p3, p0, Lcom/wareone/tappmt/SyncRunner;->m_repeat:Z

    .line 47
    const/16 v1, 0x1774

    iput v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_action:I

    .line 49
    iget-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_Ctx:Landroid/content/Context;

    const-string v2, "TapPMTPrefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "google_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    .line 52
    new-instance v1, Lcom/wareone/tappmt/PmtDbAdapter;

    iget-object v2, p0, Lcom/wareone/tappmt/SyncRunner;->m_Ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 54
    return-void
.end method

.method private checkAccount()V
    .locals 12

    .prologue
    const-string v9, "UTF-8"

    .line 114
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v10, "check account on new thread"

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v10, "Create a new HttpClient and Post Header"

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 120
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v9, "http://android.wareone.com/sync_checkaccount.php"

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v6, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "uid"

    iget-object v11, p0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 128
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v10, "Execute HTTP Post Request"

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 130
    .local v7, response:Lorg/apache/http/HttpResponse;
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Response Code --> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_0

    .line 132
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v10, "Read response text"

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 135
    .local v4, is:Ljava/io/InputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 137
    .local v0, _data:[B
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v9, 0x400

    invoke-direct {v1, v9}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 138
    .local v1, buf:Lorg/apache/http/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, n:I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_1

    .line 141
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 142
    .local v8, str:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 143
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "response code ---> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v9, "10000"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    .line 145
    iget-object v9, p0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    const/16 v10, 0x17d5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #n:I
    .end local v6           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #str:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 139
    .restart local v0       #_data:[B
    .restart local v1       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #n:I
    .restart local v6       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    goto :goto_0

    .line 151
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #n:I
    .end local v6           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 147
    .restart local v0       #_data:[B
    .restart local v1       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #n:I
    .restart local v6       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #str:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    const/16 v10, 0x17d4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 154
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #n:I
    .end local v6           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #str:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private completeClient(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .parameter "json"
    .parameter "action"

    .prologue
    const-string v7, "records"

    const-string v7, ", row_id:"

    const-string v7, "remote_id"

    const-string v7, "name"

    const-string v7, "row_id"

    .line 527
    const-string v7, "delete"

    invoke-virtual {p2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 529
    :try_start_0
    const-string v7, "records"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 530
    .local v3, rs:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 567
    .end local v0           #i:I
    .end local v3           #rs:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-void

    .line 531
    .restart local v0       #i:I
    .restart local v3       #rs:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 532
    .local v2, record:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DELETE FROM dellogs WHERE table_name=\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "table"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "row_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "row_id"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    .end local v0           #i:I
    .end local v2           #record:Lorg/json/JSONObject;
    .end local v3           #rs:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    const-string v7, "tables"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 540
    .local v5, tables:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 541
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 543
    .local v4, table:Lorg/json/JSONObject;
    const-string v7, "records"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 544
    .restart local v3       #rs:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_3

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 545
    :cond_3
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 547
    .restart local v2       #record:Lorg/json/JSONObject;
    const-string v7, "new"

    invoke-virtual {p2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    .line 548
    sget-object v7, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "complete new --> table:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "name"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", row_id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "row_id"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 550
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "remote_id"

    const-string v8, "remote_id"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v7, "sync"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-object v7, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "complete new --> remote_id:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "remote_id"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", row_id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "row_id"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v7, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v8, "name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "row_id"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v6, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 555
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_4
    const-string v7, "modified"

    invoke-virtual {p2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    .line 556
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 557
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v7, "sync"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    iget-object v7, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v8, "name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "row_id"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v6, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 564
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #record:Lorg/json/JSONObject;
    .end local v3           #rs:Lorg/json/JSONArray;
    .end local v4           #table:Lorg/json/JSONObject;
    .end local v5           #tables:Lorg/json/JSONArray;
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 535
    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method

.method private completeRemote(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "client"
    .parameter "data"
    .parameter "action"
    .parameter "uid"

    .prologue
    const-string v8, "UTF-8"

    .line 571
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v8, "http://android.wareone.com/sync_complete.php"

    invoke-direct {v2, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 574
    .local v2, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    .local v5, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "act"

    invoke-direct {v8, v9, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "uid"

    invoke-direct {v8, v9, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "data"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v8, v5, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 581
    sget-object v8, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v9, "Execute HTTP Post Request"

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-interface {p1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 583
    .local v6, response:Lorg/apache/http/HttpResponse;
    sget-object v8, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Response Code --> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_0

    .line 585
    sget-object v8, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v9, "Read response text"

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 588
    .local v3, is:Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 590
    .local v0, _data:[B
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v8, 0x400

    invoke-direct {v1, v8}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 591
    .local v1, buf:Lorg/apache/http/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, n:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_1

    .line 594
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 595
    .local v7, result:Ljava/lang/String;
    sget-object v8, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "response text ---> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #n:I
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #result:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 592
    .restart local v0       #_data:[B
    .restart local v1       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #n:I
    .restart local v5       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 598
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #n:I
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 601
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private createAccount()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-string v12, "UTF-8"

    .line 162
    sget-object v12, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v13, "create account on new thread"

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v12, p0, Lcom/wareone/tappmt/SyncRunner;->m_Ctx:Landroid/content/Context;

    const-string v13, "TapPMTPrefs"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 165
    .local v9, settings:Landroid/content/SharedPreferences;
    const-string v12, "sync_password"

    const-string v13, ""

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, passwd:Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, tz:Ljava/lang/String;
    sget-object v12, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v13, "Create a new HttpClient and Post Header"

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 172
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v12, "http://android.wareone.com/sync_createaccount.php"

    invoke-direct {v3, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    const/4 v12, 0x2

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v6, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "uid"

    iget-object v14, p0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "pass"

    invoke-direct {v12, v13, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "tz"

    invoke-direct {v12, v13, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v12, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v13, "UTF-8"

    invoke-direct {v12, v6, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 182
    sget-object v12, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v13, "Execute HTTP Post Request"

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 184
    .local v8, response:Lorg/apache/http/HttpResponse;
    sget-object v12, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Response Code --> "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_0

    .line 186
    sget-object v12, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v13, "Read response text"

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 189
    .local v4, is:Ljava/io/InputStream;
    const/16 v12, 0x400

    new-array v0, v12, [B

    .line 191
    .local v0, _data:[B
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v12, 0x400

    invoke-direct {v1, v12}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 192
    .local v1, buf:Lorg/apache/http/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, n:I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_1

    .line 195
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v10, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 196
    .local v10, str:Ljava/lang/String;
    const/4 v12, 0x3

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 197
    sget-object v12, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "response code ---> "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v12, "10000"

    invoke-virtual {v10, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_2

    .line 199
    iget-object v12, p0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    const/16 v13, 0x17d6

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #n:I
    .end local v6           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #str:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 193
    .restart local v0       #_data:[B
    .restart local v1       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #n:I
    .restart local v6       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v1, v0, v12, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    goto :goto_0

    .line 205
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #n:I
    .end local v6           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 201
    .restart local v0       #_data:[B
    .restart local v1       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #n:I
    .restart local v6       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v10       #str:Ljava/lang/String;
    :cond_2
    iget-object v12, p0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    const/16 v13, 0x17d7

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 208
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #n:I
    .end local v6           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #str:Ljava/lang/String;
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method private doSynchronize()V
    .locals 8

    .prologue
    const-string v4, "get upload new --> "

    const-string v4, "delete"

    const-string v7, "NULL"

    const-string v4, "new"

    const-string v4, "modified"

    .line 316
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v5, "doSybc on new thread"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    .line 321
    .local v3, uid:Ljava/lang/String;
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v5, "Create a new HttpClient and Post Header"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 324
    .local v0, httpclient:Lorg/apache/http/client/HttpClient;
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->beginTransaction()V

    .line 326
    :try_start_0
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getDelete()Lorg/json/JSONObject;

    move-result-object v1

    .line 327
    .local v1, json:Lorg/json/JSONObject;
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get upload delete --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v4, "delete"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->syncUpload(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 329
    const-string v4, "delete"

    invoke-direct {p0, v1, v4}, Lcom/wareone/tappmt/SyncRunner;->completeClient(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 330
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 335
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->beginTransaction()V

    .line 337
    :try_start_1
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "new"

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 338
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get upload new --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v4, "new"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->syncUpload(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 340
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get upload new --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string v6, "NULL"

    move-object v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v4, "new"

    invoke-direct {p0, v1, v4}, Lcom/wareone/tappmt/SyncRunner;->completeClient(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 342
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 347
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->beginTransaction()V

    .line 349
    :try_start_2
    const-string v4, "new"

    invoke-direct {p0, v0, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->syncDownload(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, response:Ljava/lang/String;
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sync download new --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, v2}, Lcom/wareone/tappmt/SyncRunner;->processNew(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 352
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sync process new --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string v6, "NULL"

    move-object v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v4, "new"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->completeRemote(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 356
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 359
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->beginTransaction()V

    .line 361
    :try_start_3
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v5, "get download delete --> "

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v4, "delete"

    invoke-direct {p0, v0, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->syncDownload(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "processing delete --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, v2}, Lcom/wareone/tappmt/SyncRunner;->processDelete(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 365
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "complete remote delete --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v6, "NULL"

    move-object v6, v7

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v4, "delete"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->completeRemote(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 369
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 372
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->beginTransaction()V

    .line 374
    :try_start_4
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v5, "get download modified --> "

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v4, "modified"

    invoke-direct {p0, v0, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->syncDownload(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "processing modified --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, v2}, Lcom/wareone/tappmt/SyncRunner;->processModified(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 378
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "complete remote modified --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_3

    const-string v6, "NULL"

    move-object v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v4, "modified"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->completeRemote(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 382
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 386
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->beginTransaction()V

    .line 388
    :try_start_5
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v5, "modified"

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 389
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get upload modified --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v4, "modified"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->syncUpload(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 391
    const-string v4, "modified"

    invoke-direct {p0, v1, v4}, Lcom/wareone/tappmt/SyncRunner;->completeClient(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 393
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 395
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 398
    return-void

    .line 331
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #response:Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 332
    iget-object v5, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 333
    throw v4

    .line 340
    .restart local v1       #json:Lorg/json/JSONObject;
    :cond_0
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v6

    goto/16 :goto_0

    .line 343
    :catchall_1
    move-exception v4

    .line 344
    iget-object v5, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 345
    throw v4

    .line 352
    .restart local v2       #response:Ljava/lang/String;
    :cond_1
    :try_start_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v6

    goto/16 :goto_1

    .line 355
    .end local v2           #response:Ljava/lang/String;
    :catchall_2
    move-exception v4

    .line 356
    iget-object v5, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 357
    throw v4

    .line 365
    .restart local v2       #response:Ljava/lang/String;
    :cond_2
    :try_start_8
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v6

    goto/16 :goto_2

    .line 368
    :catchall_3
    move-exception v4

    .line 369
    iget-object v5, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 370
    throw v4

    .line 378
    :cond_3
    :try_start_9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result-object v6

    goto/16 :goto_3

    .line 381
    :catchall_4
    move-exception v4

    .line 382
    iget-object v5, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 383
    throw v4

    .line 394
    :catchall_5
    move-exception v4

    .line 395
    iget-object v5, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 396
    throw v4
.end method

.method private downloadAll()V
    .locals 7

    .prologue
    const-string v4, "all"

    .line 293
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v5, "doSybc on new thread"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    .line 298
    .local v3, uid:Ljava/lang/String;
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v5, "Create a new HttpClient and Post Header"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 301
    .local v0, httpclient:Lorg/apache/http/client/HttpClient;
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->beginTransaction()V

    .line 303
    :try_start_0
    const-string v4, "all"

    invoke-direct {p0, v0, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->syncDownload(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, response:Ljava/lang/String;
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sync download all --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, v2}, Lcom/wareone/tappmt/SyncRunner;->processNew(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 306
    .local v1, json:Lorg/json/JSONObject;
    sget-object v4, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sync process all --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string v6, "NULL"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v4, "all"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/wareone/tappmt/SyncRunner;->completeRemote(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 313
    return-void

    .line 306
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 309
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #response:Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 310
    iget-object v5, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 311
    throw v4
.end method

.method private login()V
    .locals 17

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_Ctx:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "TapPMTPrefs"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 218
    .local v12, settings:Landroid/content/SharedPreferences;
    const-string v14, "sync_password"

    const-string v15, ""

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 220
    .local v10, pass:Ljava/lang/String;
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v15, "Create a new HttpClient and Post Header"

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 222
    .local v5, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    const-string v14, "http://android.wareone.com/sync_login.php"

    invoke-direct {v6, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 225
    .local v6, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    const/4 v14, 0x2

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v9, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "pass"

    invoke-direct {v14, v15, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v15, "UTF-8"

    invoke-direct {v14, v9, v15}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 231
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v15, "Execute HTTP Post Request"

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 233
    .local v11, response:Lorg/apache/http/HttpResponse;
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Response Code --> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_0

    .line 235
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v15, "Read response text"

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 238
    .local v7, is:Ljava/io/InputStream;
    const/16 v14, 0x400

    new-array v1, v14, [B

    .line 240
    .local v1, _data:[B
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v14, 0x400

    invoke-direct {v2, v14}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 241
    .local v2, buf:Lorg/apache/http/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, n:I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_1

    .line 244
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 245
    .local v13, str:Ljava/lang/String;
    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 246
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "response code ---> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v14, "10000"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_2

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    move-object v14, v0

    const/16 v15, 0x17d8

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    .end local v1           #_data:[B
    .end local v2           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #n:I
    .end local v9           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #str:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 242
    .restart local v1       #_data:[B
    .restart local v2       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #n:I
    .restart local v9       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v2, v1, v14, v8}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 260
    .end local v1           #_data:[B
    .end local v2           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #n:I
    .end local v9           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v14

    move-object v3, v14

    .line 262
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    move-object v14, v0

    const/16 v15, 0x17d9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 252
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v1       #_data:[B
    .restart local v2       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #n:I
    .restart local v9       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #str:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 253
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v14, "sync_password"

    const-string v15, ""

    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    move-object v14, v0

    const/16 v15, 0x17d9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 263
    .end local v1           #_data:[B
    .end local v2           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #n:I
    .end local v9           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #str:Ljava/lang/String;
    :catch_1
    move-exception v14

    move-object v3, v14

    .line 265
    .local v3, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    move-object v14, v0

    const/16 v15, 0x17d9

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private processDelete(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 20
    .parameter "json"

    .prologue
    .line 492
    const/4 v7, 0x0

    .line 494
    .local v7, result:Lorg/json/JSONObject;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v7           #result:Lorg/json/JSONObject;
    .local v8, result:Lorg/json/JSONObject;
    :try_start_1
    const-string v16, "tables"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 496
    .local v15, tables:Lorg/json/JSONArray;
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 497
    .local v12, rm_tables:Lorg/json/JSONArray;
    const-string v16, "tables"

    move-object v0, v8

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    move v0, v4

    move/from16 v1, v16

    if-lt v0, v1, :cond_0

    move-object v7, v8

    .line 523
    .end local v4           #i:I
    .end local v8           #result:Lorg/json/JSONObject;
    .end local v12           #rm_tables:Lorg/json/JSONArray;
    .end local v15           #tables:Lorg/json/JSONArray;
    .restart local v7       #result:Lorg/json/JSONObject;
    :goto_1
    return-object v7

    .line 499
    .end local v7           #result:Lorg/json/JSONObject;
    .restart local v4       #i:I
    .restart local v8       #result:Lorg/json/JSONObject;
    .restart local v12       #rm_tables:Lorg/json/JSONArray;
    .restart local v15       #tables:Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 500
    .local v14, table:Lorg/json/JSONObject;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 501
    .local v11, rm_table:Lorg/json/JSONObject;
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 502
    const-string v16, "name"

    const-string v17, "name"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v16, "key"

    const-string v17, "key"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v16, "records"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 506
    .local v13, rs:Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 507
    .local v10, rm_rs:Lorg/json/JSONArray;
    const-string v16, "records"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v16

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_1

    .line 498
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 510
    .local v6, record:Lorg/json/JSONObject;
    sget-object v16, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "process delete --> table:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "name"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", row_id:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "row_id"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v16, v0

    const-string v17, "name"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "row_id"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual/range {v16 .. v19}, Lcom/wareone/tappmt/PmtDbAdapter;->delete(Ljava/lang/String;J)J

    .line 513
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 514
    .local v9, rm_record:Lorg/json/JSONObject;
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 515
    const-string v16, "row_id"

    const-string v17, "remote_id"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    move-object v0, v9

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 516
    const-string v16, "remote_id"

    const-string v17, "row_id"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    move-object v0, v9

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 508
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 521
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #record:Lorg/json/JSONObject;
    .end local v8           #result:Lorg/json/JSONObject;
    .end local v9           #rm_record:Lorg/json/JSONObject;
    .end local v10           #rm_rs:Lorg/json/JSONArray;
    .end local v11           #rm_table:Lorg/json/JSONObject;
    .end local v12           #rm_tables:Lorg/json/JSONArray;
    .end local v13           #rs:Lorg/json/JSONArray;
    .end local v14           #table:Lorg/json/JSONObject;
    .end local v15           #tables:Lorg/json/JSONArray;
    .restart local v7       #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    goto/16 :goto_1

    .end local v7           #result:Lorg/json/JSONObject;
    .restart local v8       #result:Lorg/json/JSONObject;
    :catch_1
    move-exception v16

    move-object v7, v8

    .end local v8           #result:Lorg/json/JSONObject;
    .restart local v7       #result:Lorg/json/JSONObject;
    goto/16 :goto_1
.end method

.method private processModified(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 24
    .parameter "json"

    .prologue
    .line 446
    const/4 v10, 0x0

    .line 448
    .local v10, result:Lorg/json/JSONObject;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v10           #result:Lorg/json/JSONObject;
    .local v11, result:Lorg/json/JSONObject;
    :try_start_1
    const-string v20, "tables"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 450
    .local v18, tables:Lorg/json/JSONArray;
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 451
    .local v15, rm_tables:Lorg/json/JSONArray;
    const-string v20, "tables"

    move-object v0, v11

    move-object/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v20

    move v0, v6

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    move-object v10, v11

    .line 488
    .end local v6           #i:I
    .end local v11           #result:Lorg/json/JSONObject;
    .end local v15           #rm_tables:Lorg/json/JSONArray;
    .end local v18           #tables:Lorg/json/JSONArray;
    .restart local v10       #result:Lorg/json/JSONObject;
    :goto_1
    return-object v10

    .line 453
    .end local v10           #result:Lorg/json/JSONObject;
    .restart local v6       #i:I
    .restart local v11       #result:Lorg/json/JSONObject;
    .restart local v15       #rm_tables:Lorg/json/JSONArray;
    .restart local v18       #tables:Lorg/json/JSONArray;
    :cond_0
    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 454
    .local v17, table:Lorg/json/JSONObject;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 455
    .local v14, rm_table:Lorg/json/JSONObject;
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 456
    const-string v20, "name"

    const-string v21, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    const-string v20, "key"

    const-string v21, "key"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    sget-object v20, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "process modified --> table:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v20, "records"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 461
    .local v16, rs:Lorg/json/JSONArray;
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 462
    .local v13, rm_rs:Lorg/json/JSONArray;
    const-string v20, "records"

    move-object v0, v14

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    sget-object v20, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "process modified --> table:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", row count:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v20

    move v0, v7

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 452
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 465
    :cond_1
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v19, values:Landroid/content/ContentValues;
    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 467
    .local v9, record:Lorg/json/JSONObject;
    const-string v20, "fields"

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 468
    .local v5, fields:Lorg/json/JSONArray;
    sget-object v20, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "process modified --> table:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", row_id:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "row_id"

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v20, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "process modified --> table:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", field count:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v8, 0x0

    .local v8, k:I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v20

    move v0, v8

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 475
    const-string v20, "sync"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v20, v0

    const-string v21, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "row_id"

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 478
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 479
    .local v12, rm_record:Lorg/json/JSONObject;
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 480
    const-string v20, "row_id"

    const-string v21, "remote_id"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    move-object v0, v12

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 481
    const-string v20, "remote_id"

    const-string v21, "row_id"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    move-object v0, v12

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 464
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 471
    .end local v12           #rm_record:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 472
    .local v4, field:Lorg/json/JSONObject;
    const-string v20, "name"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "value"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-object v20, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "process modified --> field name:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "name"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", value:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "value"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 470
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 486
    .end local v4           #field:Lorg/json/JSONObject;
    .end local v5           #fields:Lorg/json/JSONArray;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v8           #k:I
    .end local v9           #record:Lorg/json/JSONObject;
    .end local v11           #result:Lorg/json/JSONObject;
    .end local v13           #rm_rs:Lorg/json/JSONArray;
    .end local v14           #rm_table:Lorg/json/JSONObject;
    .end local v15           #rm_tables:Lorg/json/JSONArray;
    .end local v16           #rs:Lorg/json/JSONArray;
    .end local v17           #table:Lorg/json/JSONObject;
    .end local v18           #tables:Lorg/json/JSONArray;
    .end local v19           #values:Landroid/content/ContentValues;
    .restart local v10       #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v20

    goto/16 :goto_1

    .end local v10           #result:Lorg/json/JSONObject;
    .restart local v11       #result:Lorg/json/JSONObject;
    :catch_1
    move-exception v20

    move-object v10, v11

    .end local v11           #result:Lorg/json/JSONObject;
    .restart local v10       #result:Lorg/json/JSONObject;
    goto/16 :goto_1
.end method

.method private processNew(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 25
    .parameter "json"

    .prologue
    .line 401
    const/4 v12, 0x0

    .line 403
    .local v12, result:Lorg/json/JSONObject;
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v12           #result:Lorg/json/JSONObject;
    .local v13, result:Lorg/json/JSONObject;
    :try_start_1
    const-string v22, "tables"

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 405
    .local v20, tables:Lorg/json/JSONArray;
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 406
    .local v17, rm_tables:Lorg/json/JSONArray;
    const-string v22, "tables"

    move-object v0, v13

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v22

    move v0, v6

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    move-object v12, v13

    .line 442
    .end local v6           #i:I
    .end local v13           #result:Lorg/json/JSONObject;
    .end local v17           #rm_tables:Lorg/json/JSONArray;
    .end local v20           #tables:Lorg/json/JSONArray;
    .restart local v12       #result:Lorg/json/JSONObject;
    :goto_1
    return-object v12

    .line 408
    .end local v12           #result:Lorg/json/JSONObject;
    .restart local v6       #i:I
    .restart local v13       #result:Lorg/json/JSONObject;
    .restart local v17       #rm_tables:Lorg/json/JSONArray;
    .restart local v20       #tables:Lorg/json/JSONArray;
    :cond_0
    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 409
    .local v19, table:Lorg/json/JSONObject;
    sget-object v22, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Sync process new --> table:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", key:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "key"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 411
    .local v16, rm_table:Lorg/json/JSONObject;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 412
    const-string v22, "name"

    const-string v23, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string v22, "key"

    const-string v23, "key"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v22, "records"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 416
    .local v18, rs:Lorg/json/JSONArray;
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 417
    .local v15, rm_rs:Lorg/json/JSONArray;
    const-string v22, "records"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    sget-object v22, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Sync process new --> record count:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v22

    move v0, v7

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 407
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 420
    :cond_1
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 421
    .local v21, values:Landroid/content/ContentValues;
    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 422
    .local v9, record:Lorg/json/JSONObject;
    const-string v22, "fields"

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 423
    .local v5, fields:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, k:I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v22

    move v0, v8

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 428
    const-string v22, "remote_id"

    const-string v23, "remote_id"

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v22, "sync"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v22, v0

    const-string v23, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 432
    .local v10, remote_id:J
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 433
    .local v14, rm_record:Lorg/json/JSONObject;
    invoke-virtual {v15, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 434
    const-string v22, "row_id"

    const-string v23, "remote_id"

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    move-object v0, v14

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 435
    const-string v22, "remote_id"

    move-object v0, v14

    move-object/from16 v1, v22

    move-wide v2, v10

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 419
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 424
    .end local v10           #remote_id:J
    .end local v14           #rm_record:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 425
    .local v4, field:Lorg/json/JSONObject;
    sget-object v22, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Sync process new --> field name:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "name"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", value:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "value"

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v22, "name"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "value"

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 440
    .end local v4           #field:Lorg/json/JSONObject;
    .end local v5           #fields:Lorg/json/JSONArray;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v8           #k:I
    .end local v9           #record:Lorg/json/JSONObject;
    .end local v13           #result:Lorg/json/JSONObject;
    .end local v15           #rm_rs:Lorg/json/JSONArray;
    .end local v16           #rm_table:Lorg/json/JSONObject;
    .end local v17           #rm_tables:Lorg/json/JSONArray;
    .end local v18           #rs:Lorg/json/JSONArray;
    .end local v19           #table:Lorg/json/JSONObject;
    .end local v20           #tables:Lorg/json/JSONArray;
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v12       #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v22

    goto/16 :goto_1

    .end local v12           #result:Lorg/json/JSONObject;
    .restart local v13       #result:Lorg/json/JSONObject;
    :catch_1
    move-exception v22

    move-object v12, v13

    .end local v13           #result:Lorg/json/JSONObject;
    .restart local v12       #result:Lorg/json/JSONObject;
    goto/16 :goto_1
.end method

.method private syncDownload(Lorg/apache/http/client/HttpClient;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "client"
    .parameter "action"
    .parameter "uid"

    .prologue
    const-string v9, "UTF-8"

    .line 659
    const-string v7, ""

    .line 660
    .local v7, result:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v9, "http://android.wareone.com/sync_download.php"

    invoke-direct {v2, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 663
    .local v2, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 664
    .local v5, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "act"

    invoke-direct {v9, v10, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "uid"

    invoke-direct {v9, v10, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 669
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v10, "Execute HTTP Post Request"

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-interface {p1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 671
    .local v6, response:Lorg/apache/http/HttpResponse;
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Response Code --> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_0

    .line 673
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v10, "Read response text"

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 676
    .local v3, is:Ljava/io/InputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 678
    .local v0, _data:[B
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v9, 0x400

    invoke-direct {v1, v9}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 679
    .local v1, buf:Lorg/apache/http/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, n:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_1

    .line 682
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 683
    .end local v7           #result:Ljava/lang/String;
    .local v8, result:Ljava/lang/String;
    :try_start_1
    sget-object v9, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "response text ---> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v8

    .line 695
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #n:I
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #result:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v7

    .line 680
    .restart local v0       #_data:[B
    .restart local v1       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #n:I
    .restart local v5       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v1, v0, v9, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 687
    .end local v0           #_data:[B
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #n:I
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 690
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v7           #result:Ljava/lang/String;
    .restart local v0       #_data:[B
    .restart local v1       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #n:I
    .restart local v5       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #result:Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v7, v8

    .end local v8           #result:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    goto :goto_1

    .line 687
    .end local v7           #result:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    :catch_3
    move-exception v9

    move-object v7, v8

    .end local v8           #result:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private syncUpload(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 17
    .parameter "client"
    .parameter "data"
    .parameter "action"
    .parameter "uid"

    .prologue
    .line 609
    const/4 v11, 0x0

    .line 610
    .local v11, result:Lorg/json/JSONObject;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    const-string v14, "http://android.wareone.com/sync_upload.php"

    invoke-direct {v6, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 613
    .local v6, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    const/4 v14, 0x2

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 614
    .local v9, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "act"

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "uid"

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "data"

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v15, "UTF-8"

    invoke-direct {v14, v9, v15}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 620
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v15, "Execute HTTP Post Request"

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 622
    .local v10, response:Lorg/apache/http/HttpResponse;
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Response Code --> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_1

    .line 624
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v15, "Read response text"

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 627
    .local v7, is:Ljava/io/InputStream;
    const/16 v14, 0x400

    new-array v3, v14, [B

    .line 629
    .local v3, _data:[B
    new-instance v4, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v14, 0x400

    invoke-direct {v4, v14}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 630
    .local v4, buf:Lorg/apache/http/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, n:I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_0

    .line 633
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 634
    .local v13, str:Ljava/lang/String;
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "response text ---> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 636
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v11           #result:Lorg/json/JSONObject;
    .local v12, result:Lorg/json/JSONObject;
    move-object v11, v12

    .line 655
    .end local v3           #_data:[B
    .end local v4           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #n:I
    .end local v9           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #result:Lorg/json/JSONObject;
    .end local v13           #str:Ljava/lang/String;
    .restart local v11       #result:Lorg/json/JSONObject;
    :goto_1
    return-object v11

    .line 631
    .restart local v3       #_data:[B
    .restart local v4       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #n:I
    .restart local v9       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    const/4 v14, 0x0

    :try_start_2
    invoke-virtual {v4, v3, v14, v8}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 645
    .end local v3           #_data:[B
    .end local v4           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #n:I
    .end local v9           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 647
    .local v5, e:Lorg/apache/http/client/ClientProtocolException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 638
    .end local v5           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v3       #_data:[B
    .restart local v4       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #n:I
    .restart local v9       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #str:Ljava/lang/String;
    :catch_1
    move-exception v14

    move-object v5, v14

    .line 639
    .local v5, e:Lorg/json/JSONException;
    :try_start_3
    sget-object v14, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 649
    .end local v3           #_data:[B
    .end local v4           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v5           #e:Lorg/json/JSONException;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #n:I
    .end local v9           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #str:Ljava/lang/String;
    :catch_2
    move-exception v14

    move-object v5, v14

    .line 651
    .local v5, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 642
    .end local v5           #e:Ljava/io/IOException;
    .restart local v9       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1
.end method

.method private uploadAll()V
    .locals 6

    .prologue
    const-string v3, "get upload all --> "

    const-string v3, "all"

    .line 271
    sget-object v3, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v4, "doSybc on new thread"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/wareone/tappmt/SyncRunner;->m_uid:Ljava/lang/String;

    .line 276
    .local v2, uid:Ljava/lang/String;
    sget-object v3, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v4, "Create a new HttpClient and Post Header"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 279
    .local v0, httpclient:Lorg/apache/http/client/HttpClient;
    iget-object v3, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->beginTransaction()V

    .line 281
    :try_start_0
    iget-object v3, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v4, "all"

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 282
    .local v1, json:Lorg/json/JSONObject;
    sget-object v3, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get upload all --> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v3, "all"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/wareone/tappmt/SyncRunner;->syncUpload(Lorg/apache/http/client/HttpClient;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 284
    sget-object v3, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get upload all --> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string v5, "NULL"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v3, "all"

    invoke-direct {p0, v1, v3}, Lcom/wareone/tappmt/SyncRunner;->completeClient(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iget-object v3, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 290
    return-void

    .line 284
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    goto :goto_0

    .line 287
    .end local v1           #json:Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    .line 288
    iget-object v4, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->endTransaction()V

    .line 289
    throw v3
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x493e0

    const/4 v3, 0x0

    .line 71
    sget-object v1, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v2, "task thread start"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_Ctx:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 74
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 76
    :cond_0
    iget v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_action:I

    packed-switch v1, :pswitch_data_0

    .line 109
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    return-void

    .line 78
    :pswitch_0
    invoke-direct {p0}, Lcom/wareone/tappmt/SyncRunner;->checkAccount()V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0}, Lcom/wareone/tappmt/SyncRunner;->createAccount()V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0}, Lcom/wareone/tappmt/SyncRunner;->login()V

    goto :goto_0

    .line 87
    :pswitch_3
    invoke-direct {p0}, Lcom/wareone/tappmt/SyncRunner;->uploadAll()V

    goto :goto_0

    .line 90
    :pswitch_4
    invoke-direct {p0}, Lcom/wareone/tappmt/SyncRunner;->downloadAll()V

    goto :goto_0

    .line 93
    :pswitch_5
    sget-object v1, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v2, "open database"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 95
    invoke-direct {p0}, Lcom/wareone/tappmt/SyncRunner;->doSynchronize()V

    .line 96
    sget-object v1, Lcom/wareone/tappmt/SyncRunner;->TAG:Ljava/lang/String;

    const-string v2, "close database"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 98
    iget-boolean v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_repeat:Z

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 104
    :cond_2
    iget-boolean v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_repeat:Z

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/wareone/tappmt/SyncRunner;->m_handler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
