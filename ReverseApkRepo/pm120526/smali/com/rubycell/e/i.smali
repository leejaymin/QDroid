.class public final Lcom/rubycell/e/i;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Lcom/rubycell/pianisthd/SongListActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    check-cast p1, Lcom/rubycell/pianisthd/SongListActivity;

    iput-object p1, p0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-direct {p0}, Lcom/rubycell/e/i;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->d(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v1, p0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    iget-object v2, p0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/SongListActivity;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/m;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->c(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 23

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    move-object v7, v0

    const v8, 0x7f070032

    invoke-virtual {v7, v8}, Lcom/rubycell/pianisthd/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "favourite.rubygrp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    const/16 v7, 0x400

    new-array v7, v7, [C

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v8, v7}, Ljava/io/Reader;->read([C)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "group_name"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "song_list"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    const-string v5, "version"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v20

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    move v0, v5

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    :try_start_1
    new-instance v4, Lcom/rubycell/pianisthd/c/a;

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/rubycell/pianisthd/c/a;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, v21

    :goto_2
    return-object v4

    :cond_0
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v6, v7, v10, v9}, Ljava/io/Writer;->write([CII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    :goto_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    goto :goto_2

    :cond_1
    :try_start_3
    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "song_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "author"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "fileid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "start"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v9, "serverid"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v9, "downloadcount"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v9, "created_date"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v9, "hand"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    new-instance v4, Lcom/rubycell/pianisthd/c/h;

    const/4 v9, 0x1

    invoke-direct/range {v4 .. v16}, Lcom/rubycell/pianisthd/c/h;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJI)V

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :catch_1
    move-exception v4

    move-object/from16 v5, v21

    goto :goto_3
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/rubycell/e/i;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/e/i;->a:Lcom/rubycell/pianisthd/SongListActivity;

    new-instance v1, Lcom/rubycell/e/j;

    invoke-direct {v1, p0}, Lcom/rubycell/e/j;-><init>(Lcom/rubycell/e/i;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
