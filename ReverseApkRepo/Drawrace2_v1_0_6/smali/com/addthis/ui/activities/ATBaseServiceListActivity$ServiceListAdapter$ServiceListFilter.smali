.class Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;
.super Landroid/widget/Filter;
.source "ATBaseServiceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;


# direct methods
.method private constructor <init>(Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;-><init>(Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 11
    .parameter "prefix"

    .prologue
    .line 270
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 272
    .local v7, results:Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 273
    :cond_0
    iget-object v8, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    #getter for: Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->access$1(Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 274
    :try_start_0
    iget-object v8, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    iget-object v8, v8, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->originalItems:Lcom/addthis/models/ATServiceList;

    iput-object v8, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 275
    iget-object v8, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    iget-object v8, v8, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->originalItems:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v8}, Lcom/addthis/models/ATServiceList;->size()I

    move-result v8

    iput v8, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 273
    monitor-exit v9

    .line 303
    :goto_0
    return-object v7

    .line 273
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 278
    :cond_1
    iget-object v8, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    #getter for: Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->access$1(Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 280
    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, prefixString:Ljava/lang/String;
    new-instance v1, Lcom/addthis/models/ATServiceList;

    invoke-direct {v1}, Lcom/addthis/models/ATServiceList;-><init>()V

    .line 283
    .local v1, filteredItems:Lcom/addthis/models/ATServiceList;
    new-instance v5, Lcom/addthis/models/ATServiceList;

    invoke-direct {v5}, Lcom/addthis/models/ATServiceList;-><init>()V

    .line 284
    .local v5, localItems:Lcom/addthis/models/ATServiceList;
    iget-object v8, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    iget-object v8, v8, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->originalItems:Lcom/addthis/models/ATServiceList;

    invoke-virtual {v5, v8}, Lcom/addthis/models/ATServiceList;->addAll(Ljava/util/Collection;)Z

    .line 285
    invoke-virtual {v5}, Lcom/addthis/models/ATServiceList;->size()I

    move-result v0

    .line 287
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 297
    iput-object v1, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 298
    invoke-virtual {v1}, Lcom/addthis/models/ATServiceList;->size()I

    move-result v8

    iput v8, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 278
    monitor-exit v9

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #filteredItems:Lcom/addthis/models/ATServiceList;
    .end local v2           #i:I
    .end local v5           #localItems:Lcom/addthis/models/ATServiceList;
    .end local v6           #prefixString:Ljava/lang/String;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    .line 288
    .restart local v0       #count:I
    .restart local v1       #filteredItems:Lcom/addthis/models/ATServiceList;
    .restart local v2       #i:I
    .restart local v5       #localItems:Lcom/addthis/models/ATServiceList;
    .restart local v6       #prefixString:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v5, v2}, Lcom/addthis/models/ATServiceList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/addthis/models/ATService;

    .line 289
    .local v3, item:Lcom/addthis/models/ATService;
    invoke-virtual {v3}, Lcom/addthis/models/ATService;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 290
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, itemName:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 293
    const-string v8, "BaseActivity"

    const-string v10, "Found"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v1, v3}, Lcom/addthis/models/ATServiceList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .parameter "prefix"
    .parameter "results"

    .prologue
    .line 310
    iget-object v3, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    #getter for: Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->access$1(Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 311
    :try_start_0
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Lcom/addthis/models/ATServiceList;

    .line 312
    .local v2, localItems:Lcom/addthis/models/ATServiceList;
    iget-object v3, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    invoke-virtual {v3}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->notifyDataSetChanged()V

    .line 313
    iget-object v3, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    invoke-virtual {v3}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->clear()V

    .line 315
    invoke-virtual {v2}, Lcom/addthis/models/ATServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/addthis/models/ATService;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 315
    if-nez v3, :cond_0

    .line 310
    monitor-exit v4

    .line 321
    return-void

    .line 317
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/models/ATService;

    .line 318
    .local v0, gi:Lcom/addthis/models/ATService;
    iget-object v3, p0, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter$ServiceListFilter;->this$1:Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;

    invoke-virtual {v3, v0}, Lcom/addthis/ui/activities/ATBaseServiceListActivity$ServiceListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    .end local v0           #gi:Lcom/addthis/models/ATService;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/addthis/models/ATService;>;"
    .end local v2           #localItems:Lcom/addthis/models/ATServiceList;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
