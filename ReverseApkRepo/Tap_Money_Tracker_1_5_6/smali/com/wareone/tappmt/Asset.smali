.class public Lcom/wareone/tappmt/Asset;
.super Landroid/app/Activity;
.source "Asset.java"


# instance fields
.field private m_adapter:Lcom/wareone/tappmt/Accounts$AccountAdapter;

.field private m_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_id:J

.field private m_remote_id:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Asset;->m_data:Ljava/util/List;

    .line 144
    iput-wide v1, p0, Lcom/wareone/tappmt/Asset;->m_id:J

    iput-wide v1, p0, Lcom/wareone/tappmt/Asset;->m_remote_id:J

    .line 25
    return-void
.end method

.method private _loadData()V
    .locals 5

    .prologue
    .line 112
    iget-object v3, p0, Lcom/wareone/tappmt/Asset;->m_data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 114
    iget-object v3, p0, Lcom/wareone/tappmt/Asset;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v0

    .line 116
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    :cond_0
    const-string v3, "acc_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/Asset;->m_data:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 129
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 118
    if-nez v3, :cond_0

    .line 131
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_3
    return-void

    .line 124
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #i:I
    :cond_4
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Asset;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wareone/tappmt/Asset;->m_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/Asset;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/wareone/tappmt/Asset;->m_id:J

    return-void
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Asset;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/wareone/tappmt/Asset;->m_remote_id:J

    return-void
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/Asset;)J
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/wareone/tappmt/Asset;->m_id:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Asset;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/wareone/tappmt/Asset;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Asset;)J
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/wareone/tappmt/Asset;->m_remote_id:J

    return-wide v0
.end method


# virtual methods
.method protected _refresh()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/wareone/tappmt/Asset;->_loadData()V

    .line 138
    iget-object v0, p0, Lcom/wareone/tappmt/Asset;->m_adapter:Lcom/wareone/tappmt/Accounts$AccountAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Accounts$AccountAdapter;->notifyDataSetChanged()V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Asset;->setContentView(I)V

    .line 32
    new-instance v2, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Asset;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 33
    iget-object v2, p0, Lcom/wareone/tappmt/Asset;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 34
    invoke-direct {p0}, Lcom/wareone/tappmt/Asset;->_loadData()V

    .line 37
    const v2, 0x7f0c0029

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Asset;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 38
    .local v1, lv_asset:Landroid/widget/ListView;
    new-instance v2, Lcom/wareone/tappmt/Accounts$AccountAdapter;

    iget-object v3, p0, Lcom/wareone/tappmt/Asset;->m_data:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/wareone/tappmt/Accounts$AccountAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Asset;->m_adapter:Lcom/wareone/tappmt/Accounts$AccountAdapter;

    .line 39
    iget-object v2, p0, Lcom/wareone/tappmt/Asset;->m_adapter:Lcom/wareone/tappmt/Accounts$AccountAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    new-instance v2, Lcom/wareone/tappmt/Asset$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Asset$1;-><init>(Lcom/wareone/tappmt/Asset;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 81
    const v2, 0x7f0c002a

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Asset;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    .local v0, btn_new:Landroid/widget/Button;
    new-instance v2, Lcom/wareone/tappmt/Asset$2;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Asset$2;-><init>(Lcom/wareone/tappmt/Asset;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wareone/tappmt/Asset;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/wareone/tappmt/Asset;->_refresh()V

    .line 101
    return-void
.end method
