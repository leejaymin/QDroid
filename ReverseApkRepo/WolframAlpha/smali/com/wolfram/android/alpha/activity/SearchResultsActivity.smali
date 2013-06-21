.class public Lcom/wolfram/android/alpha/activity/SearchResultsActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "SearchResultsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/activity/SearchResultsActivity$1;,
        Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchComparator;,
        Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;,
        Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;,
        Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;
    }
.end annotation


# static fields
.field public static final IS_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final IS_HISTORY:Ljava/lang/String; = "history"

.field public static final IS_NEW_QUERY:Ljava/lang/String; = "new"

.field public static final QUERY_TYPE_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.searchresults.querytype"


# instance fields
.field assumptionsLabel:Ljava/lang/String;

.field assumptionsLabelPlural:Ljava/lang/String;

.field inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    .line 346
    return-void
.end method

.method public static doSearch(Ljava/lang/String;)[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    .locals 13
    .parameter "query"

    .prologue
    .line 163
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v8, matches:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;>;"
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getFavorites()Lcom/wolfram/android/alpha/Favorites;

    move-result-object v0

    .line 167
    .local v0, favorites:Lcom/wolfram/android/alpha/Favorites;
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/Favorites;->numFavorites()I

    move-result v9

    .line 168
    .local v9, numFavs:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v9, :cond_2

    .line 169
    invoke-virtual {v0, v6}, Lcom/wolfram/android/alpha/Favorites;->get(I)Lcom/wolfram/android/alpha/FavoritesRecord;

    move-result-object v10

    .line 170
    .local v10, rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    iget-object v7, v10, Lcom/wolfram/android/alpha/FavoritesRecord;->input:Ljava/lang/String;

    .line 171
    .local v7, input:Ljava/lang/String;
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 172
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    iget-object v12, v10, Lcom/wolfram/android/alpha/FavoritesRecord;->assumptions:[Ljava/lang/String;

    array-length v12, v12

    mul-int/lit8 v12, v12, 0x25

    add-int/2addr v11, v12

    int-to-long v2, v11

    .line 173
    .local v2, hash:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    invoke-direct {v12, v10, p0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;-><init>(Lcom/wolfram/android/alpha/FavoritesRecord;Ljava/lang/String;)V

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v2           #hash:J
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 179
    .end local v7           #input:Ljava/lang/String;
    .end local v10           #rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    :cond_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getHistory()Lcom/wolfram/android/alpha/History;

    move-result-object v4

    .line 180
    .local v4, history:Lcom/wolfram/android/alpha/History;
    invoke-virtual {v4}, Lcom/wolfram/android/alpha/History;->getFullHistory()[Lcom/wolfram/android/alpha/HistoryRecord;

    move-result-object v1

    .line 181
    .local v1, fullHistory:[Lcom/wolfram/android/alpha/HistoryRecord;
    const/4 v6, 0x0

    :goto_1
    array-length v11, v1

    if-ge v6, v11, :cond_5

    .line 182
    aget-object v10, v1, v6

    .line 183
    .local v10, rec:Lcom/wolfram/android/alpha/HistoryRecord;
    iget-object v7, v10, Lcom/wolfram/android/alpha/HistoryRecord;->input:Ljava/lang/String;

    .line 184
    .restart local v7       #input:Ljava/lang/String;
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 185
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    iget-object v12, v10, Lcom/wolfram/android/alpha/HistoryRecord;->assumptions:[Ljava/lang/String;

    array-length v12, v12

    mul-int/lit8 v12, v12, 0x25

    add-int/2addr v11, v12

    int-to-long v2, v11

    .line 186
    .restart local v2       #hash:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 187
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v12, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    invoke-direct {v12, v10, p0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;-><init>(Lcom/wolfram/android/alpha/HistoryRecord;Ljava/lang/String;)V

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v2           #hash:J
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 191
    .end local v7           #input:Ljava/lang/String;
    .end local v10           #rec:Lcom/wolfram/android/alpha/HistoryRecord;
    :cond_5
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v12

    new-array v12, v12, [Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    .line 193
    .local v5, holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    array-length v11, v5

    if-lez v11, :cond_6

    .line 195
    new-instance v11, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchComparator;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchComparator;-><init>(Lcom/wolfram/android/alpha/activity/SearchResultsActivity$1;)V

    invoke-static {v5, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 197
    :cond_6
    return-object v5
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 20
    .parameter "intent"

    .prologue
    .line 88
    const-string v17, "android.intent.action.SEARCH"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 90
    const-string v17, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, query:Ljava/lang/String;
    invoke-static {v9}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->doSearch(Ljava/lang/String;)[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;

    move-result-object v8

    .line 92
    .local v8, holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    const v17, 0x7f0e0097

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    .line 93
    .local v15, view:Landroid/widget/ListView;
    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0051

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, baseText:Ljava/lang/String;
    new-instance v17, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$EmptySearchResultsAdapter;-><init>(Lcom/wolfram/android/alpha/activity/SearchResultsActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    .end local v5           #baseText:Ljava/lang/String;
    .end local v8           #holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    .end local v9           #query:Ljava/lang/String;
    .end local v15           #view:Landroid/widget/ListView;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v8       #holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    .restart local v9       #query:Ljava/lang/String;
    .restart local v15       #view:Landroid/widget/ListView;
    :cond_1
    new-instance v17, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchResultsAdapter;-><init>(Lcom/wolfram/android/alpha/activity/SearchResultsActivity;[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;)V

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 100
    .end local v8           #holders:[Lcom/wolfram/android/alpha/activity/SearchResultsActivity$SearchMatchHolder;
    .end local v9           #query:Ljava/lang/String;
    .end local v15           #view:Landroid/widget/ListView;
    :cond_2
    const-string v17, "com.wolfram.android.alpha.intent.action.DO_QUERY_SUGGESTION"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 106
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v10, queryIntent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 111
    .local v14, uri:Landroid/net/Uri;
    const/16 v16, 0x0

    .line 112
    .local v16, wasError:Z
    if-eqz v14, :cond_3

    .line 114
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 115
    .restart local v9       #query:Ljava/lang/String;
    const-string v17, "com.wolfram.android.alpha.searchresults.querytype"

    const-string v18, "new"

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v17, "user_query"

    move-object v0, v10

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .end local v9           #query:Ljava/lang/String;
    :goto_1
    const-string v17, "com.wolfram.android.alpha.activity.WolframAlpha"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v17, "com.wolfram.android.alpha.activity.WolframAlpha.DO_QUERY"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/high16 v17, 0x400

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    if-nez v16, :cond_0

    .line 156
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v17, "intent_extra_data_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, serializedData:Ljava/lang/String;
    const/16 v17, 0x0

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 126
    .local v13, type:I
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 127
    .local v6, bytes:[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/16 v17, 0x1

    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object v0, v4

    move-object v1, v6

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 128
    .local v4, bais:Ljava/io/ByteArrayInputStream;
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    .local v7, dis:Ljava/io/DataInputStream;
    const/16 v17, 0x46

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 130
    invoke-static {v7}, Lcom/wolfram/android/alpha/FavoritesRecord;->createFromStream(Ljava/io/DataInputStream;)Lcom/wolfram/android/alpha/FavoritesRecord;

    move-result-object v11

    .line 131
    .local v11, rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    if-nez v11, :cond_4

    .line 133
    const/16 v16, 0x1

    .line 148
    .end local v11           #rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    :goto_2
    :try_start_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v17

    goto :goto_1

    .line 135
    .restart local v11       #rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    :cond_4
    invoke-static {v11, v10}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->fillIntentToLaunchFavorite(Lcom/wolfram/android/alpha/FavoritesRecord;Landroid/content/Intent;)V

    .line 136
    const-string v17, "com.wolfram.android.alpha.searchresults.querytype"

    const-string v18, "favorites"

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 139
    .end local v11           #rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    :cond_5
    invoke-static {v7}, Lcom/wolfram/android/alpha/HistoryRecord;->createFromStream(Ljava/io/DataInputStream;)Lcom/wolfram/android/alpha/HistoryRecord;

    move-result-object v11

    .line 140
    .local v11, rec:Lcom/wolfram/android/alpha/HistoryRecord;
    if-nez v11, :cond_6

    .line 142
    const/16 v16, 0x1

    goto :goto_2

    .line 144
    :cond_6
    const/16 v17, 0x0

    move-object v0, v11

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->fillIntentToLaunchHistoryItem(Lcom/wolfram/android/alpha/HistoryRecord;Z)V

    .line 145
    const-string v17, "com.wolfram.android.alpha.searchresults.querytype"

    const-string v18, "history"

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f03008c

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->assumptionsLabel:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->assumptionsLabelPlural:Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->inflater:Landroid/view/LayoutInflater;

    .line 72
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->handleIntent(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "chosenItem"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 206
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/wolfram/android/alpha/FavoritesRecord;

    if-eqz v4, :cond_0

    .line 207
    move-object v0, v3

    check-cast v0, Lcom/wolfram/android/alpha/FavoritesRecord;

    move-object v2, v0

    .line 208
    .local v2, rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    invoke-static {v2, v1}, Lcom/wolfram/android/alpha/activity/FavoritesActivity;->fillIntentToLaunchFavorite(Lcom/wolfram/android/alpha/FavoritesRecord;Landroid/content/Intent;)V

    .line 209
    const-string v4, "com.wolfram.android.alpha.searchresults.querytype"

    const-string v5, "favorites"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    .end local v2           #rec:Lcom/wolfram/android/alpha/FavoritesRecord;
    :goto_0
    const-string v4, "com.wolfram.android.alpha.activity.WolframAlpha"

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v4, "com.wolfram.android.alpha.activity.WolframAlpha.DO_QUERY"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void

    .line 211
    :cond_0
    move-object v0, v3

    check-cast v0, Lcom/wolfram/android/alpha/HistoryRecord;

    move-object v2, v0

    .line 212
    .local v2, rec:Lcom/wolfram/android/alpha/HistoryRecord;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->fillIntentToLaunchHistoryItem(Lcom/wolfram/android/alpha/HistoryRecord;Z)V

    .line 213
    const-string v4, "com.wolfram.android.alpha.searchresults.querytype"

    const-string v5, "history"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->setIntent(Landroid/content/Intent;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/activity/SearchResultsActivity;->handleIntent(Landroid/content/Intent;)V

    .line 83
    return-void
.end method
