.class public Lcom/cocmoc/kulinglite/RegisterHelper;
.super Ljava/lang/Object;
.source "RegisterHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"


# instance fields
.field config:Landroid/content/SharedPreferences;

.field id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "configIn"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cocmoc/kulinglite/RegisterHelper;->config:Landroid/content/SharedPreferences;

    .line 25
    const-string v0, "999999999"

    iput-object v0, p0, Lcom/cocmoc/kulinglite/RegisterHelper;->id:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "configIn"
    .parameter "idIn"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/cocmoc/kulinglite/RegisterHelper;->config:Landroid/content/SharedPreferences;

    .line 30
    iput-object p2, p0, Lcom/cocmoc/kulinglite/RegisterHelper;->id:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private connect(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "ConnectionUrl"

    .prologue
    const-string v12, "Kuling"

    .line 80
    const/4 v8, 0x0

    .line 83
    .local v8, url:Ljava/net/URL;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #url:Ljava/net/URL;
    .local v9, url:Ljava/net/URL;
    move-object v8, v9

    .line 91
    .end local v9           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :goto_0
    const-string v7, "null"

    .line 92
    .local v7, temp:Ljava/lang/String;
    const/4 v2, 0x0

    .line 93
    .local v2, connection:Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 94
    .local v5, reader:Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v1, buffer:Ljava/lang/StringBuffer;
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_1
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    invoke-direct {v10, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 116
    if-nez v7, :cond_0

    move-object v5, v6

    .line 125
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "null"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 84
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v7           #temp:Ljava/lang/String;
    .restart local p0
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 86
    .local v3, e:Ljava/net/MalformedURLException;
    const-string v10, "Kuling"

    const-string v10, "RegisterHelper: connect() MalformedURLException e"

    invoke-static {v12, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v3           #e:Ljava/net/MalformedURLException;
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #connection:Ljava/net/HttpURLConnection;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v7       #temp:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v4, v10

    .line 102
    .local v4, ioe:Ljava/io/IOException;
    const-string v10, "Kuling"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RegisterHelper.getHtml: IOException"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 118
    .end local v4           #ioe:Ljava/io/IOException;
    .end local p0
    :catch_2
    move-exception v10

    move-object v4, v10

    .line 120
    .restart local v4       #ioe:Ljava/io/IOException;
    :goto_3
    const-string v10, "Kuling"

    const-string v10, "RegisterHelper.getHtml: Error while reading the stream."

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v10, "Kuling"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 118
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v10

    move-object v4, v10

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private getTestUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.knutinge.com/cocmoc/cocmoc/kuling/data/register.php?test="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cocmoc/kulinglite/RegisterHelper;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, urlString:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public isExpired(Ljava/lang/String;)Z
    .locals 23
    .parameter "datoIn"

    .prologue
    .line 130
    const/16 v19, 0x0

    .line 131
    .local v19, testV:Z
    const-string v18, "TESTVERSION:"

    .line 132
    .local v18, test:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 133
    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 134
    const/16 v19, 0x1

    .line 137
    :cond_0
    const-string v20, "-"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 138
    .local v16, inDateArray:[Ljava/lang/String;
    const/16 v20, 0x2

    aget-object v20, v16, v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 139
    .local v17, inDateDagArray:[Ljava/lang/String;
    const/16 v6, 0x7da

    .line 140
    .local v6, RegYear:I
    const/4 v5, 0x5

    .line 141
    .local v5, RegMonth:I
    const/4 v4, 0x1

    .line 144
    .local v4, RegDay:I
    const/16 v20, 0x0

    :try_start_0
    aget-object v20, v16, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 145
    const/16 v20, 0x1

    aget-object v20, v16, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 146
    const/16 v20, 0x0

    aget-object v20, v17, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 154
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 155
    .local v7, c:Ljava/util/Calendar;
    const/16 v20, 0x2

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 156
    .local v11, currentMonth:I
    const/16 v20, 0x1

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 157
    .local v12, currentYear:I
    const/16 v20, 0x5

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 159
    .local v10, currentDay:I
    const/4 v14, 0x0

    .line 160
    .local v14, expireDate:Ljava/sql/Date;
    const/4 v8, 0x0

    .line 163
    .local v8, currentDate:Ljava/sql/Date;
    :try_start_1
    new-instance v15, Ljava/sql/Date;

    add-int/lit8 v20, v6, 0x1

    const/16 v21, 0x76c

    sub-int v20, v20, v21

    const/16 v21, 0x1

    sub-int v21, v5, v21

    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/sql/Date;-><init>(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .end local v14           #expireDate:Ljava/sql/Date;
    .local v15, expireDate:Ljava/sql/Date;
    :try_start_2
    new-instance v9, Ljava/sql/Date;

    const/16 v20, 0x76c

    sub-int v20, v12, v20

    move-object v0, v9

    move/from16 v1, v20

    move v2, v11

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Ljava/sql/Date;-><init>(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 167
    .end local v8           #currentDate:Ljava/sql/Date;
    .local v9, currentDate:Ljava/sql/Date;
    if-eqz v19, :cond_2

    .line 168
    :try_start_3
    new-instance v14, Ljava/sql/Date;

    const/16 v20, 0x76c

    sub-int v20, v6, v20

    const/16 v21, 0x1

    sub-int v21, v5, v21

    move-object v0, v14

    move/from16 v1, v20

    move/from16 v2, v21

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/sql/Date;-><init>(III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    .end local v15           #expireDate:Ljava/sql/Date;
    .restart local v14       #expireDate:Ljava/sql/Date;
    :try_start_4
    const-string v20, "Kuling"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "RegisterHelper: expireDate = TESTEXPIRE: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_1
    invoke-virtual {v9, v14}, Ljava/sql/Date;->after(Ljava/util/Date;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 173
    const-string v20, "Kuling"

    const-string v21, "RegisterHelper: isExpired = true"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 174
    const/16 v20, 0x1

    move-object v8, v9

    .line 189
    .end local v9           #currentDate:Ljava/sql/Date;
    .restart local v8       #currentDate:Ljava/sql/Date;
    :goto_2
    return v20

    .line 147
    .end local v7           #c:Ljava/util/Calendar;
    .end local v8           #currentDate:Ljava/sql/Date;
    .end local v10           #currentDay:I
    .end local v11           #currentMonth:I
    .end local v12           #currentYear:I
    .end local v14           #expireDate:Ljava/sql/Date;
    :catch_0
    move-exception v20

    move-object/from16 v13, v20

    .line 149
    .local v13, e:Ljava/lang/NumberFormatException;
    const-string v20, "Kuling"

    const-string v21, "RegisterHelper: isExpired NumberFormatException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 177
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #c:Ljava/util/Calendar;
    .restart local v8       #currentDate:Ljava/sql/Date;
    .restart local v10       #currentDay:I
    .restart local v11       #currentMonth:I
    .restart local v12       #currentYear:I
    .restart local v14       #expireDate:Ljava/sql/Date;
    :catch_1
    move-exception v20

    move-object/from16 v13, v20

    .line 179
    .local v13, e:Ljava/lang/Exception;
    :goto_3
    const-string v20, "Kuling"

    const-string v21, "RegisterHelper: isExpired DateException"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v13           #e:Ljava/lang/Exception;
    :goto_4
    const-string v20, "Kuling"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "RegisterHelper: isExpired(): \n currentDate:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v8}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 186
    const-string v22, "\n expireDate: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 184
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v20, "Kuling"

    const-string v21, "RegisterHelper: isExpired = false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/16 v20, 0x0

    goto :goto_2

    .line 177
    .end local v14           #expireDate:Ljava/sql/Date;
    .restart local v15       #expireDate:Ljava/sql/Date;
    :catch_2
    move-exception v20

    move-object/from16 v13, v20

    move-object v14, v15

    .end local v15           #expireDate:Ljava/sql/Date;
    .restart local v14       #expireDate:Ljava/sql/Date;
    goto :goto_3

    .end local v8           #currentDate:Ljava/sql/Date;
    .end local v14           #expireDate:Ljava/sql/Date;
    .restart local v9       #currentDate:Ljava/sql/Date;
    .restart local v15       #expireDate:Ljava/sql/Date;
    :catch_3
    move-exception v20

    move-object/from16 v13, v20

    move-object v8, v9

    .end local v9           #currentDate:Ljava/sql/Date;
    .restart local v8       #currentDate:Ljava/sql/Date;
    move-object v14, v15

    .end local v15           #expireDate:Ljava/sql/Date;
    .restart local v14       #expireDate:Ljava/sql/Date;
    goto :goto_3

    .end local v8           #currentDate:Ljava/sql/Date;
    .restart local v9       #currentDate:Ljava/sql/Date;
    :catch_4
    move-exception v20

    move-object/from16 v13, v20

    move-object v8, v9

    .end local v9           #currentDate:Ljava/sql/Date;
    .restart local v8       #currentDate:Ljava/sql/Date;
    goto :goto_3

    .end local v8           #currentDate:Ljava/sql/Date;
    .restart local v9       #currentDate:Ljava/sql/Date;
    :cond_1
    move-object v8, v9

    .end local v9           #currentDate:Ljava/sql/Date;
    .restart local v8       #currentDate:Ljava/sql/Date;
    goto :goto_4

    .end local v8           #currentDate:Ljava/sql/Date;
    .end local v14           #expireDate:Ljava/sql/Date;
    .restart local v9       #currentDate:Ljava/sql/Date;
    .restart local v15       #expireDate:Ljava/sql/Date;
    :cond_2
    move-object v14, v15

    .end local v15           #expireDate:Ljava/sql/Date;
    .restart local v14       #expireDate:Ljava/sql/Date;
    goto :goto_1
.end method

.method public isRegistered(Z)Ljava/lang/String;
    .locals 7
    .parameter "forceOnlineCheck"

    .prologue
    const-string v6, "r"

    const-string v5, "-1"

    const-string v4, "Kuling"

    .line 34
    iget-object v2, p0, Lcom/cocmoc/kulinglite/RegisterHelper;->config:Landroid/content/SharedPreferences;

    const-string v3, "r"

    const-string v3, "-1"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, register:Ljava/lang/String;
    const-string v2, "Kuling"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RegisterHelper: isRegistered() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v2, "-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/cocmoc/kulinglite/RegisterHelper;->isExpired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/RegisterHelper;->isRegisteredOnline()Ljava/lang/String;

    move-result-object v1

    .line 39
    const-string v2, "Kuling"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RegisterHelper: isRegistered() OnlineCheck: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    const-string v2, "-1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/cocmoc/kulinglite/RegisterHelper;->isExpired(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    const-string v1, "-1"

    .line 44
    iget-object v2, p0, Lcom/cocmoc/kulinglite/RegisterHelper;->config:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, configEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "r"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    const-string v2, "Kuling"

    const-string v2, "RegisterHelper: isRegistered() Registrert i preferences/database men nu utg\u00e5tt"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v0           #configEditor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v2, "Kuling"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RegisterHelper: isRegistered() registerReturn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-object v1
.end method

.method public isRegisteredOnline()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "Kuling"

    .line 57
    const-string v3, "Kuling"

    const-string v3, "RegisterHelper: isRegisteredOnline() "

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v1, ""

    .line 59
    .local v1, Date:Ljava/lang/String;
    invoke-direct {p0}, Lcom/cocmoc/kulinglite/RegisterHelper;->getTestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cocmoc/kulinglite/RegisterHelper;->connect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "-1"

    .line 61
    :cond_0
    move-object v0, v1

    .line 65
    .local v0, ConfigDate:Ljava/lang/String;
    iget-object v3, p0, Lcom/cocmoc/kulinglite/RegisterHelper;->config:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 66
    .local v2, configEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "r"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    const-string v3, "Kuling"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RegisterHelper: isRegisteredOnline() ReturnDate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-object v1
.end method
