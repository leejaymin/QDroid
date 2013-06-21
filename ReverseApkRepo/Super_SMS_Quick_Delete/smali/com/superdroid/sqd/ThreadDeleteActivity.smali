.class public Lcom/superdroid/sqd/ThreadDeleteActivity;
.super Landroid/app/ListActivity;
.source "ThreadDeleteActivity.java"

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

.field private static final FETCH_DATA_SUCCESS:I = 0x4

.field public static final NAME:Ljava/lang/String; = "NAME"

.field private static final START_DELETE:I = 0x1

.field public static final THREADID:Ljava/lang/String; = "THREAD_ID"


# instance fields
.field private _count:I

.field private _cursor:Landroid/database/Cursor;

.field protected _handler:Landroid/os/Handler;

.field private _isSelectAll:Z

.field private _mapCheckBoxStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
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

.field _queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;

.field preferenceMgr:Lcom/superdroid/sqd/preference/PreferenceMgr;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    .line 52
    iput-object v1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    .line 53
    iput-object v1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->preferenceMgr:Lcom/superdroid/sqd/preference/PreferenceMgr;

    .line 90
    new-instance v0, Lcom/superdroid/sqd/ThreadDeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/superdroid/sqd/ThreadDeleteActivity$1;-><init>(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_handler:Landroid/os/Handler;

    .line 112
    iput v2, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_count:I

    .line 113
    iput v2, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progressValue:I

    .line 277
    iput-boolean v2, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_isSelectAll:Z

    .line 316
    new-array v0, v5, [Ljava/lang/Integer;

    const v1, 0x7f020004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 317
    const v1, 0x7f020003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    .line 319
    new-array v0, v5, [Ljava/lang/Integer;

    const v1, 0x7f040002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 320
    const v1, 0x7f04000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f04001a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelStrings:[Ljava/lang/Integer;

    .line 40
    return-void
.end method

.method private about()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/superdroid/sqd/About;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method static synthetic access$0(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->startDelete()V

    return-void
.end method

.method static synthetic access$1(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->deleteSuccess()V

    return-void
.end method

.method static synthetic access$10(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->selectAllOrUnSelectAll()V

    return-void
.end method

.method static synthetic access$11(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->about()V

    return-void
.end method

.method static synthetic access$2(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->deleteOne()V

    return-void
.end method

.method static synthetic access$3(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->showListView()V

    return-void
.end method

.method static synthetic access$4(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->fetchData()V

    return-void
.end method

.method static synthetic access$5(Lcom/superdroid/sqd/ThreadDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/superdroid/sqd/ThreadDeleteActivity;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/superdroid/sqd/ThreadDeleteActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$7(Lcom/superdroid/sqd/ThreadDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput p1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_count:I

    return-void
.end method

.method static synthetic access$8(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->deleteThreads()V

    return-void
.end method

.method static synthetic access$9(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->handleDelete()V

    return-void
.end method

.method private deleteOne()V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progressValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progressValue:I

    .line 126
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progressValue:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 128
    iget v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_count:I

    iget v1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progressValue:I

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->sendMessage(I)V

    .line 131
    :cond_0
    return-void
.end method

.method private deleteSuccess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iput v1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_count:I

    .line 135
    iput v1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progressValue:I

    .line 136
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 137
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private deleteThreads()V
    .locals 3

    .prologue
    .line 200
    new-instance v1, Lcom/superdroid/sqd/ThreadDeleteActivity$3;

    invoke-direct {v1, p0}, Lcom/superdroid/sqd/ThreadDeleteActivity$3;-><init>(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    .line 223
    .local v1, runnable:Ljava/lang/Runnable;
    new-instance v0, Lcom/superdroid/sqd/util/SqdProgressableTask;

    .line 224
    const v2, 0x7f040008

    .line 223
    invoke-direct {v0, p0, v1, v2}, Lcom/superdroid/sqd/util/SqdProgressableTask;-><init>(Landroid/content/Context;Ljava/lang/Runnable;I)V

    .line 225
    .local v0, deleteTask:Lcom/superdroid/sqd/util/SqdProgressableTask;
    invoke-virtual {v0}, Lcom/superdroid/sqd/util/SqdProgressableTask;->start()V

    .line 226
    return-void
.end method

.method private fetchData()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 147
    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    const-string v1, "conversations"

    .line 147
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 149
    .local v8, threadUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 150
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 152
    invoke-virtual {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 153
    const-string v5, "date DESC"

    move-object v3, v2

    move-object v4, v2

    .line 152
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_cursor:Landroid/database/Cursor;

    .line 155
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_cursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 158
    .local v7, id:I
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 177
    return-object p0
.end method

.method private handleDelete()V
    .locals 3

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->isOneChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->showConfirmDialog()V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    .line 185
    const/4 v2, 0x0

    .line 184
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initShortcut()V
    .locals 2

    .prologue
    .line 280
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelGrid:Landroid/widget/GridView;

    .line 281
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelGrid:Landroid/widget/GridView;

    new-instance v1, Lcom/superdroid/sqd/ThreadDeleteActivity$5;

    invoke-direct {v1, p0}, Lcom/superdroid/sqd/ThreadDeleteActivity$5;-><init>(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 298
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->resetMenuPanelAdapter()V

    .line 299
    return-void
.end method

.method private initialInBakcground()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/superdroid/sqd/ThreadDeleteActivity$2;

    invoke-direct {v0, p0}, Lcom/superdroid/sqd/ThreadDeleteActivity$2;-><init>(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    .line 87
    .local v0, initialThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method

.method private isOneChecked()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private popAboutDialog()V
    .locals 3

    .prologue
    .line 70
    iget-object v2, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->preferenceMgr:Lcom/superdroid/sqd/preference/PreferenceMgr;

    invoke-virtual {v2}, Lcom/superdroid/sqd/preference/PreferenceMgr;->getLastVersion()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, lastVersion:Ljava/lang/String;
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/superdroid/sqd/ThreadDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, currentVersion:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->preferenceMgr:Lcom/superdroid/sqd/preference/PreferenceMgr;

    invoke-virtual {v2, v0}, Lcom/superdroid/sqd/preference/PreferenceMgr;->setVersion(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->about()V

    .line 76
    :cond_0
    return-void
.end method

.method private resetMenuPanelAdapter()V
    .locals 2

    .prologue
    .line 323
    new-instance v0, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;

    invoke-direct {v0, p0}, Lcom/superdroid/sqd/adapter/MenuPanelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelAdapter:Lcom/superdroid/sqd/adapter/MenuPanelAdapter;

    .line 324
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelAdapter:Lcom/superdroid/sqd/adapter/MenuPanelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    return-void
.end method

.method private selectAll()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->selectOrUnSelectAll(Z)V

    .line 261
    return-void
.end method

.method private selectAllOrUnSelectAll()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 302
    iget-boolean v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_isSelectAll:Z

    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->selectAll()V

    .line 304
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    const v1, 0x7f020002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 305
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelStrings:[Ljava/lang/Integer;

    const v1, 0x7f04000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 312
    :goto_0
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->resetMenuPanelAdapter()V

    .line 313
    iget-boolean v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_isSelectAll:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_isSelectAll:Z

    .line 314
    return-void

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->unSelectAll()V

    .line 308
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    const v1, 0x7f020003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 309
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelStrings:[Ljava/lang/Integer;

    const v1, 0x7f04000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 313
    goto :goto_1
.end method

.method private selectOrUnSelectAll(Z)V
    .locals 5
    .parameter "isSelectAll"

    .prologue
    .line 268
    iget-object v2, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 269
    .local v1, setKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 273
    return-void

    .line 269
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 270
    .local v0, key:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendMessage(I)V
    .locals 1
    .parameter "messageCode"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    :cond_0
    return-void
.end method

.method private showConfirmDialog()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 231
    const v1, 0x7f040005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 232
    const v1, 0x7f040003

    .line 233
    new-instance v2, Lcom/superdroid/sqd/ThreadDeleteActivity$4;

    invoke-direct {v2, p0}, Lcom/superdroid/sqd/ThreadDeleteActivity$4;-><init>(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 240
    return-void
.end method

.method private showListView()V
    .locals 4

    .prologue
    .line 164
    const v2, 0x7f060009

    invoke-virtual {p0, v2}, Lcom/superdroid/sqd/ThreadDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, progressBar:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/superdroid/sqd/ThreadDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 168
    new-instance v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;

    iget-object v2, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_cursor:Landroid/database/Cursor;

    .line 169
    iget-object v3, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;

    .line 168
    invoke-direct {v0, p0, v2, v3}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Map;)V

    .line 171
    .local v0, adapter:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;
    invoke-virtual {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    return-void
.end method

.method private startDelete()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    .line 117
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    const v1, 0x7f040018

    invoke-virtual {p0, v1}, Lcom/superdroid/sqd/ThreadDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 119
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_count:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 120
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 121
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 122
    return-void
.end method

.method private unSelectAll()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->selectOrUnSelectAll(Z)V

    .line 265
    return-void
.end method


# virtual methods
.method public getMenuIconResId(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMenuItemsCount()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelIcons:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public getMenuTextResId(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_menuPanelStrings:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Lcom/superdroid/sqd/ad/AdMgr;->initOnce(Landroid/content/Context;)V

    .line 59
    invoke-static {p0}, Lcom/superdroid/sqd/ad/AdMgr;->init(Landroid/app/Activity;)V

    .line 60
    new-instance v0, Lcom/superdroid/logger/AndroidLogger;

    invoke-direct {v0}, Lcom/superdroid/logger/AndroidLogger;-><init>()V

    invoke-static {v0}, Lcom/superdroid/logger/LoggerFactory;->setLogger(Lcom/superdroid/logger/Logger;)V

    .line 62
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->initialInBakcground()V

    .line 63
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->initShortcut()V

    .line 64
    new-instance v0, Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    invoke-virtual {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/superdroid/sqd/util/BackgroundQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/superdroid/sqd/view/Messenger;)V

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->_queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    .line 65
    new-instance v0, Lcom/superdroid/sqd/preference/PreferenceMgr;

    invoke-direct {v0, p0}, Lcom/superdroid/sqd/preference/PreferenceMgr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity;->preferenceMgr:Lcom/superdroid/sqd/preference/PreferenceMgr;

    .line 66
    invoke-direct {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->popAboutDialog()V

    .line 67
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 243
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 244
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 243
    check-cast v0, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;

    .line 245
    .local v0, adapter:Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;
    invoke-virtual {v0, p3}, Lcom/superdroid/sqd/adapter/ThreadDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 246
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 247
    .local v4, theradId:I
    const v5, 0x7f060011

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 248
    .local v3, nameView:Landroid/widget/TextView;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/superdroid/sqd/SmsDeleteActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v2, i:Landroid/content/Intent;
    const-string v5, "THREAD_ID"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v5, "NAME"

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v2}, Lcom/superdroid/sqd/ThreadDeleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public sendMessage()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->sendMessage(I)V

    .line 341
    return-void
.end method
