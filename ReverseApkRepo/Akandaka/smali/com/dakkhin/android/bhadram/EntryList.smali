.class public Lcom/dakkhin/android/bhadram/EntryList;
.super Landroid/app/ListActivity;
.source "EntryList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dakkhin/android/bhadram/EntryList$MyCursorAdapter;
    }
.end annotation


# instance fields
.field private dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

.field private pw:[C

.field private searchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dakkhin/android/bhadram/EntryList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/dakkhin/android/bhadram/EntryList;->fillEntriesWithSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/dakkhin/android/bhadram/EntryList;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->fillEntries()V

    return-void
.end method

.method static synthetic access$2(Lcom/dakkhin/android/bhadram/EntryList;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->deleteAll()V

    return-void
.end method

.method private checkAndAuth()V
    .locals 4

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 133
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_0
    const-string v2, "dakkhin_bhadram_auth"

    invoke-virtual {p0, v2}, Lcom/dakkhin/android/bhadram/EntryList;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dakkhin/android/bhadram/Auth;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/dakkhin/android/bhadram/EntryList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    if-eqz v0, :cond_0

    .line 142
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 148
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v2

    .line 140
    if-eqz v0, :cond_0

    .line 142
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 143
    :catch_1
    move-exception v2

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v2

    .line 140
    if-eqz v0, :cond_1

    .line 142
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    :cond_1
    :goto_1
    throw v2

    .line 143
    :catch_2
    move-exception v3

    goto :goto_1

    .restart local v1       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private deleteAll()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-virtual {v0}, Lcom/dakkhin/android/bhadram/DBHelper;->deleteAll()V

    .line 410
    return-void
.end method

.method private fillEntries()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 98
    iget-object v4, p0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-virtual {v4}, Lcom/dakkhin/android/bhadram/DBHelper;->getAll()Landroid/database/Cursor;

    move-result-object v0

    .line 99
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/dakkhin/android/bhadram/EntryList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 101
    new-array v2, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TITLE"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "DESC"

    aput-object v5, v2, v4

    .line 102
    .local v2, from:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 104
    .local v3, to:[I
    new-instance v1, Lcom/dakkhin/android/bhadram/EntryList$MyCursorAdapter;

    .line 105
    const v4, 0x109000d

    .line 104
    invoke-direct {v1, p0, p0, v4, v0}, Lcom/dakkhin/android/bhadram/EntryList$MyCursorAdapter;-><init>(Lcom/dakkhin/android/bhadram/EntryList;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 107
    .local v1, entries:Lcom/dakkhin/android/bhadram/EntryList$MyCursorAdapter;
    invoke-virtual {p0, v1}, Lcom/dakkhin/android/bhadram/EntryList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void

    .line 102
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method private fillEntriesWithSearch(Ljava/lang/String;)V
    .locals 7
    .parameter "searchText"

    .prologue
    const/4 v6, 0x2

    .line 85
    iget-object v4, p0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-virtual {v4, p1}, Lcom/dakkhin/android/bhadram/DBHelper;->getAllWithText(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/dakkhin/android/bhadram/EntryList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 88
    new-array v2, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TITLE"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "DESC"

    aput-object v5, v2, v4

    .line 89
    .local v2, from:[Ljava/lang/String;
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    .line 91
    .local v3, to:[I
    new-instance v1, Lcom/dakkhin/android/bhadram/EntryList$MyCursorAdapter;

    .line 92
    const v4, 0x109000d

    .line 91
    invoke-direct {v1, p0, p0, v4, v0}, Lcom/dakkhin/android/bhadram/EntryList$MyCursorAdapter;-><init>(Lcom/dakkhin/android/bhadram/EntryList;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 94
    .local v1, entries:Lcom/dakkhin/android/bhadram/EntryList$MyCursorAdapter;
    invoke-virtual {p0, v1}, Lcom/dakkhin/android/bhadram/EntryList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void

    .line 89
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 391
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 392
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->checkAndAuth()V

    .line 393
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/EntryList;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/dakkhin/android/bhadram/App;

    invoke-virtual {v0}, Lcom/dakkhin/android/bhadram/App;->startAppTimeout()V

    .line 394
    new-instance v0, Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-direct {v0, p0}, Lcom/dakkhin/android/bhadram/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    .line 395
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-virtual {v0}, Lcom/dakkhin/android/bhadram/DBHelper;->open()V

    .line 396
    packed-switch p1, :pswitch_data_0

    .line 406
    :goto_0
    return-void

    .line 398
    :pswitch_0
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->fillEntries()V

    goto :goto_0

    .line 401
    :pswitch_1
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->fillEntries()V

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x1e8481
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->checkAndAuth()V

    .line 360
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/EntryList;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/dakkhin/android/bhadram/App;

    invoke-virtual {v1}, Lcom/dakkhin/android/bhadram/App;->startAppTimeout()V

    .line 361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 369
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 363
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 364
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/dakkhin/android/bhadram/DBHelper;->delete(J)V

    .line 365
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->fillEntries()V

    .line 367
    const/4 v1, 0x1

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1e8482
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/dakkhin/android/bhadram/EntryList;->requestWindowFeature(I)Z

    .line 50
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/dakkhin/android/bhadram/EntryList;->setContentView(I)V

    .line 52
    const v1, 0x7f05000d

    invoke-virtual {p0, v1}, Lcom/dakkhin/android/bhadram/EntryList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList;->searchBox:Landroid/widget/EditText;

    .line 53
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList;->searchBox:Landroid/widget/EditText;

    new-instance v2, Lcom/dakkhin/android/bhadram/EntryList$1;

    invoke-direct {v2, p0}, Lcom/dakkhin/android/bhadram/EntryList$1;-><init>(Lcom/dakkhin/android/bhadram/EntryList;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/EntryList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pw"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object v1

    iput-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList;->pw:[C

    .line 72
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList;->pw:[C

    if-nez v1, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dakkhin/android/bhadram/Auth;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dakkhin/android/bhadram/EntryList;->startActivity(Landroid/content/Intent;)V

    .line 77
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-direct {v1, p0}, Lcom/dakkhin/android/bhadram/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    .line 78
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-virtual {v1}, Lcom/dakkhin/android/bhadram/DBHelper;->open()V

    .line 80
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->fillEntries()V

    .line 81
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/EntryList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dakkhin/android/bhadram/EntryList;->registerForContextMenu(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 353
    const v0, 0x1e8482

    const v1, 0x7f040009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 354
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 168
    const v0, 0x1e8481

    const v1, 0x7f040008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 169
    const v0, 0x186a1

    const v1, 0x7f040012

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 170
    const v0, 0x186a2

    const v1, 0x7f040011

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 171
    const v0, 0x2dc6c1

    const v1, 0x7f040013

    invoke-interface {p1, v4, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 172
    const v0, 0x2dc6c2

    const v1, 0x7f040014

    invoke-interface {p1, v4, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 174
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 378
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 380
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->checkAndAuth()V

    .line 381
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/EntryList;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/dakkhin/android/bhadram/App;

    invoke-virtual {v1}, Lcom/dakkhin/android/bhadram/App;->startAppTimeout()V

    .line 382
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    invoke-virtual {v1}, Lcom/dakkhin/android/bhadram/DBHelper;->cleanup()V

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dakkhin/android/bhadram/EditEntry;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    .local v0, i:Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 385
    const-string v1, "pw"

    iget-object v2, p0, Lcom/dakkhin/android/bhadram/EntryList;->pw:[C

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    .line 386
    const v1, 0x1e8482

    invoke-virtual {p0, v0, v1}, Lcom/dakkhin/android/bhadram/EntryList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 387
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 19
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/dakkhin/android/bhadram/EntryList;->checkAndAuth()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/dakkhin/android/bhadram/EntryList;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/dakkhin/android/bhadram/App;

    invoke-virtual {v3}, Lcom/dakkhin/android/bhadram/App;->startAppTimeout()V

    .line 185
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 345
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p2}, Landroid/app/ListActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 187
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EntryList;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/dakkhin/android/bhadram/DBHelper;->cleanup()V

    .line 188
    new-instance v15, Landroid/content/Intent;

    const-class v4, Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v15, intent:Landroid/content/Intent;
    const-string v4, "pw"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EntryList;->pw:[C

    move-object v5, v0

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    .line 190
    const v4, 0x1e8481

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/dakkhin/android/bhadram/EntryList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 193
    .end local v15           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    .local v9, aDialog:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f040015

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 195
    const v4, 0x7f04001a

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 196
    const-string v4, "Delete"

    new-instance v5, Lcom/dakkhin/android/bhadram/EntryList$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/EntryList$2;-><init>(Lcom/dakkhin/android/bhadram/EntryList;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    const-string v4, "Cancel"

    new-instance v5, Lcom/dakkhin/android/bhadram/EntryList$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/EntryList$3;-><init>(Lcom/dakkhin/android/bhadram/EntryList;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 215
    .end local v9           #aDialog:Landroid/app/AlertDialog$Builder;
    :sswitch_2
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v10, aDialog2:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f040015

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 217
    const v4, 0x7f04001b

    invoke-virtual {v10, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 218
    const-string v4, "Delete"

    new-instance v5, Lcom/dakkhin/android/bhadram/EntryList$4;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/EntryList$4;-><init>(Lcom/dakkhin/android/bhadram/EntryList;)V

    invoke-virtual {v10, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    const-string v4, "Cancel"

    new-instance v5, Lcom/dakkhin/android/bhadram/EntryList$5;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/EntryList$5;-><init>(Lcom/dakkhin/android/bhadram/EntryList;)V

    invoke-virtual {v10, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 234
    .end local v10           #aDialog2:Landroid/app/AlertDialog$Builder;
    :sswitch_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    .line 236
    .local v18, root:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v5, "/data/com.dakkhin.android.bhadram/databases/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "akandaka"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 240
    .local v12, file:Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 241
    .local v13, inStream:Ljava/io/FileInputStream;
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 243
    .local v3, inChannel:Ljava/nio/channels/FileChannel;
    new-instance v16, Ljava/io/File;

    const-string v4, "akandaka.dk"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    .local v16, outFile:Ljava/io/File;
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 245
    .local v17, outStream:Ljava/io/FileOutputStream;
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 247
    .local v8, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 248
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 249
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 251
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 252
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 254
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v14, infoDialog:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f040016

    invoke-virtual {v14, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 256
    const v4, 0x7f040017

    invoke-virtual {v14, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 257
    const-string v4, "Ok"

    new-instance v5, Lcom/dakkhin/android/bhadram/EntryList$6;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/EntryList$6;-><init>(Lcom/dakkhin/android/bhadram/EntryList;)V

    invoke-virtual {v14, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 264
    .end local v3           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v8           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v13           #inStream:Ljava/io/FileInputStream;
    .end local v14           #infoDialog:Landroid/app/AlertDialog$Builder;
    .end local v16           #outFile:Ljava/io/File;
    .end local v17           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 272
    .end local v12           #file:Ljava/lang/String;
    .end local v18           #root:Ljava/io/File;
    :sswitch_4
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    .local v11, aDialog5:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f040015

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 274
    const v4, 0x7f04001c

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 275
    const-string v4, "Confirm"

    new-instance v5, Lcom/dakkhin/android/bhadram/EntryList$7;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/EntryList$7;-><init>(Lcom/dakkhin/android/bhadram/EntryList;)V

    invoke-virtual {v11, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    const-string v4, "Cancel"

    new-instance v5, Lcom/dakkhin/android/bhadram/EntryList$8;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/EntryList$8;-><init>(Lcom/dakkhin/android/bhadram/EntryList;)V

    invoke-virtual {v11, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 265
    .end local v11           #aDialog5:Landroid/app/AlertDialog$Builder;
    .restart local v12       #file:Ljava/lang/String;
    .restart local v18       #root:Ljava/io/File;
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x186a1 -> :sswitch_2
        0x186a2 -> :sswitch_1
        0x1e8481 -> :sswitch_0
        0x2dc6c1 -> :sswitch_3
        0x2dc6c2 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/dakkhin/android/bhadram/EntryList;->checkAndAuth()V

    .line 159
    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/EntryList;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/dakkhin/android/bhadram/App;

    invoke-virtual {p0}, Lcom/dakkhin/android/bhadram/App;->startAppTimeout()V

    .line 160
    return-void
.end method
