.class Lcom/wooboo/adlib_android/__$1;
.super Ljava/lang/Thread;
.source "__.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/__;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wooboo/adlib_android/__;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/__;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 67
    const/16 v27, 0x0

    .line 68
    .local v27, u:Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    move-object/from16 v29, v0

    #getter for: Lcom/wooboo/adlib_android/__;->f:B
    invoke-static/range {v29 .. v29}, Lcom/wooboo/adlib_android/__;->access$0(Lcom/wooboo/adlib_android/__;)B

    move-result v23

    .line 69
    .local v23, pe:I
    const/4 v7, 0x0

    .line 70
    .local v7, du:Ljava/lang/String;
    const/4 v15, 0x0

    .line 71
    .local v15, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 73
    .local v5, con:Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    move-object/from16 v29, v0

    #getter for: Lcom/wooboo/adlib_android/__;->n:Lcom/wooboo/adlib_android/__$N;
    invoke-static/range {v29 .. v29}, Lcom/wooboo/adlib_android/__;->access$1(Lcom/wooboo/adlib_android/__;)Lcom/wooboo/adlib_android/__$N;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    move-object/from16 v29, v0

    #getter for: Lcom/wooboo/adlib_android/__;->n:Lcom/wooboo/adlib_android/__$N;
    invoke-static/range {v29 .. v29}, Lcom/wooboo/adlib_android/__;->access$1(Lcom/wooboo/adlib_android/__;)Lcom/wooboo/adlib_android/__$N;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/wooboo/adlib_android/__$N;->onNetworkActivityStart()V

    .line 76
    :cond_0
    new-instance v28, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    move-object/from16 v29, v0

    #getter for: Lcom/wooboo/adlib_android/__;->d:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/wooboo/adlib_android/__;->access$2(Lcom/wooboo/adlib_android/__;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    .local v28, url:Ljava/net/URL;
    sget v29, Lcom/wooboo/adlib_android/___;->k:I

    sget v30, Lcom/wooboo/adlib_android/___;->g:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 78
    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 79
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 80
    invoke-static {}, Lcom/wooboo/adlib_android/__;->access$3()I

    move-result v29

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 81
    invoke-static {}, Lcom/wooboo/adlib_android/__;->access$3()I

    move-result v29

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 98
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 99
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v27

    .line 111
    .end local v28           #url:Ljava/net/URL;
    :goto_1
    const/16 v29, 0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 113
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 147
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 148
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v11, i:Landroid/content/Intent;
    packed-switch v23, :pswitch_data_0

    .line 253
    :goto_3
    const/high16 v29, 0x1000

    move-object v0, v11

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    move-object/from16 v29, v0

    #getter for: Lcom/wooboo/adlib_android/__;->_:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/wooboo/adlib_android/__;->access$5(Lcom/wooboo/adlib_android/__;)Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    .line 260
    .end local v11           #i:Landroid/content/Intent;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    move-object/from16 v29, v0

    #getter for: Lcom/wooboo/adlib_android/__;->n:Lcom/wooboo/adlib_android/__$N;
    invoke-static/range {v29 .. v29}, Lcom/wooboo/adlib_android/__;->access$1(Lcom/wooboo/adlib_android/__;)Lcom/wooboo/adlib_android/__$N;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    move-object/from16 v29, v0

    #getter for: Lcom/wooboo/adlib_android/__;->n:Lcom/wooboo/adlib_android/__$N;
    invoke-static/range {v29 .. v29}, Lcom/wooboo/adlib_android/__;->access$1(Lcom/wooboo/adlib_android/__;)Lcom/wooboo/adlib_android/__$N;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/wooboo/adlib_android/__$N;->onNetworkActivityEnd()V

    .line 263
    :cond_4
    return-void

    .line 82
    .restart local v28       #url:Ljava/net/URL;
    :cond_5
    :try_start_3
    sget v29, Lcom/wooboo/adlib_android/___;->k:I

    sget v30, Lcom/wooboo/adlib_android/___;->h:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_6

    sget v29, Lcom/wooboo/adlib_android/___;->k:I

    sget v30, Lcom/wooboo/adlib_android/___;->i:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 83
    :cond_6
    new-instance v24, Ljava/net/Proxy;

    sget-object v29, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 84
    new-instance v30, Ljava/net/InetSocketAddress;

    const-string v31, "10.0.0.172"

    const/16 v32, 0x50

    invoke-direct/range {v30 .. v32}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 83
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 85
    .local v24, proxy:Ljava/net/Proxy;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 86
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 87
    invoke-static {}, Lcom/wooboo/adlib_android/__;->access$3()I

    move-result v29

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 88
    invoke-static {}, Lcom/wooboo/adlib_android/__;->access$3()I

    move-result v29

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 100
    .end local v24           #proxy:Ljava/net/Proxy;
    .end local v28           #url:Ljava/net/URL;
    :catch_0
    move-exception v29

    move-object/from16 v9, v29

    .line 101
    .local v9, e:Ljava/net/MalformedURLException;
    const-string v29, "Wooboo SDK"

    .line 102
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Malformed click URL.  Will try to follow anyway."

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    move-object/from16 v31, v0

    #getter for: Lcom/wooboo/adlib_android/__;->d:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/wooboo/adlib_android/__;->access$2(Lcom/wooboo/adlib_android/__;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 102
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 101
    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 89
    .end local v9           #e:Ljava/net/MalformedURLException;
    .restart local v28       #url:Ljava/net/URL;
    :cond_7
    :try_start_4
    sget v29, Lcom/wooboo/adlib_android/___;->k:I

    sget v30, Lcom/wooboo/adlib_android/___;->j:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 90
    new-instance v24, Ljava/net/Proxy;

    sget-object v29, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 91
    new-instance v30, Ljava/net/InetSocketAddress;

    const-string v31, "10.0.0.200"

    const/16 v32, 0x50

    invoke-direct/range {v30 .. v32}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 90
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 92
    .restart local v24       #proxy:Ljava/net/Proxy;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 93
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 94
    invoke-static {}, Lcom/wooboo/adlib_android/__;->access$3()I

    move-result v29

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 95
    invoke-static {}, Lcom/wooboo/adlib_android/__;->access$3()I

    move-result v29

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 104
    .end local v24           #proxy:Ljava/net/Proxy;
    .end local v28           #url:Ljava/net/URL;
    :catch_1
    move-exception v29

    move-object/from16 v9, v29

    .line 107
    .local v9, e:Ljava/io/IOException;
    const-string v29, "Wooboo SDK"

    .line 108
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Could not determine final click destination URL.  Will try to follow anyway.  "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wooboo/adlib_android/__$1;->this$0:Lcom/wooboo/adlib_android/__;

    move-object/from16 v31, v0

    #getter for: Lcom/wooboo/adlib_android/__;->d:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/wooboo/adlib_android/__;->access$2(Lcom/wooboo/adlib_android/__;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 108
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 106
    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 114
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v20

    .line 116
    .local v20, ne:Ljava/lang/NullPointerException;
    const-string v29, "Wooboo SDK"

    .line 117
    const-string v30, "Could not get ad click url from wooboo server."

    .line 116
    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 122
    .end local v20           #ne:Ljava/lang/NullPointerException;
    :cond_8
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    .line 123
    if-eqz v15, :cond_9

    .line 124
    invoke-virtual {v15}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 125
    .local v3, an:I
    new-array v6, v3, [B

    .line 126
    .local v6, data:[B
    const/16 v19, 0x0

    .local v19, n:I
    :goto_5
    move/from16 v0, v19

    move v1, v3

    if-lt v0, v1, :cond_b

    .line 129
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .end local v7           #du:Ljava/lang/String;
    .local v8, du:Ljava/lang/String;
    move-object v7, v8

    .line 135
    .end local v3           #an:I
    .end local v6           #data:[B
    .end local v8           #du:Ljava/lang/String;
    .end local v19           #n:I
    .restart local v7       #du:Ljava/lang/String;
    :cond_9
    if-eqz v15, :cond_a

    .line 136
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 138
    :cond_a
    if-eqz v5, :cond_2

    .line 139
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 141
    :catch_3
    move-exception v29

    move-object/from16 v10, v29

    .line 142
    .local v10, ee:Ljava/lang/Exception;
    const-string v29, "Wooboo SDK"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Could not close stream"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 127
    .end local v10           #ee:Ljava/lang/Exception;
    .restart local v3       #an:I
    .restart local v6       #data:[B
    .restart local v19       #n:I
    :cond_b
    :try_start_7
    invoke-virtual {v15, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 126
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 131
    .end local v3           #an:I
    .end local v6           #data:[B
    .end local v19           #n:I
    :catch_4
    move-exception v29

    move-object/from16 v9, v29

    .line 132
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_8
    const-string v29, "Wooboo SDK"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Connection off "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 135
    if-eqz v15, :cond_c

    .line 136
    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 138
    :cond_c
    if-eqz v5, :cond_2

    .line 139
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 141
    :catch_5
    move-exception v29

    move-object/from16 v10, v29

    .line 142
    .restart local v10       #ee:Ljava/lang/Exception;
    const-string v29, "Wooboo SDK"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Could not close stream"

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 133
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #ee:Ljava/lang/Exception;
    :catchall_0
    move-exception v29

    .line 135
    if-eqz v15, :cond_d

    .line 136
    :try_start_a
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 138
    :cond_d
    if-eqz v5, :cond_e

    .line 139
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 145
    :cond_e
    :goto_6
    throw v29

    .line 141
    :catch_6
    move-exception v30

    move-object/from16 v10, v30

    .line 142
    .restart local v10       #ee:Ljava/lang/Exception;
    const-string v30, "Wooboo SDK"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Could not close stream"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 153
    .end local v10           #ee:Ljava/lang/Exception;
    .restart local v11       #i:Landroid/content/Intent;
    :pswitch_0
    :try_start_b
    const-string v29, "android.intent.action.VIEW"

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_3

    .line 155
    :catch_7
    move-exception v29

    move-object/from16 v9, v29

    .line 156
    .local v9, e:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3

    .line 166
    .end local v9           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    :try_start_c
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 167
    .local v13, iii:Ljava/lang/String;
    const-string v29, "android.intent.action.VIEW"

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_3

    .line 169
    .end local v13           #iii:Ljava/lang/String;
    :catch_8
    move-exception v29

    move-object/from16 v9, v29

    .line 170
    .restart local v9       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_3

    .line 175
    .end local v9           #e:Ljava/lang/NullPointerException;
    :pswitch_2
    :try_start_d
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "tel:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 176
    const-string v29, "android.intent.action.DIAL"

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_3

    .line 178
    :catch_9
    move-exception v29

    move-object/from16 v9, v29

    .line 179
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 183
    .end local v9           #e:Ljava/lang/Exception;
    :pswitch_3
    const/16 v17, 0x0

    .line 184
    .local v17, longAndLat:Ljava/lang/String;
    const/16 v16, 0x0

    .line 185
    .local v16, keyWord:Ljava/lang/String;
    const-string v29, "|"

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 186
    const-string v29, "|"

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 187
    .local v14, index:I
    const/16 v29, 0x0

    move-object v0, v7

    move/from16 v1, v29

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 188
    add-int/lit8 v29, v14, 0x1

    move-object v0, v7

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 194
    .end local v14           #index:I
    :goto_7
    :try_start_e
    const-string v29, "android.intent.action.VIEW"

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v29, "com.google.android.apps.maps"

    .line 196
    const-string v30, "com.google.android.maps.MapsActivity"

    .line 195
    move-object v0, v11

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "http://maps.google.com/maps?q="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 200
    const-string v30, ")&z=22"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 198
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 197
    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto/16 :goto_3

    .line 201
    :catch_a
    move-exception v29

    move-object/from16 v9, v29

    .line 202
    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 190
    .end local v9           #e:Ljava/lang/Exception;
    :cond_f
    move-object/from16 v17, v7

    .line 191
    const-string v16, "I am here"

    goto :goto_7

    .line 207
    .end local v16           #keyWord:Ljava/lang/String;
    .end local v17           #longAndLat:Ljava/lang/String;
    :pswitch_4
    :try_start_f
    new-instance v12, Landroid/content/Intent;

    const-string v29, "android.intent.action.WEB_SEARCH"

    move-object v0, v12

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 208
    .end local v11           #i:Landroid/content/Intent;
    .local v12, i:Landroid/content/Intent;
    :try_start_10
    const-string v29, "query"

    move-object v0, v12

    move-object/from16 v1, v29

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    move-object v11, v12

    .end local v12           #i:Landroid/content/Intent;
    .restart local v11       #i:Landroid/content/Intent;
    goto/16 :goto_3

    .line 209
    :catch_b
    move-exception v29

    move-object/from16 v9, v29

    .line 210
    .restart local v9       #e:Ljava/lang/Exception;
    :goto_8
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 214
    .end local v9           #e:Ljava/lang/Exception;
    :pswitch_5
    const/16 v21, 0x0

    .line 215
    .local v21, no:Ljava/lang/String;
    const/4 v4, 0x0

    .line 216
    .local v4, body:Ljava/lang/String;
    const-string v29, "|"

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 217
    const-string v29, "|"

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 218
    .restart local v14       #index:I
    const/16 v29, 0x0

    move-object v0, v7

    move/from16 v1, v29

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 219
    add-int/lit8 v29, v14, 0x1

    move-object v0, v7

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    .end local v14           #index:I
    :cond_10
    :try_start_11
    const-string v29, "android.intent.action.SENDTO"

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "smsto:"

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    const-string v29, "sms_body"

    move-object v0, v11

    move-object/from16 v1, v29

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto/16 :goto_3

    .line 225
    :catch_c
    move-exception v29

    move-object/from16 v9, v29

    .line 226
    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 231
    .end local v4           #body:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v21           #no:Ljava/lang/String;
    :pswitch_6
    :try_start_12
    const-string v29, "android.intent.action.SEND"

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const/16 v18, 0x0

    .line 233
    .local v18, mail:Ljava/lang/String;
    const/16 v22, 0x0

    .line 234
    .local v22, object:Ljava/lang/String;
    const/16 v25, 0x0

    .line 235
    .local v25, subject:Ljava/lang/String;
    const-string v29, "|"

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 236
    #calls: Lcom/wooboo/adlib_android/__;->sm(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v7}, Lcom/wooboo/adlib_android/__;->access$4(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, data:[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v18, v6, v29

    .line 238
    const/16 v29, 0x1

    aget-object v25, v6, v29

    .line 239
    const/16 v29, 0x2

    aget-object v22, v6, v29

    .line 241
    .end local v6           #data:[Ljava/lang/String;
    :cond_11
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 242
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v29, 0x0

    aput-object v18, v26, v29

    .line 243
    .local v26, tos:[Ljava/lang/String;
    const-string v29, "android.intent.extra.EMAIL"

    move-object v0, v11

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v29, "android.intent.extra.TEXT"

    move-object v0, v11

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v29, "android.intent.extra.SUBJECT"

    move-object v0, v11

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v29, "message/rfc882"

    move-object v0, v11

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    goto/16 :goto_3

    .line 247
    .end local v18           #mail:Ljava/lang/String;
    .end local v22           #object:Ljava/lang/String;
    .end local v25           #subject:Ljava/lang/String;
    .end local v26           #tos:[Ljava/lang/String;
    :catch_d
    move-exception v29

    move-object/from16 v9, v29

    .line 248
    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 256
    .end local v9           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v29

    move-object/from16 v9, v29

    .line 257
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v29, "Wooboo SDK"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Could not intent to "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 209
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #i:Landroid/content/Intent;
    .restart local v12       #i:Landroid/content/Intent;
    :catch_f
    move-exception v29

    move-object/from16 v9, v29

    move-object v11, v12

    .end local v12           #i:Landroid/content/Intent;
    .restart local v11       #i:Landroid/content/Intent;
    goto/16 :goto_8

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
