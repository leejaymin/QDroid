.class public Lcom/wareone/tappmt/CategoryEditor;
.super Landroid/app/Activity;
.source "CategoryEditor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_action:I

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

.field private m_parent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_title:Ljava/lang/String;

.field private m_values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/wareone/tappmt/CategoryEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/CategoryEditor;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 233
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/CategoryEditor;->m_data:Ljava/util/List;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/CategoryEditor;->m_parent:Ljava/util/List;

    .line 25
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
    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/wareone/tappmt/CategoryEditor;->m_data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 226
    return-object v1

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/wareone/tappmt/CategoryEditor;->m_data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _init()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 120
    const v5, 0x7f0c003c

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 121
    .local v2, edt:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v6, "acc_name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v5, 0x7f0c003d

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 123
    .local v4, spn:Landroid/widget/Spinner;
    const-string v5, "_id"

    invoke-direct {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->_getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v7, "sub_of"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 124
    const v5, 0x7f0c003f

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #edt:Landroid/widget/EditText;
    check-cast v2, Landroid/widget/EditText;

    .line 125
    .restart local v2       #edt:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v6, "budget"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const v5, 0x7f0c0040

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 127
    .local v0, ckb_budget:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v6, "use_budget"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_0

    move v3, v8

    .line 128
    .local v3, isChecked:Z
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    const v5, 0x7f0c0041

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 130
    .local v1, ckb_share_budget:Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v6, "parent_budget"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_1

    move v3, v8

    .line 131
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    return-void

    .end local v1           #ckb_share_budget:Landroid/widget/CheckBox;
    .end local v3           #isChecked:Z
    :cond_0
    move v3, v9

    .line 127
    goto :goto_0

    .restart local v1       #ckb_share_budget:Landroid/widget/CheckBox;
    .restart local v3       #isChecked:Z
    :cond_1
    move v3, v9

    .line 130
    goto :goto_1
.end method

.method private _loadData()V
    .locals 10

    .prologue
    const-string v9, "acc_type"

    const-string v8, "_id"

    const-string v7, "0"

    .line 136
    iget-wide v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 140
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "currency"

    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "open_amt"

    const-string v5, "0"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "sub_of"

    const-string v5, "0"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "budget"

    const-string v5, "0"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "use_budget"

    const-string v5, "0"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "parent_budget"

    const-string v5, "0"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "frequency"

    const-string v5, "0"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "remote_id"

    const-string v5, "0"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "sync"

    const-string v5, "0"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-object v4, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v5, "acc_type"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getCategoryRoot(I)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    .local v0, c:Landroid/database/Cursor;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_data:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v3, "_id"

    const-string v3, "0"

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v3, "acc_rv"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v3, "acc_type"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v3, "acc_name"

    invoke-virtual {p0}, Lcom/wareone/tappmt/CategoryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 180
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_data:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_8

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 178
    if-nez v3, :cond_1

    .line 187
    .end local v2           #i:I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_3
    return-void

    .line 150
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-wide v4, p0, Lcom/wareone/tappmt/CategoryEditor;->m_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    .restart local v0       #c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 153
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_6

    .line 158
    .end local v2           #i:I
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 154
    .restart local v2       #i:I
    :cond_6
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "_id"

    if-eq v3, v8, :cond_7

    .line 155
    iget-object v3, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v2

    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 182
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private _saveData()V
    .locals 11

    .prologue
    const-string v10, "accounts"

    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 195
    .local v2, curTime:Ljava/util/Calendar;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 196
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 197
    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v7, "modified"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const v6, 0x7f0c003c

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 200
    .local v3, edt:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v7, "acc_name"

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v7, "open_amt"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const v6, 0x7f0c003f

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #edt:Landroid/widget/EditText;
    check-cast v3, Landroid/widget/EditText;

    .line 205
    .restart local v3       #edt:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v7, "budget"

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const v6, 0x7f0c0040

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 208
    .local v0, ckb_budget:Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v7, "use_budget"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 209
    const v6, 0x7f0c0041

    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 210
    .local v1, ckb_share_budget:Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v7, "parent_budget"

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 212
    iget v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_action:I

    const v7, 0x7f09005b

    if-ne v6, v7, :cond_0

    .line 213
    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v7, "accounts"

    iget-object v7, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v6, v10, v7}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 214
    .local v4, new_id:J
    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v7, "_id"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v4           #new_id:J
    :cond_0
    iget v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_action:I

    const v7, 0x7f09005c

    if-ne v6, v7, :cond_1

    .line 217
    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v7, "accounts"

    iget-object v7, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    iget-wide v8, p0, Lcom/wareone/tappmt/CategoryEditor;->m_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v10, v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 219
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/CategoryEditor;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/CategoryEditor;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/CategoryEditor;->_getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/CategoryEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/wareone/tappmt/CategoryEditor;->_saveData()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v8, -0x1

    const-string v11, " "

    const-string v9, "TYPE"

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v5, 0x7f03000c

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/wareone/tappmt/CategoryEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 36
    .local v3, extra:Landroid/os/Bundle;
    const-string v5, "ACTION"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_action:I

    .line 37
    const-string v5, "_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_id:J

    .line 39
    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v6, "acc_rv"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;

    const-string v6, "acc_type"

    const-string v7, "TYPE"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v5, "TYPE"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wareone/tappmt/CategoryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/wareone/tappmt/CategoryEditor;->m_action:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wareone/tappmt/CategoryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_title:Ljava/lang/String;

    .line 45
    :cond_0
    const-string v5, "TYPE"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wareone/tappmt/CategoryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/wareone/tappmt/CategoryEditor;->m_action:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wareone/tappmt/CategoryEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_title:Ljava/lang/String;

    .line 49
    :cond_1
    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_title:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v5, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 52
    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 53
    invoke-direct {p0}, Lcom/wareone/tappmt/CategoryEditor;->_loadData()V

    .line 54
    iget-object v5, p0, Lcom/wareone/tappmt/CategoryEditor;->m_parent:Ljava/util/List;

    const-string v6, "acc_name"

    invoke-direct {p0, v6}, Lcom/wareone/tappmt/CategoryEditor;->_getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    const v5, 0x7f0c003d

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 57
    .local v4, s1:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 58
    const v5, 0x1090008

    iget-object v6, p0, Lcom/wareone/tappmt/CategoryEditor;->m_parent:Ljava/util/List;

    .line 57
    invoke-direct {v0, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 59
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 60
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 62
    new-instance v5, Lcom/wareone/tappmt/CategoryEditor$1;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/CategoryEditor$1;-><init>(Lcom/wareone/tappmt/CategoryEditor;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 83
    const v5, 0x7f0c0010

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 85
    .local v2, btn_save:Landroid/widget/Button;
    new-instance v5, Lcom/wareone/tappmt/CategoryEditor$2;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/CategoryEditor$2;-><init>(Lcom/wareone/tappmt/CategoryEditor;)V

    .line 84
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v5, 0x7f0c0011

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/CategoryEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 101
    .local v1, btn_cancel:Landroid/widget/Button;
    new-instance v5, Lcom/wareone/tappmt/CategoryEditor$3;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/CategoryEditor$3;-><init>(Lcom/wareone/tappmt/CategoryEditor;)V

    .line 100
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-direct {p0}, Lcom/wareone/tappmt/CategoryEditor;->_init()V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wareone/tappmt/CategoryEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    return-void
.end method
