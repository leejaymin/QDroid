.class public Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/twilightfantasy/tpgusagemeter/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LookupAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field volatile mReturnRequest:Z

.field final synthetic this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;


# direct methods
.method public constructor <init>(Lorg/twilightfantasy/tpgusagemeter/MainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45
    .parameter "params"

    .prologue
    .line 198
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v32, v0

    const/16 v42, 0x0

    .line 199
    new-instance v43, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask$1;-><init>(Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;)V

    aput-object v43, v32, v42

    .line 214
    .local v32, trustAllCerts:[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v42, "TLS"

    invoke-static/range {v42 .. v42}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v30

    .line 215
    .local v30, sc:Ljavax/net/ssl/SSLContext;
    const/16 v42, 0x0

    new-instance v43, Ljava/security/SecureRandom;

    invoke-direct/range {v43 .. v43}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    move-object/from16 v2, v32

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 216
    invoke-virtual/range {v30 .. v30}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    .end local v30           #sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    :try_start_1
    const-string v24, "https://cyberstore.tpg.com.au/your_account/index.php?function=view_all_mobile"

    .line 224
    .local v24, loginPostRequestURL:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "check_username"

    const-string v44, "UTF-8"

    invoke-static/range {v43 .. v44}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mUsername:Ljava/lang/String;

    move-object/from16 v43, v0

    const-string v44, "UTF-8"

    invoke-static/range {v43 .. v44}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "&"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 226
    const-string v43, "password"

    const-string v44, "UTF-8"

    invoke-static/range {v43 .. v44}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPassword:Ljava/lang/String;

    move-object/from16 v43, v0

    const-string v44, "UTF-8"

    invoke-static/range {v43 .. v44}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 224
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 228
    .local v22, loginPostRequestParams:Ljava/lang/String;
    const-string v23, ""

    .line 229
    .local v23, loginPostRequestResponse:Ljava/lang/String;
    const-string v5, ""

    .line 231
    .local v5, cookie:Ljava/lang/String;
    const/16 v31, 0x0

    .line 232
    .local v31, taskComplete:Z
    :goto_1
    if-eqz v31, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_9

    const/16 v42, 0x0

    .line 518
    .end local v5           #cookie:Ljava/lang/String;
    .end local v22           #loginPostRequestParams:Ljava/lang/String;
    .end local v23           #loginPostRequestResponse:Ljava/lang/String;
    .end local v24           #loginPostRequestURL:Ljava/lang/String;
    .end local v31           #taskComplete:Z
    .end local p1
    :goto_2
    return-object v42

    .line 234
    .restart local v5       #cookie:Ljava/lang/String;
    .restart local v22       #loginPostRequestParams:Ljava/lang/String;
    .restart local v23       #loginPostRequestResponse:Ljava/lang/String;
    .restart local v24       #loginPostRequestURL:Ljava/lang/String;
    .restart local v31       #taskComplete:Z
    .restart local p1
    :cond_0
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 236
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 237
    .local v25, loginUrl:Ljava/net/URL;
    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v26

    check-cast v26, Ljavax/net/ssl/HttpsURLConnection;

    .line 239
    .local v26, loginUrlConnection:Ljavax/net/ssl/HttpsURLConnection;
    const/16 v42, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 240
    const/16 v42, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 241
    const/16 v42, 0x3a98

    move-object/from16 v0, v26

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 242
    const/16 v42, 0x4e20

    move-object/from16 v0, v26

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 243
    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 245
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1

    const/16 v42, 0x0

    goto :goto_2

    .line 247
    :cond_1
    new-instance v20, Ljava/io/BufferedWriter;

    .line 248
    new-instance v42, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 247
    move-object/from16 v0, v20

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 249
    .local v20, loginBw:Ljava/io/BufferedWriter;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedWriter;->flush()V

    .line 251
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedWriter;->close()V

    .line 253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_2

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 255
    :cond_2
    new-instance v19, Ljava/io/BufferedReader;

    .line 256
    new-instance v42, Ljava/io/InputStreamReader;

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 255
    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 258
    .local v19, loginBr:Ljava/io/BufferedReader;
    const-string v21, ""

    .line 259
    .local v21, loginLine:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_3

    .line 265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_5

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 260
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_4

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 262
    :cond_4
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_3

    .line 268
    :cond_5
    const/16 v17, 0x0

    .line 269
    .local v17, headerName:Ljava/lang/String;
    const-string v5, ""

    .line 270
    const/16 v18, 0x1

    .local v18, i:I
    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_6

    .line 277
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V

    .line 279
    const-string v42, ""

    move-object v0, v5

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_8

    const-string v42, "TPGSESS"

    move-object v0, v5

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_8

    .line 280
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 281
    const/16 v31, 0x1

    goto/16 :goto_1

    .line 271
    :cond_6
    const-string v42, "Set-Cookie"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 273
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 284
    :cond_8
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x3

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 511
    .end local v5           #cookie:Ljava/lang/String;
    .end local v17           #headerName:Ljava/lang/String;
    .end local v18           #i:I
    .end local v19           #loginBr:Ljava/io/BufferedReader;
    .end local v20           #loginBw:Ljava/io/BufferedWriter;
    .end local v21           #loginLine:Ljava/lang/String;
    .end local v22           #loginPostRequestParams:Ljava/lang/String;
    .end local v23           #loginPostRequestResponse:Ljava/lang/String;
    .end local v24           #loginPostRequestURL:Ljava/lang/String;
    .end local v25           #loginUrl:Ljava/net/URL;
    .end local v26           #loginUrlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v31           #taskComplete:Z
    .end local p1
    :catch_0
    move-exception v42

    move-object/from16 v15, v42

    .line 512
    .local v15, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_29

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 294
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v5       #cookie:Ljava/lang/String;
    .restart local v22       #loginPostRequestParams:Ljava/lang/String;
    .restart local v23       #loginPostRequestResponse:Ljava/lang/String;
    .restart local v24       #loginPostRequestURL:Ljava/lang/String;
    .restart local v31       #taskComplete:Z
    .restart local p1
    :cond_9
    const/16 v42, 0x1

    :try_start_2
    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x4

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 295
    invoke-static/range {v23 .. v23}, Lorg/twilightfantasy/tpgusagemeter/ResponseParser;->getPlanIDFromLoginResponse(Ljava/lang/String;)I

    move-result v27

    .line 297
    .local v27, numPlans:I
    if-lez v27, :cond_c

    .line 298
    const-string v29, ""

    .line 299
    .local v29, plans:Ljava/lang/String;
    const/16 v18, 0x0

    .end local p1
    .restart local v18       #i:I
    :goto_5
    sget-object v42, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v18

    move/from16 v1, v42

    if-lt v0, v1, :cond_a

    .line 304
    const/16 v42, 0x3

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x5

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    sget-object v44, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x2

    aput-object v29, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 311
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_d

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 300
    :cond_a
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v43, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 301
    sget-object v42, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    const/16 v43, 0x1

    sub-int v42, v42, v43

    move/from16 v0, v18

    move/from16 v1, v42

    if-eq v0, v1, :cond_b

    .line 302
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, ","

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 299
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 307
    .end local v18           #i:I
    .end local v29           #plans:Ljava/lang/String;
    .restart local p1
    :cond_c
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x6

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 308
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 319
    .end local p1
    .restart local v18       #i:I
    .restart local v29       #plans:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlansToLookup:Ljava/lang/String;

    move-object/from16 v42, v0

    const-string v43, ","

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, certainPlan:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlansToLookup:Ljava/lang/String;

    move-object/from16 v42, v0

    const-string v43, ""

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_f

    .line 325
    :cond_e
    const/16 v28, 0x0

    .local v28, planIndex:I
    :goto_6
    sget-object v42, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v28

    move/from16 v1, v42

    if-lt v0, v1, :cond_10

    .line 347
    :goto_7
    sget-object v42, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_e

    .line 355
    .end local v28           #planIndex:I
    :cond_f
    const/16 v28, 0x0

    .restart local v28       #planIndex:I
    :goto_8
    sget-object v42, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v28

    move/from16 v1, v42

    if-lt v0, v1, :cond_14

    .line 502
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_2a

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 327
    :cond_10
    const/16 v16, 0x0

    .line 328
    .local v16, foundPlan:Z
    const/4 v6, 0x0

    .local v6, cpIndex:I
    :goto_9
    move-object v0, v4

    array-length v0, v0

    move/from16 v42, v0

    move v0, v6

    move/from16 v1, v42

    if-lt v0, v1, :cond_11

    .line 336
    :goto_a
    if-nez v16, :cond_13

    .line 338
    sget-object v42, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 339
    sget-object v42, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSummaryList:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 330
    :cond_11
    aget-object v42, v4, v6

    sget-object v43, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v42

    if-nez v42, :cond_12

    .line 331
    const/16 v16, 0x1

    .line 332
    goto :goto_a

    .line 328
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 325
    :cond_13
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 358
    .end local v6           #cpIndex:I
    .end local v16           #foundPlan:Z
    :cond_14
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x15

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    sget-object v44, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 360
    const-string v38, "https://cyberstore.tpg.com.au/your_account/index.php?function=view_all_mobile"

    .line 362
    .local v38, usageIndexPostRequestURL:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "viewdetails|"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v44, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const-string v44, "UTF-8"

    invoke-static/range {v43 .. v44}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 363
    const-string v43, "Mobile Usage"

    const-string v44, "UTF-8"

    invoke-static/range {v43 .. v44}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 362
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 364
    .local v36, usageIndexPostRequestParams:Ljava/lang/String;
    const-string v37, ""

    .line 366
    .local v37, usageIndexPostRequestResponse:Ljava/lang/String;
    const/16 v31, 0x0

    .line 367
    :goto_b
    if-eqz v31, :cond_15

    .line 418
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1c

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 369
    :cond_15
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x7

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 370
    new-instance v39, Ljava/net/URL;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 371
    .local v39, usageIndexUrl:Ljava/net/URL;
    invoke-virtual/range {v39 .. v39}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v40

    .line 372
    .local v40, usageIndexUrlConnection:Ljava/net/URLConnection;
    const-string v42, "cookie"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/16 v42, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 374
    const/16 v42, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 375
    const/16 v42, 0x3a98

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 376
    const/16 v42, 0x4e20

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 377
    invoke-virtual/range {v40 .. v40}, Ljava/net/URLConnection;->connect()V

    .line 379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_16

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 381
    :cond_16
    new-instance v34, Ljava/io/BufferedWriter;

    .line 382
    new-instance v42, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {v40 .. v40}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 381
    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 383
    .local v34, usageIndexBw:Ljava/io/BufferedWriter;
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {v34 .. v34}, Ljava/io/BufferedWriter;->flush()V

    .line 385
    invoke-virtual/range {v34 .. v34}, Ljava/io/BufferedWriter;->close()V

    .line 387
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_17

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 389
    :cond_17
    new-instance v33, Ljava/io/BufferedReader;

    .line 390
    new-instance v42, Ljava/io/InputStreamReader;

    invoke-virtual/range {v40 .. v40}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 389
    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 392
    .local v33, usageIndexBr:Ljava/io/BufferedReader;
    const-string v35, ""

    .line 393
    .local v35, usageIndexLine:Ljava/lang/String;
    :goto_c
    invoke-virtual/range {v33 .. v33}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v35

    if-nez v35, :cond_18

    .line 398
    invoke-virtual/range {v33 .. v33}, Ljava/io/BufferedReader;->close()V

    .line 400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1a

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 394
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_19

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 396
    :cond_19
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    goto :goto_c

    .line 403
    :cond_1a
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v42

    if-eqz v42, :cond_1b

    .line 405
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x8

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 406
    const/16 v31, 0x1

    goto/16 :goto_b

    .line 410
    :cond_1b
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x9

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 419
    .end local v33           #usageIndexBr:Ljava/io/BufferedReader;
    .end local v34           #usageIndexBw:Ljava/io/BufferedWriter;
    .end local v35           #usageIndexLine:Ljava/lang/String;
    .end local v39           #usageIndexUrl:Ljava/net/URL;
    .end local v40           #usageIndexUrlConnection:Ljava/net/URLConnection;
    :cond_1c
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xa

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 420
    invoke-static/range {v37 .. v37}, Lorg/twilightfantasy/tpgusagemeter/ResponseParser;->getCurrentChargesIDFromUsageIndexResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 421
    .local v9, currentChargesID:Ljava/lang/String;
    if-eqz v9, :cond_1d

    .line 422
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xb

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    aput-object v9, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1e

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 425
    :cond_1d
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xc

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 426
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 430
    :cond_1e
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "https://cyberstore.tpg.com.au/your_account/index.php?function=view_all_mobile&plan_id="

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v43, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "&chg_id="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 431
    .local v12, currentChargesPostRequestURL:Ljava/lang/String;
    const-string v11, ""

    .line 433
    .local v11, currentChargesPostRequestResponse:Ljava/lang/String;
    const/16 v31, 0x0

    .line 434
    :goto_d
    if-eqz v31, :cond_1f

    .line 487
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_27

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 436
    :cond_1f
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xd

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 437
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 438
    .local v13, currentChargesUrl:Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    .line 439
    .local v14, currentChargesUrlConnection:Ljava/net/URLConnection;
    const-string v42, "cookie"

    move-object v0, v14

    move-object/from16 v1, v42

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/16 v42, 0x1

    move-object v0, v14

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 441
    const/16 v42, 0x1

    move-object v0, v14

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 442
    const/16 v42, 0x3a98

    move-object v0, v14

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 443
    const/16 v42, 0x4e20

    move-object v0, v14

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 444
    invoke-virtual {v14}, Ljava/net/URLConnection;->connect()V

    .line 446
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_20

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 448
    :cond_20
    new-instance v8, Ljava/io/BufferedWriter;

    .line 449
    new-instance v42, Ljava/io/OutputStreamWriter;

    invoke-virtual {v14}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 448
    move-object v0, v8

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 450
    .local v8, currentChargesBw:Ljava/io/BufferedWriter;
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_21

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 454
    :cond_21
    new-instance v7, Ljava/io/BufferedReader;

    .line 455
    new-instance v42, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 454
    move-object v0, v7

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 459
    .local v7, currentChargesBr:Ljava/io/BufferedReader;
    const-string v10, ""

    .line 460
    .local v10, currentChargesLine:Ljava/lang/String;
    :cond_22
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_23

    .line 472
    :goto_e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 474
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_25

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 461
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    move/from16 v42, v0

    if-eqz v42, :cond_24

    const/16 v42, 0x0

    goto/16 :goto_2

    .line 463
    :cond_24
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 466
    const-string v42, "<TABLE border=1 rules=all cellpadding=2>"

    move-object v0, v11

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_22

    goto :goto_e

    .line 476
    :cond_25
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v42

    if-eqz v42, :cond_26

    .line 478
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xe

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 479
    const/16 v31, 0x1

    goto/16 :goto_d

    .line 483
    :cond_26
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0xf

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 488
    .end local v7           #currentChargesBr:Ljava/io/BufferedReader;
    .end local v8           #currentChargesBw:Ljava/io/BufferedWriter;
    .end local v10           #currentChargesLine:Ljava/lang/String;
    .end local v13           #currentChargesUrl:Ljava/net/URL;
    .end local v14           #currentChargesUrlConnection:Ljava/net/URLConnection;
    :cond_27
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x10

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 489
    invoke-static {v11}, Lorg/twilightfantasy/tpgusagemeter/ResponseParser;->getUsageSummaryFromCurrentChargesResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 491
    .local v41, usageSummary:Ljava/lang/String;
    if-eqz v41, :cond_28

    .line 492
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x11

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 498
    :goto_f
    sget-object v42, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSummaryList:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    move/from16 v1, v28

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 355
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_8

    .line 495
    :cond_28
    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x12

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 496
    const-string v41, "Summary not found"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    .line 513
    .end local v4           #certainPlan:[Ljava/lang/String;
    .end local v5           #cookie:Ljava/lang/String;
    .end local v9           #currentChargesID:Ljava/lang/String;
    .end local v11           #currentChargesPostRequestResponse:Ljava/lang/String;
    .end local v12           #currentChargesPostRequestURL:Ljava/lang/String;
    .end local v18           #i:I
    .end local v22           #loginPostRequestParams:Ljava/lang/String;
    .end local v23           #loginPostRequestResponse:Ljava/lang/String;
    .end local v24           #loginPostRequestURL:Ljava/lang/String;
    .end local v27           #numPlans:I
    .end local v28           #planIndex:I
    .end local v29           #plans:Ljava/lang/String;
    .end local v31           #taskComplete:Z
    .end local v36           #usageIndexPostRequestParams:Ljava/lang/String;
    .end local v37           #usageIndexPostRequestResponse:Ljava/lang/String;
    .end local v38           #usageIndexPostRequestURL:Ljava/lang/String;
    .end local v41           #usageSummary:Ljava/lang/String;
    .restart local v15       #e:Ljava/lang/Exception;
    :cond_29
    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    const/16 v43, 0x1

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 515
    const/16 v42, -0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    goto/16 :goto_2

    .line 518
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v4       #certainPlan:[Ljava/lang/String;
    .restart local v5       #cookie:Ljava/lang/String;
    .restart local v18       #i:I
    .restart local v22       #loginPostRequestParams:Ljava/lang/String;
    .restart local v23       #loginPostRequestResponse:Ljava/lang/String;
    .restart local v24       #loginPostRequestURL:Ljava/lang/String;
    .restart local v27       #numPlans:I
    .restart local v28       #planIndex:I
    .restart local v29       #plans:Ljava/lang/String;
    .restart local v31       #taskComplete:Z
    :cond_2a
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    goto/16 :goto_2

    .line 217
    .end local v4           #certainPlan:[Ljava/lang/String;
    .end local v5           #cookie:Ljava/lang/String;
    .end local v18           #i:I
    .end local v22           #loginPostRequestParams:Ljava/lang/String;
    .end local v23           #loginPostRequestResponse:Ljava/lang/String;
    .end local v24           #loginPostRequestURL:Ljava/lang/String;
    .end local v27           #numPlans:I
    .end local v28           #planIndex:I
    .end local v29           #plans:Ljava/lang/String;
    .end local v31           #taskComplete:Z
    .restart local p1
    :catch_1
    move-exception v42

    goto/16 :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 536
    if-eqz p1, :cond_0

    .line 538
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 545
    sget-object v1, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 546
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v1, v1, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v2, "\nNo plans to process. If you didn\'t leave plans to process blank in settings, make sure you entered plans correctly."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mMainContext:Landroid/content/Context;

    const v2, 0x7f030003

    sget-object v3, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 554
    .local v0, spinnerAdapter:Landroid/widget/ArrayAdapter;
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 555
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v1, v1, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 556
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v1, v1, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSpinner:Landroid/widget/Spinner;

    new-instance v2, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask$2;

    invoke-direct {v2, p0}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask$2;-><init>(Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 565
    invoke-virtual {p0, v4}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->showUsageSummary(I)V

    .line 567
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v1, v1, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSelectionLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 5
    .parameter "param"

    .prologue
    const/4 v3, 0x1

    const-string v4, "Done!\n"

    const-string v2, "Failed!\n"

    .line 578
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 649
    .end local p0
    :goto_0
    :pswitch_0
    return-void

    .line 581
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Requesting authentication cookie... "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 584
    :pswitch_2
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Done!\n"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 587
    :pswitch_3
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Failed!\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 590
    :pswitch_4
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Identifying plans..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 593
    :pswitch_5
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v1, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " plan(s) found!\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aget-object p0, p1, v2

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 598
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Failed!\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 601
    :pswitch_7
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Requesting usage index... "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 604
    :pswitch_8
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Done!\n"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 607
    :pswitch_9
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Failed!\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 610
    :pswitch_a
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Requesting current charges page... "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 613
    :pswitch_b
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Done!\n"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 616
    :pswitch_c
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Failed!\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 619
    :pswitch_d
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Identifying current charges id..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 622
    :pswitch_e
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    aget-object p0, p1, v3

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 625
    .restart local p0
    :pswitch_f
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Failed!\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 628
    :pswitch_10
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Extracting the usage summary... "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 631
    :pswitch_11
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Done!\n"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 634
    :pswitch_12
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Failed!\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 637
    :pswitch_13
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occured\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p1, v3

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 640
    .restart local p0
    :pswitch_14
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    aget-object p0, p1, v3

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 643
    .restart local p0
    :pswitch_15
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, "Retrying lookup...\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 646
    :pswitch_16
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v0, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nProcessing plan "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p1, v3

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method protected showUsageSummary(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 523
    const-string v0, ""

    .line 524
    .local v0, summary:Ljava/lang/String;
    if-ltz p1, :cond_0

    sget-object v1, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSummaryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_1

    .line 525
    :cond_0
    const-string v0, "Error: index was invalid range contact developer"

    .line 530
    :goto_0
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->this$0:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    iget-object v1, v1, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    return-void

    .line 528
    :cond_1
    sget-object v1, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSummaryList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #summary:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #summary:Ljava/lang/String;
    goto :goto_0
.end method
