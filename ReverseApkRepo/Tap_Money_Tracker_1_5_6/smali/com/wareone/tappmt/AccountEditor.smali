.class public Lcom/wareone/tappmt/AccountEditor;
.super Landroid/app/Activity;
.source "AccountEditor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_action:I

.field private m_currency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_id:J

.field private m_qif:[Ljava/lang/String;

.field private m_qif_index_offset:I

.field private m_title:Ljava/lang/String;

.field private m_values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/wareone/tappmt/AccountEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/AccountEditor;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 203
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/AccountEditor;->m_currency:Ljava/util/List;

    .line 17
    return-void
.end method

.method private _init()V
    .locals 6

    .prologue
    .line 130
    const v3, 0x7f0c000b

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 131
    .local v0, edt:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "acc_name"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v3, 0x7f0c0013

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 133
    .local v2, spn_type:Landroid/widget/Spinner;
    iget-object v3, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "qif_type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/wareone/tappmt/AccountEditor;->m_qif_index_offset:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 134
    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 135
    .local v1, spn:Landroid/widget/Spinner;
    iget-object v3, p0, Lcom/wareone/tappmt/AccountEditor;->m_currency:Ljava/util/List;

    iget-object v4, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v5, "currency"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 136
    const v3, 0x7f0c000f

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edt:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 137
    .restart local v0       #edt:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "open_amt"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method private _loadCurrency()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/wareone/tappmt/AccountEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->getCurrencies()Landroid/database/Cursor;

    move-result-object v0

    .line 170
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/wareone/tappmt/AccountEditor;->m_currency:Ljava/util/List;

    const-string v2, "currency_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 172
    if-nez v1, :cond_0

    .line 177
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_2
    return-void
.end method

.method private _loadData()V
    .locals 7

    .prologue
    const-string v6, "0"

    .line 142
    iget-wide v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "qif_type"

    iget v4, p0, Lcom/wareone/tappmt/AccountEditor;->m_qif_index_offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "currency"

    iget-object v4, p0, Lcom/wareone/tappmt/AccountEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "open_amt"

    const-string v4, "0"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "budget"

    const-string v4, "0"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "sub_of"

    const-string v4, "0"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "frequency"

    const-string v4, "0"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "remote_id"

    const-string v4, "0"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "sync"

    const-string v4, "0"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-wide v3, p0, Lcom/wareone/tappmt/AccountEditor;->m_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 161
    .end local v1           #i:I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 157
    .restart local v1       #i:I
    :cond_3
    sget-object v2, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "_id"

    if-eq v2, v3, :cond_4

    .line 158
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Account;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private _saveData()V
    .locals 7

    .prologue
    const-string v6, "accounts"

    .line 183
    const v2, 0x7f0c000b

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 184
    .local v0, edt:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "acc_name"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const v2, 0x7f0c000d

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 186
    .local v1, spn:Landroid/widget/Spinner;
    iget-object v3, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v4, "currency"

    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_currency:Ljava/util/List;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const v2, 0x7f0c000f

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edt:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 188
    .restart local v0       #edt:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v3, "open_amt"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_action:I

    const v3, 0x7f09005b

    if-ne v2, v3, :cond_0

    .line 191
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v3, "accounts"

    iget-object v3, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    invoke-virtual {v2, v6, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 193
    :cond_0
    iget v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_action:I

    const v3, 0x7f09005c

    if-ne v2, v3, :cond_1

    .line 194
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    const-string v3, "accounts"

    iget-object v3, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    iget-wide v4, p0, Lcom/wareone/tappmt/AccountEditor;->m_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/Long;)J

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/wareone/tappmt/AccountEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2, p0}, Lcom/wareone/tappmt/PmtDbAdapter;->updateWidget(Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/AccountEditor;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/AccountEditor;)I
    .locals 1
    .parameter

    .prologue
    .line 206
    iget v0, p0, Lcom/wareone/tappmt/AccountEditor;->m_qif_index_offset:I

    return v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/AccountEditor;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wareone/tappmt/AccountEditor;->m_currency:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/AccountEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/wareone/tappmt/AccountEditor;->_saveData()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v7, 0x7f030003

    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/AccountEditor;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/wareone/tappmt/AccountEditor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 27
    .local v4, extra:Landroid/os/Bundle;
    const-string v7, "ACTION"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_action:I

    .line 28
    const-string v7, "_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_id:J

    .line 30
    new-instance v7, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v7, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 31
    iget-object v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v7}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 32
    invoke-direct {p0}, Lcom/wareone/tappmt/AccountEditor;->_loadData()V

    .line 33
    invoke-direct {p0}, Lcom/wareone/tappmt/AccountEditor;->_loadCurrency()V

    .line 35
    iget-object v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v8, "acc_rv"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_values:Landroid/content/ContentValues;

    const-string v8, "acc_type"

    const-string v9, "TYPE"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v7, "TYPE"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wareone/tappmt/AccountEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/wareone/tappmt/AccountEditor;->m_action:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/wareone/tappmt/AccountEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090069

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_title:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/wareone/tappmt/AccountEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_qif:[Ljava/lang/String;

    .line 41
    const/4 v7, 0x0

    iput v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_qif_index_offset:I

    .line 43
    :cond_0
    const-string v7, "TYPE"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wareone/tappmt/AccountEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/wareone/tappmt/AccountEditor;->m_action:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/wareone/tappmt/AccountEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09006a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_title:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/wareone/tappmt/AccountEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_qif:[Ljava/lang/String;

    .line 46
    const/4 v7, 0x4

    iput v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_qif_index_offset:I

    .line 49
    :cond_1
    iget-object v7, p0, Lcom/wareone/tappmt/AccountEditor;->m_title:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/AccountEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    const v7, 0x7f0c0013

    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 52
    .local v6, spn_type:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 53
    const v7, 0x1090008

    iget-object v8, p0, Lcom/wareone/tappmt/AccountEditor;->m_qif:[Ljava/lang/String;

    .line 52
    invoke-direct {v1, p0, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 54
    .local v1, adapter_qif:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 55
    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 56
    new-instance v7, Lcom/wareone/tappmt/AccountEditor$1;

    invoke-direct {v7, p0}, Lcom/wareone/tappmt/AccountEditor$1;-><init>(Lcom/wareone/tappmt/AccountEditor;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 75
    const v7, 0x7f0c000d

    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 76
    .local v5, s1:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 77
    const v7, 0x1090008

    iget-object v8, p0, Lcom/wareone/tappmt/AccountEditor;->m_currency:Ljava/util/List;

    .line 76
    invoke-direct {v0, p0, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 78
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 79
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 80
    new-instance v7, Lcom/wareone/tappmt/AccountEditor$2;

    invoke-direct {v7, p0}, Lcom/wareone/tappmt/AccountEditor$2;-><init>(Lcom/wareone/tappmt/AccountEditor;)V

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 99
    const v7, 0x7f0c0010

    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 101
    .local v3, btn_save:Landroid/widget/Button;
    new-instance v7, Lcom/wareone/tappmt/AccountEditor$3;

    invoke-direct {v7, p0}, Lcom/wareone/tappmt/AccountEditor$3;-><init>(Lcom/wareone/tappmt/AccountEditor;)V

    .line 100
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v7, 0x7f0c0011

    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/AccountEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 111
    .local v2, btn_cancel:Landroid/widget/Button;
    new-instance v7, Lcom/wareone/tappmt/AccountEditor$4;

    invoke-direct {v7, p0}, Lcom/wareone/tappmt/AccountEditor$4;-><init>(Lcom/wareone/tappmt/AccountEditor;)V

    .line 110
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/wareone/tappmt/AccountEditor;->_init()V

    .line 119
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wareone/tappmt/AccountEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 126
    return-void
.end method
