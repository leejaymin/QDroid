.class public Lcom/wareone/tappmt/Payees;
.super Landroid/app/Activity;
.source "Payees.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/wareone/tappmt/Payees;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Payees;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Payees;->m_items:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Payees;->m_data:Ljava/util/List;

    .line 30
    return-void
.end method

.method private _getList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/wareone/tappmt/Payees;->m_data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 210
    return-object v1

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/wareone/tappmt/Payees;->m_data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _loadData()V
    .locals 5

    .prologue
    .line 187
    iget-object v3, p0, Lcom/wareone/tappmt/Payees;->m_data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 188
    iget-object v3, p0, Lcom/wareone/tappmt/Payees;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getPayees()Landroid/database/Cursor;

    move-result-object v0

    .line 190
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/Payees;->m_data:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->FIELDS:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 192
    if-nez v3, :cond_0

    .line 201
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_2
    return-void

    .line 196
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #i:I
    :cond_3
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Payees;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Payees;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/wareone/tappmt/Payees;->m_items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/Payees;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wareone/tappmt/Payees;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Payees;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/wareone/tappmt/Payees;->m_data:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected _refresh()V
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/wareone/tappmt/Payees;->_loadData()V

    .line 215
    iget-object v0, p0, Lcom/wareone/tappmt/Payees;->m_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    iget-object v0, p0, Lcom/wareone/tappmt/Payees;->m_items:Ljava/util/List;

    const-string v1, "payee_name"

    invoke-direct {p0, v1}, Lcom/wareone/tappmt/Payees;->_getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object v0, p0, Lcom/wareone/tappmt/Payees;->m_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 218
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v2, 0x7f03002f

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Payees;->setContentView(I)V

    .line 39
    const v2, 0x7f090080

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Payees;->setTitle(I)V

    .line 41
    new-instance v2, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Payees;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 42
    iget-object v2, p0, Lcom/wareone/tappmt/Payees;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 43
    invoke-direct {p0}, Lcom/wareone/tappmt/Payees;->_loadData()V

    .line 44
    iget-object v2, p0, Lcom/wareone/tappmt/Payees;->m_items:Ljava/util/List;

    const-string v3, "payee_name"

    invoke-direct {p0, v3}, Lcom/wareone/tappmt/Payees;->_getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    const v2, 0x7f0c0089

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Payees;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 50
    .local v1, lv:Landroid/widget/ListView;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03003b

    iget-object v4, p0, Lcom/wareone/tappmt/Payees;->m_items:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Payees;->m_adapter:Landroid/widget/ArrayAdapter;

    .line 51
    iget-object v2, p0, Lcom/wareone/tappmt/Payees;->m_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    new-instance v2, Lcom/wareone/tappmt/Payees$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Payees$1;-><init>(Lcom/wareone/tappmt/Payees;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    new-instance v2, Lcom/wareone/tappmt/Payees$2;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Payees$2;-><init>(Lcom/wareone/tappmt/Payees;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 132
    const v2, 0x7f0c008a

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Payees;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 134
    .local v0, btn_group_new:Landroid/widget/Button;
    new-instance v2, Lcom/wareone/tappmt/Payees$3;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Payees$3;-><init>(Lcom/wareone/tappmt/Payees;)V

    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v2, 0x7f0900bf

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 176
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/wareone/tappmt/Payees;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    return-void
.end method
