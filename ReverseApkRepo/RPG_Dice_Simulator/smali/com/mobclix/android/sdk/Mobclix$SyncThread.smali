.class Lcom/mobclix/android/sdk/Mobclix$SyncThread;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/Mobclix$SyncThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$SyncThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 1075
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/mobclix/android/sdk/Mobclix;->access$6(Z)V

    .line 1085
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1086
    new-instance v17, Ljava/lang/InterruptedException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/InterruptedException;-><init>()V

    throw v17
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :catch_0
    move-exception v17

    .line 1212
    :goto_1
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/mobclix/android/sdk/Mobclix;->access$6(Z)V

    .line 1213
    return-void

    .line 1088
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v17

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->database:Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;
    invoke-static/range {v17 .. v17}, Lcom/mobclix/android/sdk/Mobclix;->access$7(Lcom/mobclix/android/sdk/Mobclix;)Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->selectMessage()Ljava/util/HashMap;

    move-result-object v9

    .line 1089
    .local v9, payload:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1090
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$5()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1093
    :cond_1
    const-string v17, "MESSAGE_KEY"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1094
    .local v10, primaryId:Ljava/lang/String;
    const-string v17, "MESSAGE_SESSION"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1095
    .local v13, sessionId:Ljava/lang/String;
    const-string v17, "MESSAGE_COUNT"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1096
    .local v3, count:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "1"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1097
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$5()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1100
    :cond_2
    const-string v17, "MESSAGE_JSON"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1110
    .local v7, message:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1112
    .local v4, data:Ljava/lang/StringBuffer;
    :try_start_2
    const-string v17, "p=android&a="

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v18

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/mobclix/android/sdk/Mobclix;->access$8(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1113
    const-string v17, "&d="

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v18

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/mobclix/android/sdk/Mobclix;->access$9(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1114
    const-string v17, "&m="

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "2.0.4"

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1115
    const-string v17, "&v="

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v18

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/mobclix/android/sdk/Mobclix;->access$10(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1116
    const-string v17, "&j="

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1126
    :goto_2
    const/4 v15, 0x0

    .line 1127
    .local v15, url:Ljava/net/URL;
    const/4 v2, 0x0

    .line 1129
    .local v2, conn:Ljava/net/HttpURLConnection;
    :try_start_3
    new-instance v16, Ljava/net/URL;

    const-string v17, "http://data.mobclix.com/post/sendData"

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1130
    .end local v15           #url:Ljava/net/URL;
    .local v16, url:Ljava/net/URL;
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .end local v3           #count:Ljava/lang/String;
    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 1135
    const/16 v17, 0x1

    move-object v0, v2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1136
    const/16 v17, 0x1

    move-object v0, v2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1137
    const/16 v17, 0x0

    move-object v0, v2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1142
    const-string v17, "POST"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 1147
    .local v8, ost:Ljava/io/OutputStream;
    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1148
    .local v11, pw:Ljava/io/PrintWriter;
    invoke-virtual {v11, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1152
    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V

    .line 1153
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1164
    :try_start_5
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1165
    .local v12, rd:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 1171
    .local v6, line:Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, templine:Ljava/lang/String;
    if-nez v14, :cond_4

    .line 1177
    const-string v17, "1"

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1183
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v17

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->database:Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;
    invoke-static/range {v17 .. v17}, Lcom/mobclix/android/sdk/Mobclix;->access$7(Lcom/mobclix/android/sdk/Mobclix;)Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;

    move-result-object v17

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-virtual/range {v17 .. v21}, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->deleteMessage(JJ)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1184
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 1185
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$5()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1200
    .end local v6           #line:Ljava/lang/String;
    .end local v12           #rd:Ljava/io/BufferedReader;
    .end local v14           #templine:Ljava/lang/String;
    :catch_1
    move-exception v17

    goto/16 :goto_0

    .line 1154
    .end local v8           #ost:Ljava/io/OutputStream;
    .end local v11           #pw:Ljava/io/PrintWriter;
    .end local v16           #url:Ljava/net/URL;
    .restart local v3       #count:Ljava/lang/String;
    .restart local v15       #url:Ljava/net/URL;
    :catch_2
    move-exception v17

    move-object/from16 v5, v17

    .line 1158
    .end local v3           #count:Ljava/lang/String;
    .local v5, e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$5()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 1172
    .end local v5           #e:Ljava/lang/Exception;
    .end local v15           #url:Ljava/net/URL;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #ost:Ljava/io/OutputStream;
    .restart local v11       #pw:Ljava/io/PrintWriter;
    .restart local v12       #rd:Ljava/io/BufferedReader;
    .restart local v14       #templine:Ljava/lang/String;
    .restart local v16       #url:Ljava/net/URL;
    :cond_4
    if-nez v6, :cond_3

    move-object v6, v14

    goto :goto_3

    .line 1195
    :cond_5
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 1196
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$5()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_1

    .line 1199
    :cond_6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 1154
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #ost:Ljava/io/OutputStream;
    .end local v11           #pw:Ljava/io/PrintWriter;
    .end local v12           #rd:Ljava/io/BufferedReader;
    .end local v14           #templine:Ljava/lang/String;
    :catch_3
    move-exception v17

    move-object/from16 v5, v17

    move-object/from16 v15, v16

    .end local v16           #url:Ljava/net/URL;
    .restart local v15       #url:Ljava/net/URL;
    goto :goto_4

    .line 1117
    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v15           #url:Ljava/net/URL;
    .restart local v3       #count:Ljava/lang/String;
    :catch_4
    move-exception v17

    goto/16 :goto_2
.end method
