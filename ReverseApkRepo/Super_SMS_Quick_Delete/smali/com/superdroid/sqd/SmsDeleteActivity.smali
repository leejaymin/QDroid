.class public Lcom/superdroid/sqd/SmsDeleteActivity;
.super Landroid/app/ListActivity;
.source "SmsDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/superdroid/sqd/view/MenuPanel;
.implements Lcom/superdroid/sqd/view/Messenger;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/superdroid/sqd/view/MenuPanel;",
        "Lcom/superdroid/sqd/view/Messenger;"
    }
.end annotation


# static fields
.field private static final DELETE_ONE:I = 0x3

.field private static final DELETE_SUCCESS:I = 0x2

.field private static final START_DELETE:I = 0x1


# instance fields
.field private PROJECTION:[Ljava/lang/String;

.field private final THREADS_CONTENT_URI:Landroid/net/Uri;

.field private _count:I

.field protected _handler:Landroid/os/Handler;

.field private _isSelectAll:Z

.field private _mapCheckBoxStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/superdroid/sqd/data/IdType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _menuPanelAdapter:Lcom/superdroid/sqd/adapter/MenuPanelAdapter;

.field private _menuPanelGrid:Landroid/widget/GridView;

.field private _menuPanelIcons:[Ljava/lang/Integer;

.field private _menuPanelStrings:[Ljava/lang/Integer;

.field private _progress:Landroid/app/ProgressDialog;

.field private _progressValue:I

.field private _queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;

.field private _threadId:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "date"

    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->THREADS_CONTENT_URI:Landroid/net/Uri;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_threadId:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    .line 57
    const-string v1, "address"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v7, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 59
    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date"

    aput-object v7, v0, v1

    const/16 v1, 0xc

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->PROJECTION:[Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/superdroid/sqd/SmsDeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/superdroid/sqd/SmsDeleteActivity$1;-><init>(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_handler:Landroid/os/Handler;

    .line 94
    iput v3, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_count:I

    .line 95
    iput v3, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progressValue:I

    .line 251
    iput-boolean v3, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_isSelectAll:Z

    .line 290
    new-array v0, v6, [Ljava/lang/Integer;

    const v1, 0x7f020004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 291
    const v1, 0x7f020003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f020001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    .line 293
    new-array v0, v6, [Ljava/lang/Integer;

    const v1, 0x7f040002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 294
    const v1, 0x7f04000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f04001a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelStrings:[Ljava/lang/Integer;

    .line 40
    return-void
.end method

.method private about()V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/superdroid/sqd/About;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 320
    return-void
.end method

.method static synthetic access$0(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->startDelete()V

    return-void
.end method

.method static synthetic access$1(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->deleteSuccess()V

    return-void
.end method

.method static synthetic access$10(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->selectAllOrUnSelectAll()V

    return-void
.end method

.method static synthetic access$11(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->about()V

    return-void
.end method

.method static synthetic access$2(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->deleteOne()V

    return-void
.end method

.method static synthetic access$3(Lcom/superdroid/sqd/SmsDeleteActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4(Lcom/superdroid/sqd/SmsDeleteActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_threadId:I

    return v0
.end method

.method static synthetic access$5(Lcom/superdroid/sqd/SmsDeleteActivity;)Lcom/superdroid/sqd/util/BackgroundQueryHandler;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/superdroid/sqd/SmsDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_count:I

    return-void
.end method

.method static synthetic access$7(Lcom/superdroid/sqd/SmsDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/superdroid/sqd/SmsDeleteActivity;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->deleteSMSs()V

    return-void
.end method

.method static synthetic access$9(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->handleDelete()V

    return-void
.end method

.method private deleteOne()V
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progressValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progressValue:I

    .line 108
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progressValue:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 110
    iget v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_count:I

    iget v1, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progressValue:I

    if-ne v0, v1, :cond_0

    .line 111
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->sendMessage(I)V

    .line 113
    :cond_0
    return-void
.end method

.method private deleteSMSs()V
    .locals 3

    .prologue
    .line 160
    new-instance v1, Lcom/superdroid/sqd/SmsDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/superdroid/sqd/SmsDeleteActivity$2;-><init>(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    .line 182
    .local v1, runnable:Ljava/lang/Runnable;
    new-instance v0, Lcom/superdroid/sqd/util/SqdProgressableTask;

    .line 183
    const v2, 0x7f040008

    .line 182
    invoke-direct {v0, p0, v1, v2}, Lcom/superdroid/sqd/util/SqdProgressableTask;-><init>(Landroid/content/Context;Ljava/lang/Runnable;I)V

    .line 184
    .local v0, deleteTask:Lcom/superdroid/sqd/util/SqdProgressableTask;
    invoke-virtual {v0}, Lcom/superdroid/sqd/util/SqdProgressableTask;->start()V

    .line 185
    return-void
.end method

.method private deleteSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iput v1, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_count:I

    .line 117
    iput v1, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progressValue:I

    .line 118
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 119
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 215
    return-object p0
.end method

.method private handleDelete()V
    .locals 3

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->isOneChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->showConfirmDialog()V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    .line 210
    const/4 v2, 0x0

    .line 209
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initListView()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 128
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->THREADS_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_threadId:I

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 129
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "uri"

    aput-object v5, v4, v11

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-interface {v0, v2, v4}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 134
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 135
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0, v7}, Lcom/superdroid/sqd/SmsDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 145
    invoke-virtual {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    new-instance v6, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;

    .line 148
    invoke-virtual {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    .line 147
    invoke-direct {v6, p0, v7, v0, v2}, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    .local v6, adapter:Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;
    invoke-virtual {p0, v6}, Lcom/superdroid/sqd/SmsDeleteActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    return-void

    .line 136
    .end local v6           #adapter:Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;
    :cond_1
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 137
    .local v8, id:I
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, transport_type:Ljava/lang/String;
    const-string v0, "sms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 139
    .local v9, isSms:Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    new-instance v2, Lcom/superdroid/sqd/data/IdType;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v2, v8, v3}, Lcom/superdroid/sqd/data/IdType;-><init>(IZ)V

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initShortcut()V
    .locals 2

    .prologue
    .line 254
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelGrid:Landroid/widget/GridView;

    .line 255
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/superdroid/sqd/SmsDeleteActivity$4;

    invoke-direct {v1, p0}, Lcom/superdroid/sqd/SmsDeleteActivity$4;-><init>(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 272
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->resetMenuPanelAdapter()V

    .line 273
    return-void
.end method

.method private isOneChecked()Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private resetMenuPanelAdapter()V
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;

    invoke-direct {v0, p0}, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelAdapter:Lcom/superdroid/sqd/adapter/MenuPanelAdapter;

    .line 298
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelAdapter:Lcom/superdroid/sqd/adapter/MenuPanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    return-void
.end method

.method private selectAll()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->selectOrUnSelectAll(Z)V

    .line 235
    return-void
.end method

.method private selectAllOrUnSelectAll()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 276
    iget-boolean v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_isSelectAll:Z

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->selectAll()V

    .line 278
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    const v1, 0x7f020002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 279
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelStrings:[Ljava/lang/Integer;

    const v1, 0x7f04000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 286
    :goto_0
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->resetMenuPanelAdapter()V

    .line 287
    iget-boolean v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_isSelectAll:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_isSelectAll:Z

    .line 288
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->unSelectAll()V

    .line 282
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    const v1, 0x7f020003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 283
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelStrings:[Ljava/lang/Integer;

    const v1, 0x7f04000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 287
    goto :goto_1
.end method

.method private selectOrUnSelectAll(Z)V
    .locals 5
    .parameter "isSelectAll"

    .prologue
    .line 238
    iget-object v2, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 239
    .local v1, setKeys:Ljava/util/Set;,"Ljava/util/Set<Lcom/superdroid/sqd/data/IdType;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 243
    return-void

    .line 239
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/superdroid/sqd/data/IdType;

    .line 240
    .local v0, key:Lcom/superdroid/sqd/data/IdType;
    iget-object v3, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendMessage(I)V
    .locals 1
    .parameter "messageCode"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    :cond_0
    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 190
    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 191
    const v1, 0x7f040003

    .line 192
    new-instance v2, Lcom/superdroid/sqd/SmsDeleteActivity$3;

    invoke-direct {v2, p0}, Lcom/superdroid/sqd/SmsDeleteActivity$3;-><init>(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 199
    return-void
.end method

.method private startDelete()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    .line 99
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/superdroid/sqd/SmsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 101
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_count:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 102
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 103
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 104
    return-void
.end method

.method private unSelectAll()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->selectOrUnSelectAll(Z)V

    .line 247
    return-void
.end method


# virtual methods
.method public getMenuIconResId(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMenuItemsCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public getMenuTextResId(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_menuPanelStrings:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lcom/superdroid/sqd/ad/AdMgr;->init(Landroid/app/Activity;)V

    .line 66
    invoke-virtual {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "THREAD_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_threadId:I

    .line 67
    iget v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_threadId:I

    if-gez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->finish()V

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->initListView()V

    .line 71
    invoke-direct {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->initShortcut()V

    .line 72
    new-instance v0, Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    invoke-virtual {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/superdroid/sqd/util/BackgroundQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/superdroid/sqd/view/Messenger;)V

    iput-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    .line 73
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "v"
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
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 220
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 219
    check-cast v0, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;

    .line 221
    .local v0, adapter:Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;
    invoke-virtual {v0, p3}, Lcom/superdroid/sqd/adapter/SmsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 222
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 223
    .local v4, smsId:I
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, transport_type:Ljava/lang/String;
    const-string v6, "sms"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 225
    .local v2, isSms:Ljava/lang/Boolean;
    new-instance v3, Lcom/superdroid/sqd/data/IdType;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v3, v4, v6}, Lcom/superdroid/sqd/data/IdType;-><init>(IZ)V

    .line 226
    .local v3, key:Lcom/superdroid/sqd/data/IdType;
    iget-object v6, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
    iget-object v6, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    iget-object v7, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    iget-object v6, p0, Lcom/superdroid/sqd/SmsDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0}, Lcom/superdroid/sqd/SmsDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 231
    return-void

    :cond_1
    move v6, v9

    .line 229
    goto :goto_0
.end method

.method public sendMessage()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->sendMessage(I)V

    .line 315
    return-void
.end method
