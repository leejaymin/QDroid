.class public final Lcom/rubycell/pianisthd/d/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Lorg/json/JSONObject;

.field public static b:Lcom/rubycell/pianisthd/c/a;

.field static c:Ljava/util/ArrayList;

.field static d:Ljava/util/ArrayList;

.field static e:I

.field static f:J

.field static g:Z

.field static h:Ljava/util/ArrayList;

.field static i:Ljava/util/HashMap;

.field static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Record Manager"

    sput-object v0, Lcom/rubycell/pianisthd/d/g;->j:Ljava/lang/String;

    return-void
.end method

.method private static a(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p0

    long-to-float v0, v0

    const/high16 v1, 0x42f0

    mul-float/2addr v0, v1

    const/high16 v1, 0x43f0

    mul-float/2addr v0, v1

    const v1, 0x4c64e1c0

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public static a(I)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/rubycell/pianisthd/d/g;->i:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v0, Lcom/rubycell/pianisthd/d/g;->i:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/g;

    sget-wide v3, Lcom/rubycell/pianisthd/d/g;->f:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/g;->a(J)J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/g;->f()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/rubycell/pianisthd/c/g;->a(J)V

    sget-object v0, Lcom/rubycell/pianisthd/d/g;->i:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(IIIZ)V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/rubycell/pianisthd/d/g;->f:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/d/g;->a(J)J

    move-result-wide v3

    new-instance v0, Lcom/rubycell/pianisthd/c/g;

    move v1, p2

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/rubycell/pianisthd/c/g;-><init>(IIJIZ)V

    sget-object v1, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/rubycell/pianisthd/d/g;->i:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/rubycell/pianisthd/d/g;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add note on==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "record.rubygrp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/16 v2, 0x800

    new-array v2, v2, [C

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/rubycell/pianisthd/d/b;->U:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object v1, Lcom/rubycell/pianisthd/d/g;->a:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/g;->a(Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/rubycell/pianisthd/d/g;->a:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v2, 0x0

    sput-boolean v2, Lcom/rubycell/pianisthd/d/g;->g:Z

    sget-object v0, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Lcom/a/a/b;

    invoke-direct {v7}, Lcom/a/a/b;-><init>()V

    new-instance v0, Lcom/a/a/a/a/d;

    invoke-direct {v0}, Lcom/a/a/a/a/d;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/a/a/d;->e()V

    new-instance v1, Lcom/a/a/a/a/c;

    invoke-direct {v1}, Lcom/a/a/a/a/c;-><init>()V

    invoke-virtual {v7, v0}, Lcom/a/a/b;->a(Lcom/a/a/a/b;)V

    invoke-virtual {v7, v1}, Lcom/a/a/b;->a(Lcom/a/a/a/b;)V

    move v8, v2

    :goto_1
    sget-object v0, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/rubycell/pianisthd/d/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/a/a/a;

    invoke-direct {v1, v0}, Lcom/a/a/a;-><init>(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".mid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/a/a/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/g;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/g;->h()I

    move-result v9

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/g;->e()I

    move-result v2

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/g;->f()J

    move-result-wide v3

    sget-object v1, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    if-eq v8, v1, :cond_4

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/g;->g()J

    move-result-wide v5

    sget v1, Lcom/rubycell/pianisthd/d/b;->A:I

    mul-int/lit8 v1, v1, 0xa

    int-to-long v10, v1

    add-long/2addr v5, v10

    :goto_2
    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/g;->d()I

    move-result v1

    const/4 v0, -0x1

    if-eq v2, v0, :cond_3

    sget-object v0, Lcom/rubycell/pianisthd/d/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b;

    invoke-virtual/range {v0 .. v6}, Lcom/a/a/b;->a(IIJJ)V

    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/g;->g()J

    move-result-wide v5

    const-wide/16 v10, 0x7530

    add-long/2addr v5, v10

    goto :goto_2
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v2, 0x0

    sput-object p0, Lcom/rubycell/pianisthd/d/g;->h:Ljava/util/ArrayList;

    sput v2, Lcom/rubycell/pianisthd/d/g;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/rubycell/pianisthd/d/g;->f:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/g;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rubycell/pianisthd/d/g;->i:Ljava/util/HashMap;

    move v0, v2

    :goto_0
    sget-object v1, Lcom/rubycell/pianisthd/d/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rubycell/pianisthd/d/g;->g:Z

    return-void

    :cond_0
    new-instance v1, Lcom/a/a/b;

    invoke-direct {v1}, Lcom/a/a/b;-><init>()V

    new-instance v2, Lcom/a/a/a/d;

    sget-object v3, Lcom/rubycell/pianisthd/d/g;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/a/a/a/d;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/a/a/b;->a(Lcom/a/a/a/b;)V

    sget-object v2, Lcom/rubycell/pianisthd/d/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 21

    :try_start_0
    const-string v4, "group_name"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "song_list"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    const-string v4, "version"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v19

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    move v0, v5

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    new-instance v4, Lcom/rubycell/pianisthd/c/a;

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/rubycell/pianisthd/c/a;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    sput-object v4, Lcom/rubycell/pianisthd/d/g;->b:Lcom/rubycell/pianisthd/c/a;

    const/16 p0, 0x3

    move-object v0, v4

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/a;->b(I)V

    :goto_1
    return-void

    :cond_0
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

    const-string v8, "path"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "start"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v9, "hand"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    new-instance v4, Lcom/rubycell/pianisthd/c/h;

    const/4 v9, 0x0

    const-string v11, "-1"

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v4 .. v16}, Lcom/rubycell/pianisthd/c/h;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJI)V

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/rubycell/pianisthd/d/g;->g:Z

    return v0
.end method

.method private static b(J)J
    .locals 2

    const-wide/32 v0, 0x3938700

    mul-long/2addr v0, p0

    long-to-float v0, v0

    const v1, 0x4c5bba00

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/g;->g:Z

    sput-object v1, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/g;->h:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/g;->d:Ljava/util/ArrayList;

    sput-object v1, Lcom/rubycell/pianisthd/d/g;->i:Ljava/util/HashMap;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    const/4 v3, 0x0

    sput-boolean v3, Lcom/rubycell/pianisthd/d/g;->g:Z

    sget-object v3, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    move v7, v3

    :goto_1
    sget-object v3, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v7, v3, :cond_3

    sget-object v3, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rubycell/pianisthd/c/g;

    sget-object v4, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->e()I

    move-result v3

    const/16 v5, 0x15

    sub-int/2addr v3, v5

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "ruby"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "metadata"

    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "data"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "title"

    move-object v0, v7

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "author"

    const-string v9, ""

    invoke-virtual {v7, v5, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "type"

    const-string v9, "record"

    invoke-virtual {v7, v5, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "start"

    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "version"

    sget-object v9, Lcom/rubycell/pianisthd/d/b;->U:Ljava/lang/String;

    invoke-virtual {v7, v5, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "hand"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "createddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "base64"

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rubycell/pianisthd/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance p1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".ruby"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/PrintWriter;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "song_name"

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "author"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "path"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "hand"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "start"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/rubycell/pianisthd/d/g;->a:Lorg/json/JSONObject;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/rubycell/pianisthd/d/g;->a:Lorg/json/JSONObject;

    const-string v3, "song_list"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v6, v7, :cond_a

    move/from16 p0, v3

    :goto_3
    if-eqz p0, :cond_2

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object p0, Lcom/rubycell/pianisthd/d/g;->a:Lorg/json/JSONObject;

    invoke-static/range {p0 .. p0}, Lcom/rubycell/pianisthd/d/g;->a(Lorg/json/JSONObject;)V

    :cond_2
    :goto_4
    new-instance p0, Ljava/io/File;

    const-string p1, "record.rubygrp"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/PrintWriter;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    sget-object p0, Lcom/rubycell/pianisthd/d/g;->a:Lorg/json/JSONObject;

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    sget-object v3, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rubycell/pianisthd/c/g;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->g()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->e()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    const-string v3, "rest"

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v9, v10}, Lcom/rubycell/pianisthd/d/g;->b(J)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_5
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto/16 :goto_1

    :cond_4
    sget-object v4, Lcom/rubycell/pianisthd/d/b;->b:Ljava/util/List;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->e()I

    move-result v5

    const/16 v11, 0x15

    sub-int/2addr v5, v11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-object v4, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    add-int/lit8 v5, v7, 0x1

    sget-object v11, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-gt v5, v11, :cond_5

    add-int/lit8 v5, v7, 0x1

    :goto_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rubycell/pianisthd/c/g;

    sget-object v5, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    const/4 v11, 0x1

    sub-int v11, v7, v11

    if-ltz v11, :cond_6

    const/4 v11, 0x1

    sub-int v11, v7, v11

    :goto_7
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rubycell/pianisthd/c/g;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->f()J

    move-result-wide v11

    invoke-virtual {v5}, Lcom/rubycell/pianisthd/c/g;->f()J

    invoke-virtual {v4}, Lcom/rubycell/pianisthd/c/g;->f()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/rubycell/pianisthd/d/g;->b(J)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    :goto_8
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    sget-object v5, Lcom/rubycell/pianisthd/d/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    goto :goto_6

    :cond_6
    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    sub-long v15, v13, v11

    const-wide/16 v17, 0x14

    cmp-long v5, v15, v17

    if-gtz v5, :cond_8

    if-eq v4, v3, :cond_8

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/rubycell/pianisthd/c/g;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/rubycell/pianisthd/c/g;->b()V

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->g()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lcom/rubycell/pianisthd/c/g;->a(J)V

    invoke-static {v9, v10}, Lcom/rubycell/pianisthd/d/g;->b(J)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->f()J

    move-result-wide v15

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/g;->g()J

    move-result-wide v17

    add-long v15, v15, v17

    invoke-virtual {v4}, Lcom/rubycell/pianisthd/c/g;->f()J

    move-result-wide v3

    cmp-long v3, v15, v3

    if-lez v3, :cond_9

    sub-long v3, v13, v11

    invoke-static {v3, v4}, Lcom/rubycell/pianisthd/d/g;->b(J)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :goto_9
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    goto :goto_8

    :cond_9
    invoke-static {v9, v10}, Lcom/rubycell/pianisthd/d/g;->b(J)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_9

    :cond_a
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "song_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 p0, 0x0

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_c
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct/range {p0 .. p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "group_name"

    const-string v3, "Recorded songs"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    sget-object v3, Lcom/rubycell/pianisthd/d/b;->U:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct/range {p1 .. p1}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "song_list"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sput-object p0, Lcom/rubycell/pianisthd/d/g;->a:Lorg/json/JSONObject;

    invoke-static/range {p0 .. p0}, Lcom/rubycell/pianisthd/d/g;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4
.end method
