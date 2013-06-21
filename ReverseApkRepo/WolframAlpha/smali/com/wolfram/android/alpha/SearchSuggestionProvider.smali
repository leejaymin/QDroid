.class public Lcom/wolfram/android/alpha/SearchSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SearchSuggestionProvider.java"


# static fields
.field public static AUTHORITY:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static columnNames:[Ljava/lang/String;


# instance fields
.field private askLabel:Ljava/lang/String;

.field private askTemplate:Ljava/lang/String;

.field private favoriteLabel:Ljava/lang/String;

.field private historyLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-string v0, "com.wolfram.android.alpha.searchsuggestionprovider"

    sput-object v0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->AUTHORITY:Ljava/lang/String;

    .line 29
    const-string v0, "content://com.wolfram.android.alpha.searchsuggestionprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->columnNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 61
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, rsrcs:Landroid/content/res/Resources;
    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->favoriteLabel:Ljava/lang/String;

    .line 70
    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->historyLabel:Ljava/lang/String;

    .line 71
    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->askLabel:Ljava/lang/String;

    .line 72
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->askTemplate:Ljava/lang/String;

    .line 73
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 83
    .local v14, query:Ljava/lang/String;
    const-string v16, "search_suggest_query"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 84
    const/16 v16, 0x0

    .line 113
    .end local p1
    :goto_0
    return-object v16

    .line 86
    .restart local p1
    :cond_0
    invoke-static {v14}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->doSearch(Ljava/lang/String;)[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    move-result-object v8

    .line 88
    .local v8, holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v16, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->columnNames:[Ljava/lang/String;

    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object v0, v5

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 89
    .local v5, cursor:Landroid/database/MatrixCursor;
    const/4 v10, 0x0

    .line 90
    .local v10, id:I
    move-object v3, v8

    .local v3, arr$:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    array-length v13, v3

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v11, v10

    .end local v10           #id:I
    .end local p1
    .local v11, id:I
    :goto_1
    if-ge v9, v13, :cond_3

    aget-object v7, v3, v9

    .line 91
    .local v7, holder:Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v16, 0xc8

    move-object v0, v4

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 92
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 93
    .local v6, dos:Ljava/io/DataOutputStream;
    move-object v0, v7

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->favOrHistoryRecord:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/wolfram/android/alpha/FavoritesRecord;

    move v12, v0

    .line 96
    .local v12, isFavorite:Z
    if-eqz v12, :cond_1

    .line 97
    const/16 v16, 0x46

    :try_start_0
    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 98
    move-object v0, v7

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->favOrHistoryRecord:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/wolfram/android/alpha/FavoritesRecord;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/FavoritesRecord;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 103
    :goto_2
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 104
    new-instance v15, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    .line 105
    .local v15, serializedRecord:Ljava/lang/String;
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v17, 0x0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #id:I
    .restart local v10       #id:I
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object v0, v7

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->input:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->favoriteLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    :goto_3
    aput-object v18, v16, v17

    const/16 v17, 0x3

    const/16 v18, 0x0

    aput-object v18, v16, v17

    const/16 v17, 0x4

    aput-object v15, v16, v17

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .end local v15           #serializedRecord:Ljava/lang/String;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move v11, v10

    .end local v10           #id:I
    .restart local v11       #id:I
    goto :goto_1

    .line 100
    :cond_1
    const/16 v16, 0x48

    :try_start_2
    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    move-object v0, v7

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;->favOrHistoryRecord:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/wolfram/android/alpha/HistoryRecord;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/HistoryRecord;->writeToStream(Ljava/io/DataOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 107
    :catch_0
    move-exception v16

    move v10, v11

    .end local v11           #id:I
    .restart local v10       #id:I
    goto :goto_4

    .line 105
    .restart local v15       #serializedRecord:Ljava/lang/String;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->historyLabel:Ljava/lang/String;

    move-object/from16 v18, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 112
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #dos:Ljava/io/DataOutputStream;
    .end local v7           #holder:Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    .end local v10           #id:I
    .end local v12           #isFavorite:Z
    .end local v15           #serializedRecord:Ljava/lang/String;
    .restart local v11       #id:I
    :cond_3
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #id:I
    .restart local v10       #id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->askLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/SearchSuggestionProvider;->askTemplate:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    aput-object v14, v16, v17

    const/16 v17, 0x4

    const/16 v18, 0x0

    aput-object v18, v16, v17

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v16, v5

    .line 113
    goto/16 :goto_0

    .line 107
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #dos:Ljava/io/DataOutputStream;
    .restart local v7       #holder:Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    .restart local v12       #isFavorite:Z
    .restart local v15       #serializedRecord:Ljava/lang/String;
    :catch_1
    move-exception v16

    goto :goto_4
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
