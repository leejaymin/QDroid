.class public Lorg/chemlab/dealdroidapp/SiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SiteContentProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DealDroid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private populate(Lorg/chemlab/dealdroidapp/Site;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "site"
    .parameter "template"

    .prologue
    .line 145
    new-instance v0, Lorg/chemlab/dealdroidapp/Database;

    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/SiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/chemlab/dealdroidapp/Database;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, db:Lorg/chemlab/dealdroidapp/Database;
    move-object v3, p2

    .line 151
    .local v3, p:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->open()V

    .line 153
    invoke-virtual {v0, p1}, Lorg/chemlab/dealdroidapp/Database;->getCurrentItem(Lorg/chemlab/dealdroidapp/Site;)Lorg/chemlab/dealdroidapp/Item;

    move-result-object v1

    .line 155
    .local v1, item:Lorg/chemlab/dealdroidapp/Item;
    if-nez v1, :cond_0

    .line 156
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No data found for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v1           #item:Lorg/chemlab/dealdroidapp/Item;
    :catchall_0
    move-exception v4

    .line 181
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->close()V

    .line 182
    throw v4

    .line 159
    .restart local v1       #item:Lorg/chemlab/dealdroidapp/Item;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getLink()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/chemlab/dealdroidapp/Site;->applyAffiliation(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 160
    .local v2, link:Landroid/net/Uri;
    const-string v4, "\\{title\\}"

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    const-string v4, "\\{buy_url\\}"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "steepcheap%2Findex.html"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    const-string v4, "\\{description\\}"

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getShortDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 165
    const-string v4, "\\{short_description\\}"

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getShortDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    :cond_1
    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getImageLink()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 169
    const-string v4, "\\{image_url\\}"

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getImageLink()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_2
    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 173
    const-string v4, "\\{price\\}"

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    :cond_3
    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getSavings()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 177
    const-string v4, "\\{savings\\}"

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Item;->getSavings()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 181
    :cond_4
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->close()V

    .line 184
    return-object v3
.end method

.method private readAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "assetName"

    .prologue
    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, reader:Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v6, sb:Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/SiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 199
    .local v0, asset:Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x2000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 201
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 202
    .local v3, line:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    if-nez v3, :cond_1

    .line 211
    if-eqz v5, :cond_3

    .line 213
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 220
    .end local v0           #asset:Ljava/io/InputStream;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 203
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v0       #asset:Ljava/io/InputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 208
    .end local v0           #asset:Ljava/io/InputStream;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v1, e:Ljava/io/IOException;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v7, "DealDroid"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    if-eqz v4, :cond_0

    .line 213
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 214
    :catch_1
    move-exception v2

    .line 215
    .local v2, ex:Ljava/io/IOException;
    const-string v7, "DealDroid"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 210
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 211
    :goto_3
    if-eqz v4, :cond_2

    .line 213
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 218
    :cond_2
    :goto_4
    throw v7

    .line 214
    :catch_2
    move-exception v2

    .line 215
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v8, "DealDroid"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 214
    .end local v2           #ex:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v0       #asset:Ljava/io/InputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 215
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v7, "DealDroid"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #ex:Ljava/io/IOException;
    :cond_3
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 210
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 206
    .end local v0           #asset:Ljava/io/InputStream;
    .end local v3           #line:Ljava/lang/String;
    :catch_4
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lorg/chemlab/dealdroidapp/Site;->valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Site;

    move-result-object v5

    .line 83
    .local v5, site:Lorg/chemlab/dealdroidapp/Site;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".html"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, outName:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/SiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    .local v0, c:Landroid/content/Context;
    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 88
    const/4 v6, 0x0

    .line 92
    .local v6, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v9, 0x2000

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .local v7, writer:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-direct {p0, v3}, Lorg/chemlab/dealdroidapp/SiteContentProvider;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, data:Ljava/lang/String;
    invoke-direct {p0, v5, v1}, Lorg/chemlab/dealdroidapp/SiteContentProvider;->populate(Lorg/chemlab/dealdroidapp/Site;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, populated:Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 104
    if-eqz v7, :cond_0

    .line 105
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    const/high16 v9, 0x1000

    invoke-static {v8, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    return-object v8

    .line 97
    .end local v1           #data:Ljava/lang/String;
    .end local v4           #populated:Ljava/lang/String;
    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/io/IOException;
    :goto_0
    :try_start_3
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 104
    :goto_1
    if-eqz v6, :cond_1

    .line 105
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 110
    :cond_1
    throw v8

    .line 107
    :catch_1
    move-exception v2

    .line 108
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 107
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #data:Ljava/lang/String;
    .restart local v4       #populated:Ljava/lang/String;
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v2

    .line 108
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 101
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #populated:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_1

    .line 97
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v2

    move-object v6, v7

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method
