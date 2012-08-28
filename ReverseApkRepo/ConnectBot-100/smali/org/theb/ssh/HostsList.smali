.class public Lorg/theb/ssh/HostsList;
.super Landroid/app/ListActivity;
.source "HostsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/theb/ssh/HostsList$HostListCursorAdapter;
    }
.end annotation


# static fields
.field public static final ABOUT_ID:I = 0x6

.field public static final CONNECT_ID:I = 0x1

.field public static final DELETE_ID:I = 0x3

.field public static final EDIT_ID:I = 0x2

.field public static final INSERT_ID:I = 0x4

.field public static final PASSWORD_REQUEST:I = 0x2a

.field public static final PREFERENCES_ID:I = 0x5

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final PUBKEY_ID:I = 0x5


# instance fields
.field public bound:Lorg/connectbot/service/TerminalManager;

.field private connection:Landroid/content/ServiceConnection;

.field private mCursor:Landroid/database/Cursor;

.field public password:Ljava/lang/String;

.field public waitPassword:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 68
    const-string v2, "hostname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 69
    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 70
    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 71
    const-string v2, "nickname"

    aput-object v2, v0, v1

    .line 66
    sput-object v0, Lorg/theb/ssh/HostsList;->PROJECTION:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 107
    iput-object v2, p0, Lorg/theb/ssh/HostsList;->bound:Lorg/connectbot/service/TerminalManager;

    .line 109
    new-instance v0, Lorg/theb/ssh/HostsList$1;

    invoke-direct {v0, p0}, Lorg/theb/ssh/HostsList$1;-><init>(Lorg/theb/ssh/HostsList;)V

    iput-object v0, p0, Lorg/theb/ssh/HostsList;->connection:Landroid/content/ServiceConnection;

    .line 381
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/theb/ssh/HostsList;->waitPassword:Ljava/util/concurrent/Semaphore;

    .line 382
    iput-object v2, p0, Lorg/theb/ssh/HostsList;->password:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private final deleteItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 397
    iget-object v1, p0, Lorg/theb/ssh/HostsList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->move(I)Z

    .line 398
    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getSelectedItemId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 399
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method private final insertItem()V
    .locals 3

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lorg/theb/ssh/HostsList;->startActivity(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method private showAbout()V
    .locals 5

    .prologue
    .line 282
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, about:Landroid/app/Dialog;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 294
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 296
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 297
    return-void
.end method

.method private showPubkey()V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/theb/ssh/Pubkey;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/theb/ssh/HostsList;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 386
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    .line 387
    if-eqz p3, :cond_1

    .line 388
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/HostsList;->password:Ljava/lang/String;

    .line 392
    :goto_0
    iget-object v0, p0, Lorg/theb/ssh/HostsList;->waitPassword:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 394
    :cond_0
    return-void

    .line 390
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/theb/ssh/HostsList;->password:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-class v3, Lorg/connectbot/service/TerminalManager;

    .line 136
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lorg/theb/ssh/HostsList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/theb/ssh/HostsList;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v6}, Lorg/theb/ssh/HostsList;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 145
    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 146
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 147
    sget-object v1, Lorg/theb/provider/HostDb$Hosts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    :cond_0
    new-instance v0, Lorg/theb/ssh/HostsList$HostListCursorAdapter;

    .line 155
    const v3, 0x1090003

    iget-object v4, p0, Lorg/theb/ssh/HostsList;->mCursor:Landroid/database/Cursor;

    .line 156
    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "hostname"

    aput-object v1, v5, v8

    new-array v6, v6, [I

    const v1, 0x1020014

    aput v1, v6, v8

    move-object v1, p0

    move-object v2, p0

    .line 154
    invoke-direct/range {v0 .. v6}, Lorg/theb/ssh/HostsList$HostListCursorAdapter;-><init>(Lorg/theb/ssh/HostsList;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 158
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0, v0}, Lorg/theb/ssh/HostsList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 191
    const v0, 0x7f07000a

    invoke-interface {p1, v2, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 192
    const/16 v1, 0x33

    const/16 v3, 0x61

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 195
    const v0, 0x7f07000c

    invoke-interface {p1, v2, v2, v4, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v9

    .line 196
    .local v9, prefs:Landroid/view/SubMenu;
    const v0, 0x7f07000d

    invoke-interface {v9, v2, v4, v2, v0}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 197
    const/16 v1, 0x34

    const/16 v3, 0x70

    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 200
    const v0, 0x7f07000e

    invoke-interface {p1, v2, v7, v7, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 206
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/high16 v1, 0x4

    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lorg/theb/ssh/HostsList;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v3, v2

    move v7, v2

    move-object v8, v5

    .line 208
    invoke-interface/range {v0 .. v8}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 19
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 301
    invoke-virtual/range {p0 .. p0}, Lorg/theb/ssh/HostsList;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 303
    .local v15, url:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lorg/theb/ssh/HostsList;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, action:Ljava/lang/String;
    const-string v17, "android.intent.action.PICK"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 305
    const-string v17, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 308
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/theb/ssh/HostsList;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 309
    .local v11, intent:Landroid/content/Intent;
    const-string v17, "android.intent.extra.TEXT"

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/theb/ssh/HostsList;->setResult(ILandroid/content/Intent;)V

    .line 378
    .end local v11           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v6, 0x0

    .line 320
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 323
    const/16 v17, 0x0

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 324
    .local v12, nickname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/HostsList;->bound:Lorg/connectbot/service/TerminalManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalManager;->findBridge(Ljava/lang/String;)Lorg/connectbot/service/TerminalBridge;

    move-result-object v4

    .line 325
    .local v4, bridge:Lorg/connectbot/service/TerminalBridge;
    if-nez v4, :cond_2

    .line 327
    const/16 v17, 0x1

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, username:Ljava/lang/String;
    const/16 v17, 0x2

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 329
    .local v10, hostname:Ljava/lang/String;
    const/16 v17, 0x3

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 330
    .local v13, port:I
    const/16 v17, 0x4

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, emulation:Ljava/lang/String;
    const/16 v17, 0x5

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 332
    .local v14, scrollback:I
    const/16 v17, 0x6

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, hostkey:Ljava/lang/String;
    :try_start_0
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lorg/theb/ssh/PasswordDialog;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v18, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/theb/ssh/HostsList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 340
    new-instance v5, Ljava/lang/Thread;

    new-instance v17, Lorg/theb/ssh/HostsList$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lorg/theb/ssh/HostsList$2;-><init>(Lorg/theb/ssh/HostsList;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 361
    .local v5, connect:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v5           #connect:Ljava/lang/Thread;
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .line 364
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 371
    .end local v16           #username:Ljava/lang/String;
    .end local v10           #hostname:Ljava/lang/String;
    .end local v13           #port:I
    .end local v8           #emulation:Ljava/lang/String;
    .end local v14           #scrollback:I
    .end local v9           #hostkey:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-class v17, Lorg/connectbot/Console;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v17, "android.intent.extra.TEXT"

    move-object v0, v11

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/theb/ssh/HostsList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 273
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 261
    :pswitch_0
    invoke-direct {p0}, Lorg/theb/ssh/HostsList;->deleteItem()V

    move v0, v1

    .line 262
    goto :goto_0

    .line 264
    :pswitch_1
    invoke-direct {p0}, Lorg/theb/ssh/HostsList;->insertItem()V

    move v0, v1

    .line 265
    goto :goto_0

    .line 267
    :pswitch_2
    invoke-direct {p0}, Lorg/theb/ssh/HostsList;->showPubkey()V

    move v0, v1

    .line 268
    goto :goto_0

    .line 270
    :pswitch_3
    invoke-direct {p0}, Lorg/theb/ssh/HostsList;->showAbout()V

    move v0, v1

    .line 271
    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 218
    iget-object v0, p0, Lorg/theb/ssh/HostsList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v9, v0

    .line 225
    .local v9, haveItems:Z
    :goto_0
    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getSelectedItemId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 227
    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lorg/theb/ssh/HostsList;->getSelectedItemId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 230
    .local v10, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v5, v0, [Landroid/content/Intent;

    .line 231
    .local v5, specifics:[Landroid/content/Intent;
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v1, v5, v0

    .line 232
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/view/MenuItem;

    .line 235
    .local v8, items:[Landroid/view/MenuItem;
    new-instance v6, Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/high16 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 238
    const/4 v7, 0x0

    move-object v0, p1

    .line 237
    invoke-interface/range {v0 .. v8}, Landroid/view/Menu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 241
    const/high16 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x3

    const v3, 0x7f07000b

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 242
    const/16 v1, 0x32

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 245
    const/4 v0, 0x0

    aget-object v0, v8, v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    aget-object v0, v8, v0

    const/16 v1, 0x31

    const/16 v2, 0x63

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 254
    .end local v10           #uri:Landroid/net/Uri;
    .end local v5           #specifics:[Landroid/content/Intent;
    .end local v8           #items:[Landroid/view/MenuItem;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 218
    .end local v9           #haveItems:Z
    :cond_1
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .line 249
    .restart local v9       #haveItems:Z
    :cond_2
    const/high16 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeGroup(I)V

    goto :goto_1
.end method
