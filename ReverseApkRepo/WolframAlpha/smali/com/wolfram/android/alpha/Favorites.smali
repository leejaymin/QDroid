.class public Lcom/wolfram/android/alpha/Favorites;
.super Ljava/lang/Object;
.source "Favorites.java"


# static fields
.field private static final FAVORITES_FILE:Ljava/lang/String; = "favorites"

.field private static final SERIALIZATION_VERSION:I = 0x2


# instance fields
.field private context:Landroid/content/Context;

.field private favorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/android/alpha/FavoritesRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/wolfram/android/alpha/Favorites;->context:Landroid/content/Context;

    .line 35
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, dis:Ljava/io/DataInputStream;
    :try_start_0
    const-string v8, "favorites"

    invoke-virtual {p1, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 40
    .local v3, fis:Ljava/io/FileInputStream;
    if-eqz v3, :cond_5

    .line 41
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .end local v0           #dis:Ljava/io/DataInputStream;
    .local v1, dis:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v7

    .line 43
    .local v7, serializationVersion:I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 56
    if-eqz v1, :cond_0

    .line 57
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v0, v1

    .line 60
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #serializationVersion:I
    .restart local v0       #dis:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 45
    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v7       #serializationVersion:I
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 46
    .local v6, numFavorites:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    .line 47
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 48
    invoke-static {v1}, Lcom/wolfram/android/alpha/FavoritesRecord;->createFromStream(Ljava/io/DataInputStream;)Lcom/wolfram/android/alpha/FavoritesRecord;

    move-result-object v5

    .line 49
    .local v5, newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    if-eqz v5, :cond_3

    .line 50
    iget-object v8, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 47
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v5           #newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    :cond_4
    move-object v0, v1

    .line 56
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v4           #i:I
    .end local v6           #numFavorites:I
    .end local v7           #serializationVersion:I
    .restart local v0       #dis:Ljava/io/DataInputStream;
    :cond_5
    if-eqz v0, :cond_1

    .line 57
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_1

    .line 53
    .end local v3           #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 54
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v8, "Wolfram|Alpha"

    const-string v9, "reading favorites"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_1

    .line 56
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_6

    .line 57
    :try_start_7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_5
    throw v8

    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v7       #serializationVersion:I
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #serializationVersion:I
    .restart local v0       #dis:Ljava/io/DataInputStream;
    :catch_4
    move-exception v9

    goto :goto_5

    .line 56
    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto :goto_4

    .line 53
    .end local v0           #dis:Ljava/io/DataInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    :catch_5
    move-exception v8

    move-object v2, v8

    move-object v0, v1

    .end local v1           #dis:Ljava/io/DataInputStream;
    .restart local v0       #dis:Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method private declared-synchronized checkAddFavorite(Lcom/wolfram/android/alpha/FavoritesRecord;)V
    .locals 5
    .parameter "newRecord"

    .prologue
    .line 88
    monitor-enter p0

    const/4 v0, 0x0

    .line 89
    .local v0, didReplace:Z
    :try_start_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 93
    .local v2, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/wolfram/android/alpha/FavoritesRecord;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wolfram/android/alpha/FavoritesRecord;

    .line 95
    .local v1, existingRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    iget-object v3, p1, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    iget-object v4, v1, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    iget-object v4, v1, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 98
    const/4 v0, 0x1

    .line 102
    .end local v1           #existingRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    :cond_1
    if-nez v0, :cond_2

    .line 103
    iget-object v3, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_2
    monitor-exit p0

    return-void

    .line 88
    .end local v2           #iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/wolfram/android/alpha/FavoritesRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized add(Lcom/wolfram/alpha/WAQuery;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/wolfram/android/alpha/FavoritesRecord;

    invoke-direct {v0, p1}, Lcom/wolfram/android/alpha/FavoritesRecord;-><init>(Lcom/wolfram/alpha/WAQuery;)V

    .line 76
    .local v0, newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/Favorites;->checkAddFavorite(Lcom/wolfram/android/alpha/FavoritesRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    .end local v0           #newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized add(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    const-string v1, "com.wolframalpha.help"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v0, Lcom/wolfram/android/alpha/FavoritesRecord;

    invoke-direct {v0, p1}, Lcom/wolfram/android/alpha/FavoritesRecord;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/Favorites;->checkAddFavorite(Lcom/wolfram/android/alpha/FavoritesRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v0           #newRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public get(I)Lcom/wolfram/android/alpha/FavoritesRecord;
    .locals 1
    .parameter "index"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/FavoritesRecord;

    return-object p0
.end method

.method public numFavorites()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized remove(Lcom/wolfram/android/alpha/FavoritesRecord;)V
    .locals 3
    .parameter "recToRemove"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 110
    .local v1, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/wolfram/android/alpha/FavoritesRecord;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/FavoritesRecord;

    .line 114
    .local v0, existingRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    if-ne p1, v0, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v0           #existingRecord:Lcom/wolfram/android/alpha/FavoritesRecord;
    :cond_1
    monitor-exit p0

    return-void

    .line 108
    .end local v1           #iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/wolfram/android/alpha/FavoritesRecord;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized write()V
    .locals 9

    .prologue
    .line 124
    monitor-enter p0

    const/4 v0, 0x0

    .line 126
    .local v0, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/wolfram/android/alpha/Favorites;->context:Landroid/content/Context;

    const-string v7, "favorites"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 127
    .local v3, fos:Ljava/io/FileOutputStream;
    if-eqz v3, :cond_2

    .line 128
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 129
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v6, 0x2

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 130
    iget-object v6, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 131
    iget-object v6, p0, Lcom/wolfram/android/alpha/Favorites;->favorites:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wolfram/android/alpha/FavoritesRecord;

    .line 132
    .local v4, fr:Lcom/wolfram/android/alpha/FavoritesRecord;
    invoke-virtual {v4, v1}, Lcom/wolfram/android/alpha/FavoritesRecord;->writeToStream(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    .end local v4           #fr:Lcom/wolfram/android/alpha/FavoritesRecord;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    move-object v2, v6

    move-object v0, v1

    .line 136
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v6, "Wolfram|Alpha"

    const-string v7, "write() favorites"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 142
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 133
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v1

    .line 138
    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local v5           #i$:Ljava/util/Iterator;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    :cond_2
    if-eqz v0, :cond_0

    .line 139
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_2

    .line 138
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_3

    .line 139
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 124
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 139
    .restart local v2       #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 138
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 135
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    move-object v2, v6

    goto :goto_1
.end method
