.class public Lcom/wareone/tappmt/Liability;
.super Landroid/app/Activity;
.source "Liability.java"


# static fields
.field private static final TAG:Ljava/lang/String;


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/wareone/tappmt/Liability;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Liability;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Liability;->m_data:Ljava/util/List;

    .line 143
    iput-wide v1, p0, Lcom/wareone/tappmt/Liability;->m_id:J

    iput-wide v1, p0, Lcom/wareone/tappmt/Liability;->m_remote_id:J

    .line 24
    return-void
.end method

.method private _loadData()V
    .locals 5

    .prologue
    .line 113
    iget-object v3, p0, Lcom/wareone/tappmt/Liability;->m_data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 115
    iget-object v3, p0, Lcom/wareone/tappmt/Liability;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v0

    .line 117
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    :cond_0
    const-string v3, "acc_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/Liability;->m_data:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
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

    .line 119
    if-nez v3, :cond_0

    .line 131
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_3
    return-void

    .line 125
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

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Liability;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wareone/tappmt/Liability;->m_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/Liability;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/wareone/tappmt/Liability;->m_id:J

    return-void
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Liability;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/wareone/tappmt/Liability;->m_remote_id:J

    return-void
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/Liability;)J
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/wareone/tappmt/Liability;->m_id:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Liability;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wareone/tappmt/Liability;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Liability;)J
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/wareone/tappmt/Liability;->m_remote_id:J

    return-wide v0
.end method


# virtual methods
.method protected _refresh()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/wareone/tappmt/Liability;->_loadData()V

    .line 137
    iget-object v0, p0, Lcom/wareone/tappmt/Liability;->m_adapter:Lcom/wareone/tappmt/Accounts$AccountAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Accounts$AccountAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Liability;->setContentView(I)V

    .line 32
    new-instance v2, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Liability;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 33
    iget-object v2, p0, Lcom/wareone/tappmt/Liability;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 34
    invoke-direct {p0}, Lcom/wareone/tappmt/Liability;->_loadData()V

    .line 37
    const v2, 0x7f0c006a

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Liability;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 38
    .local v1, lv_asset:Landroid/widget/ListView;
    new-instance v2, Lcom/wareone/tappmt/Accounts$AccountAdapter;

    iget-object v3, p0, Lcom/wareone/tappmt/Liability;->m_data:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/wareone/tappmt/Accounts$AccountAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Liability;->m_adapter:Lcom/wareone/tappmt/Accounts$AccountAdapter;

    .line 39
    iget-object v2, p0, Lcom/wareone/tappmt/Liability;->m_adapter:Lcom/wareone/tappmt/Accounts$AccountAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    new-instance v2, Lcom/wareone/tappmt/Liability$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Liability$1;-><init>(Lcom/wareone/tappmt/Liability;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 82
    const v2, 0x7f0c006b

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Liability;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    .local v0, btn_new:Landroid/widget/Button;
    new-instance v2, Lcom/wareone/tappmt/Liability$2;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Liability$2;-><init>(Lcom/wareone/tappmt/Liability;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wareone/tappmt/Liability;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    invoke-virtual {p0}, Lcom/wareone/tappmt/Liability;->_refresh()V

    .line 102
    return-void
.end method
