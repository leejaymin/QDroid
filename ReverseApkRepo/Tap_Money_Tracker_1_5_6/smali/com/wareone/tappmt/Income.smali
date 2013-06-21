.class public Lcom/wareone/tappmt/Income;
.super Landroid/app/Activity;
.source "Income.java"


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
    .line 25
    const-class v0, Lcom/wareone/tappmt/Income;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Income;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Income;->m_groupData:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Income;->m_childData:Ljava/util/List;

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wareone/tappmt/Income;->m_remote_id:J

    .line 24
    return-void
.end method

.method private _loadData()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const-string v12, "currency"

    const-string v11, ""

    .line 141
    iget-object v8, p0, Lcom/wareone/tappmt/Income;->m_groupData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 142
    iget-object v8, p0, Lcom/wareone/tappmt/Income;->m_childData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 144
    iget-object v8, p0, Lcom/wareone/tappmt/Income;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v8, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v0

    .line 146
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_6

    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 149
    :cond_0
    const-string v8, "acc_type"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 150
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v4, curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/wareone/tappmt/Income;->m_groupData:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    array-length v8, v8

    if-lt v5, v8, :cond_7

    .line 155
    const-string v8, "currency"

    const-string v8, ""

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v2, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 159
    .local v6, row_id:J
    iget-object v8, p0, Lcom/wareone/tappmt/Income;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v8, v6, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoriesByParentId(J)Landroid/database/Cursor;

    move-result-object v1

    .line 160
    .local v1, c_child:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 164
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v3, curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    const/4 v5, 0x0

    :goto_1
    sget-object v8, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    array-length v8, v8

    if-lt v5, v8, :cond_8

    .line 169
    const-string v8, "currency"

    const-string v8, ""

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 162
    if-nez v8, :cond_1

    .line 173
    .end local v3           #curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_3
    iget-object v8, p0, Lcom/wareone/tappmt/Income;->m_childData:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v1           #c_child:Landroid/database/Cursor;
    .end local v2           #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4           #curGroupMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #i:I
    .end local v6           #row_id:J
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 148
    if-nez v8, :cond_0

    .line 180
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_6
    return-void

    .line 153
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

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 167
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

    .line 166
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected _refresh()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/wareone/tappmt/Income;->_loadData()V

    .line 186
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;->notifyDataSetChanged()V

    .line 187
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

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v8

    check-cast v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 98
    .local v8, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    const-string v10, "0"

    .line 100
    .local v10, row_id:Ljava/lang/String;
    iget-wide v0, v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v11

    .line 101
    .local v11, type:I
    if-ne v11, v12, :cond_1

    .line 102
    iget-wide v0, v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    .line 103
    .local v7, groupPos:I
    iget-wide v0, v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    .line 104
    .local v6, childPos:I
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_childData:Ljava/util/List;

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

    .line 105
    .restart local v10       #row_id:Ljava/lang/String;
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_childData:Ljava/util/List;

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

    iput-wide v0, p0, Lcom/wareone/tappmt/Income;->m_remote_id:J

    .line 115
    .end local v6           #childPos:I
    .end local v7           #groupPos:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_2

    .line 116
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/wareone/tappmt/CategoryEditor;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v9, it:Landroid/content/Intent;
    const-string v0, "ACTION"

    const v1, 0x7f09005c

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v0, "TYPE"

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v0, "_id"

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/Income;->startActivity(Landroid/content/Intent;)V

    .line 132
    .end local v9           #it:Landroid/content/Intent;
    :goto_1
    return v12

    .line 108
    :cond_1
    if-nez v11, :cond_0

    .line 109
    iget-wide v0, v8, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    .line 110
    .restart local v7       #groupPos:I
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_groupData:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #row_id:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 111
    .restart local v10       #row_id:Ljava/lang/String;
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_groupData:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "remote_id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wareone/tappmt/Income;->m_remote_id:J

    goto :goto_0

    .line 122
    .end local v7           #groupPos:I
    :cond_2
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->isAccountExists(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const v0, 0x7f09009b

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->hasCategoryChild(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    const v0, 0x7f09009c

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v1, "accounts"

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wareone/tappmt/Income;->m_remote_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/wareone/tappmt/PmtDbAdapter;->delete(Ljava/lang/String;JJ)J

    .line 128
    invoke-virtual {p0}, Lcom/wareone/tappmt/Income;->_refresh()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Income;->setContentView(I)V

    .line 33
    new-instance v0, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wareone/tappmt/Income;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 34
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 35
    invoke-direct {p0}, Lcom/wareone/tappmt/Income;->_loadData()V

    .line 38
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Income;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ExpandableListView;

    .line 40
    .local v11, lv_expense:Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    .line 42
    iget-object v2, p0, Lcom/wareone/tappmt/Income;->m_groupData:Ljava/util/List;

    .line 43
    const v3, 0x7f030020

    .line 44
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "acc_name"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "currency"

    aput-object v5, v4, v1

    .line 45
    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    .line 46
    iget-object v6, p0, Lcom/wareone/tappmt/Income;->m_childData:Ljava/util/List;

    .line 47
    const v7, 0x7f03001f

    .line 48
    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v9, "acc_name"

    aput-object v9, v8, v1

    const/4 v1, 0x1

    const-string v9, "currency"

    aput-object v9, v8, v1

    .line 49
    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 40
    iput-object v0, p0, Lcom/wareone/tappmt/Income;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    .line 51
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_adapter:Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;

    invoke-virtual {v11, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 52
    invoke-virtual {p0, v11}, Lcom/wareone/tappmt/Income;->registerForContextMenu(Landroid/view/View;)V

    .line 54
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/Income;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 55
    .local v10, btn_new:Landroid/widget/Button;
    new-instance v0, Lcom/wareone/tappmt/Income$1;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/Income$1;-><init>(Lcom/wareone/tappmt/Income;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void

    .line 45
    nop

    :array_0
    .array-data 0x4
        0x6ct 0x0t 0xct 0x7ft
        0x6ft 0x0t 0xct 0x7ft
    .end array-data

    .line 49
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

    .line 88
    const v0, 0x7f090070

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 89
    const v0, 0x7f090057

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 90
    const/4 v0, 0x1

    const v1, 0x7f090058

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wareone/tappmt/Income;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/wareone/tappmt/Income;->_refresh()V

    .line 77
    return-void
.end method
