.class public Lcom/wareone/tappmt/Template;
.super Landroid/app/Activity;
.source "Template.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Template$TemplateAdapter;
    }
.end annotation


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

.field private m_id:J

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

.field private m_remote_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/wareone/tappmt/Template;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Template;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Template;->m_items:Ljava/util/List;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/Template;->m_data:Ljava/util/List;

    .line 307
    iput-wide v1, p0, Lcom/wareone/tappmt/Template;->m_id:J

    iput-wide v1, p0, Lcom/wareone/tappmt/Template;->m_remote_id:J

    .line 40
    return-void
.end method

.method private _delete()V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    const v1, 0x7f09004e

    .line 236
    new-instance v2, Lcom/wareone/tappmt/Template$4;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Template$4;-><init>(Lcom/wareone/tappmt/Template;)V

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    const v1, 0x7f09004f

    .line 248
    new-instance v2, Lcom/wareone/tappmt/Template$5;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Template$5;-><init>(Lcom/wareone/tappmt/Template;)V

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 257
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
    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/wareone/tappmt/Template;->m_data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 290
    return-object v1

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/wareone/tappmt/Template;->m_data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _loadData()V
    .locals 7

    .prologue
    .line 261
    sget-object v5, Lcom/wareone/tappmt/Template;->TAG:Ljava/lang/String;

    const-string v6, "_loadData"

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/wareone/tappmt/Template;->m_data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 265
    iget-object v5, p0, Lcom/wareone/tappmt/Template;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getTemplates()Landroid/database/Cursor;

    move-result-object v0

    .line 266
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, df:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 272
    .local v1, cal:Ljava/util/Calendar;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v2, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/wareone/tappmt/Template;->m_data:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 268
    if-nez v5, :cond_0

    .line 281
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #df:Ljava/text/SimpleDateFormat;
    .end local v4           #i:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_2
    return-void

    .line 275
    .restart local v1       #cal:Ljava/util/Calendar;
    .restart local v2       #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #df:Ljava/text/SimpleDateFormat;
    .restart local v4       #i:I
    :cond_3
    sget-object v5, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    aget-object v5, v5, v4

    sget-object v6, Lcom/wareone/tappmt/PmtDbAdapter$Template;->FIELDS:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Template;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/wareone/tappmt/Template;->m_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/wareone/tappmt/Template;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Template;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/wareone/tappmt/Template;->m_id:J

    return-void
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/Template;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/wareone/tappmt/Template;->m_remote_id:J

    return-void
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Template;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/wareone/tappmt/Template;->_delete()V

    return-void
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Template;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/wareone/tappmt/Template;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/wareone/tappmt/Template;)J
    .locals 2
    .parameter

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/wareone/tappmt/Template;->m_id:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/wareone/tappmt/Template;)J
    .locals 2
    .parameter

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/wareone/tappmt/Template;->m_remote_id:J

    return-wide v0
.end method


# virtual methods
.method protected _refresh()V
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/wareone/tappmt/Template;->TAG:Ljava/lang/String;

    const-string v1, "refresh List"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/wareone/tappmt/Template;->_loadData()V

    .line 297
    iget-object v0, p0, Lcom/wareone/tappmt/Template;->m_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 298
    iget-object v0, p0, Lcom/wareone/tappmt/Template;->m_items:Ljava/util/List;

    const-string v1, "template_name"

    invoke-direct {p0, v1}, Lcom/wareone/tappmt/Template;->_getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    iget-object v0, p0, Lcom/wareone/tappmt/Template;->m_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 300
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v2, 0x7f03003e

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Template;->setContentView(I)V

    .line 137
    new-instance v2, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Template;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 138
    iget-object v2, p0, Lcom/wareone/tappmt/Template;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 139
    invoke-direct {p0}, Lcom/wareone/tappmt/Template;->_loadData()V

    .line 141
    const v2, 0x7f0c00ab

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Template;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 142
    .local v1, lv_template:Landroid/widget/ListView;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03003b

    iget-object v4, p0, Lcom/wareone/tappmt/Template;->m_items:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/wareone/tappmt/Template;->m_adapter:Landroid/widget/ArrayAdapter;

    .line 143
    iget-object v2, p0, Lcom/wareone/tappmt/Template;->m_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    new-instance v2, Lcom/wareone/tappmt/Template$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Template$1;-><init>(Lcom/wareone/tappmt/Template;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    new-instance v2, Lcom/wareone/tappmt/Template$2;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Template$2;-><init>(Lcom/wareone/tappmt/Template;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 167
    const v2, 0x7f0c00ac

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/Template;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 169
    .local v0, btn_addNew:Landroid/widget/Button;
    new-instance v2, Lcom/wareone/tappmt/Template$3;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Template$3;-><init>(Lcom/wareone/tappmt/Template;)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v2, 0x7f0900bf

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 180
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/wareone/tappmt/Template;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    invoke-virtual {p0}, Lcom/wareone/tappmt/Template;->_refresh()V

    .line 186
    return-void
.end method
