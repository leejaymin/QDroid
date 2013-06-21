.class public Lcom/wareone/tappmt/Expense;
.super Landroid/app/Activity;
.source "Expense.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

.field private m_childData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_groupData:Ljava/util/List;
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

.field private m_remote_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/wareone/tappmt/Expense;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Expense;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Expense;->m_groupData:Ljava/util/List;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Expense;->m_childData:Ljava/util/List;

    .line 212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wareone/tappmt/Expense;->m_remote_id:J

    .line 27
    return-void
.end method

.method private _loadData()V
    .locals 13

    .prologue
    const/4 v10, -0x1

    const-string v12, "currency"

    const-string v11, ""

    .line 159
    iget-object v8, p0, Lcom/wareone/tappmt/Expense;->m_groupData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 160
    iget-object v8, p0, Lcom/wareone/tappmt/Expense;->m_childData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 162
    iget-object v8, p0, Lcom/wareone/tappmt/Expense;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v8, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v0

    .line 164
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_6

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 167
    :cond_0
    const-string v8, "acc_type"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 168
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v4, curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/wareone/tappmt/Expense;->m_groupData:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    array-length v8, v8

    if-lt v5, v8, :cond_7

    .line 173
    const-string v8, "currency"

    const-string v8, ""

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v2, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 177
    .local v6, row_id:J
    iget-object v8, p0, Lcom/wareone/tappmt/Expense;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v8, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v1

    .line 178
    .local v1, c_child:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 179
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 182
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v3, curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const/4 v5, 0x0

    :goto_1
    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    array-length v8, v8

    if-lt v5, v8, :cond_8

    .line 187
    const-string v8, "currency"

    const-string v8, ""

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 180
    if-nez v8, :cond_1

    .line 191
    .end local v3           #curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_3
    iget-object v8, p0, Lcom/wareone/tappmt/Expense;->m_childData:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v1           #c_child:Landroid/database/Cursor;
    .end local v2           #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #i:I
    .end local v6           #row_id:J
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 166
    if-nez v8, :cond_0

    .line 198
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_6
    return-void

    .line 171
    .restart local v4       #curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #i:I
    :cond_7
    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v5

    sget-object v9, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 185
    .restart local v1       #c_child:Landroid/database/Cursor;
    .restart local v2       #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3       #curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #row_id:J
    :cond_8
    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v8, v8, v5

    sget-object v9, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected _refresh()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/wareone/tappmt/Expense;->_loadData()V

    .line 205
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->notifyDataSetChanged()V

    .line 206
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const-string v4, "remote_id"

    const-string v2, "_id"

    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v8

    check-cast v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 115
    .local v8, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    const-string v10, "0"

    .line 118
    .local v10, row_id:Ljava/lang/String;
    iget-wide v0, v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v11

    .line 119
    .local v11, type:I
    if-ne v11, v12, :cond_1

    .line 120
    iget-wide v0, v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    .line 121
    .local v7, groupPos:I
    iget-wide v0, v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    .line 122
    .local v6, childPos:I
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_childData:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #row_id:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 123
    .restart local v10       #row_id:Ljava/lang/String;
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_childData:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "remote_id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wareone/tappmt/Expense;->m_remote_id:J

    .line 133
    .end local v6           #childPos:I
    .end local v7           #groupPos:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_2

    .line 134
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/wareone/tappmt/CategoryEditor;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v9, it:Landroid/content/Intent;
    const-string v0, "ACTION"

    const v1, 0x7f09005c

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v0, "TYPE"

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v0, "_id"

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/Expense;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v9           #it:Landroid/content/Intent;
    :goto_1
    return v12

    .line 126
    :cond_1
    if-nez v11, :cond_0

    .line 127
    iget-wide v0, v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    .line 128
    .restart local v7       #groupPos:I
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_groupData:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #row_id:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 129
    .restart local v10       #row_id:Ljava/lang/String;
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_groupData:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "remote_id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wareone/tappmt/Expense;->m_remote_id:J

    goto :goto_0

    .line 140
    .end local v7           #groupPos:I
    :cond_2
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->isAccountExists(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    const v0, 0x7f09009b

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->hasCategoryChild(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    const v0, 0x7f09009c

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v1, "accounts"

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wareone/tappmt/Expense;->m_remote_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/wareone/tappmt/PmtDbAdapter;->delete(Ljava/lang/String;JJ)J

    .line 146
    invoke-virtual {p0}, Lcom/wareone/tappmt/Expense;->_refresh()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Expense;->setContentView(I)V

    .line 36
    new-instance v0, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wareone/tappmt/Expense;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 37
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 39
    invoke-direct {p0}, Lcom/wareone/tappmt/Expense;->_loadData()V

    .line 42
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Expense;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ExpandableListView;

    .line 44
    .local v12, lv_expense:Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    .line 46
    iget-object v2, p0, Lcom/wareone/tappmt/Expense;->m_groupData:Ljava/util/List;

    .line 47
    const v3, 0x7f030020

    .line 48
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "acc_name"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "currency"

    aput-object v5, v4, v1

    .line 49
    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    .line 50
    iget-object v6, p0, Lcom/wareone/tappmt/Expense;->m_childData:Ljava/util/List;

    .line 51
    const v7, 0x7f03001f

    .line 52
    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "acc_name"

    aput-object v9, v8, v1

    const/4 v1, 0x1

    const-string v9, "currency"

    aput-object v9, v8, v1

    .line 53
    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 44
    iput-object v0, p0, Lcom/wareone/tappmt/Expense;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    .line 55
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    invoke-virtual {v12, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 56
    new-instance v0, Lcom/wareone/tappmt/Expense$1;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/Expense$1;-><init>(Lcom/wareone/tappmt/Expense;)V

    invoke-virtual {v12, v0}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 66
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_groupData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v11, v0, :cond_0

    .line 71
    invoke-virtual {p0, v12}, Lcom/wareone/tappmt/Expense;->registerForContextMenu(Landroid/view/View;)V

    .line 73
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Expense;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 74
    .local v10, btn_new:Landroid/widget/Button;
    new-instance v0, Lcom/wareone/tappmt/Expense$2;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/Expense$2;-><init>(Lcom/wareone/tappmt/Expense;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void

    .line 67
    .end local v10           #btn_new:Landroid/widget/Button;
    :cond_0
    invoke-virtual {v12, v11}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 66
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 49
    :array_0
    .array-data 0x4
        0x6ct 0x0t 0xct 0x7ft
        0x6ft 0x0t 0xct 0x7ft
    .end array-data

    .line 53
    :array_1
    .array-data 0x4
        0x6ct 0x0t 0xct 0x7ft
        0x6ft 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 105
    const v0, 0x7f090070

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 106
    const v0, 0x7f090057

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 107
    const/4 v0, 0x1

    const v1, 0x7f090058

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 108
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wareone/tappmt/Expense;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/wareone/tappmt/Expense;->_refresh()V

    .line 94
    return-void
.end method
