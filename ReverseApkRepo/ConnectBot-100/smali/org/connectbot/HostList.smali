.class public Lorg/connectbot/HostList;
.super Landroid/app/Activity;
.source "HostList.java"


# static fields
.field public static final EULA:Ljava/lang/String; = "eula"

.field public static final REQUEST_EDIT:I = 0x1

.field public static final UPDATE_URL:Ljava/lang/String; = "http://connectbot.org/version"

.field public static final VERSION:D = 1.0


# instance fields
.field public COL_CONNECTED:I

.field public COL_HOSTNAME:I

.field public COL_ID:I

.field public COL_NICKNAME:I

.field public COL_PORT:I

.field public COL_USERNAME:I

.field public adapter:Lorg/connectbot/util/HostAdapter;

.field public bound:Lorg/connectbot/service/TerminalManager;

.field private connection:Landroid/content/ServiceConnection;

.field public hostdb:Lorg/connectbot/util/HostDatabase;

.field public hosts:Landroid/database/Cursor;

.field public list:Landroid/widget/ListView;

.field protected prefs:Landroid/content/SharedPreferences;

.field protected shortcut:Z

.field public sortcolor:Landroid/view/MenuItem;

.field public sortedByColor:Z

.field public sortlast:Landroid/view/MenuItem;

.field public updateHandler:Landroid/os/Handler;

.field public versionHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lorg/connectbot/HostList$1;

    invoke-direct {v0, p0}, Lorg/connectbot/HostList$1;-><init>(Lorg/connectbot/HostList;)V

    iput-object v0, p0, Lorg/connectbot/HostList;->versionHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lorg/connectbot/HostList$2;

    invoke-direct {v0, p0}, Lorg/connectbot/HostList$2;-><init>(Lorg/connectbot/HostList;)V

    iput-object v0, p0, Lorg/connectbot/HostList;->updateHandler:Landroid/os/Handler;

    .line 100
    iput-object v2, p0, Lorg/connectbot/HostList;->bound:Lorg/connectbot/service/TerminalManager;

    .line 102
    new-instance v0, Lorg/connectbot/HostList$3;

    invoke-direct {v0, p0}, Lorg/connectbot/HostList$3;-><init>(Lorg/connectbot/HostList;)V

    iput-object v0, p0, Lorg/connectbot/HostList;->connection:Landroid/content/ServiceConnection;

    .line 143
    iput-object v2, p0, Lorg/connectbot/HostList;->prefs:Landroid/content/SharedPreferences;

    .line 163
    iput-boolean v1, p0, Lorg/connectbot/HostList;->shortcut:Z

    .line 299
    iput-boolean v1, p0, Lorg/connectbot/HostList;->sortedByColor:Z

    .line 56
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 148
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 150
    iget-object v1, p0, Lorg/connectbot/HostList;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "eula"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-virtual {p0}, Lorg/connectbot/HostList;->updateCursor()V

    .line 160
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/connectbot/HostList;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const-string v6, "eula"

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lorg/connectbot/HostList;->setContentView(I)V

    .line 172
    const-string v3, "eula"

    invoke-virtual {p0, v6, v5}, Lorg/connectbot/HostList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lorg/connectbot/HostList;->prefs:Landroid/content/SharedPreferences;

    .line 174
    iget-object v3, p0, Lorg/connectbot/HostList;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "eula"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 175
    .local v0, agreed:Z
    if-nez v0, :cond_0

    .line 176
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/connectbot/WizardActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/connectbot/HostList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lorg/connectbot/HostList$4;

    invoke-direct {v4, p0}, Lorg/connectbot/HostList$4;-><init>(Lorg/connectbot/HostList;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 194
    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lorg/connectbot/HostList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/connectbot/HostList;->shortcut:Z

    .line 197
    new-instance v3, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v3, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/connectbot/HostList;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 198
    const v3, 0x7f090003

    invoke-virtual {p0, v3}, Lorg/connectbot/HostList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lorg/connectbot/HostList;->list:Landroid/widget/ListView;

    .line 199
    invoke-virtual {p0}, Lorg/connectbot/HostList;->updateCursor()V

    .line 203
    iget-object v3, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/connectbot/HostList;->COL_ID:I

    .line 204
    iget-object v3, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    const-string v4, "nickname"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/connectbot/HostList;->COL_NICKNAME:I

    .line 205
    iget-object v3, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    const-string v4, "username"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/connectbot/HostList;->COL_USERNAME:I

    .line 206
    iget-object v3, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    const-string v4, "hostname"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/connectbot/HostList;->COL_HOSTNAME:I

    .line 207
    iget-object v3, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    const-string v4, "port"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/connectbot/HostList;->COL_PORT:I

    .line 208
    iget-object v3, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    const-string v4, "lastconnect"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/connectbot/HostList;->COL_CONNECTED:I

    .line 210
    iget-object v3, p0, Lorg/connectbot/HostList;->list:Landroid/widget/ListView;

    new-instance v4, Lorg/connectbot/HostList$5;

    invoke-direct {v4, p0}, Lorg/connectbot/HostList$5;-><init>(Lorg/connectbot/HostList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    iget-object v3, p0, Lorg/connectbot/HostList;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lorg/connectbot/HostList;->registerForContextMenu(Landroid/view/View;)V

    .line 251
    const-string v3, ".+@.+(:\\d+)?"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 252
    .local v1, hostmask:Ljava/util/regex/Pattern;
    const v3, 0x7f090004

    invoke-virtual {p0, v3}, Lorg/connectbot/HostList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 253
    .local v2, text:Landroid/widget/TextView;
    new-instance v3, Lorg/connectbot/HostList$6;

    invoke-direct {v3, p0, v2, v1}, Lorg/connectbot/HostList$6;-><init>(Lorg/connectbot/HostList;Landroid/widget/TextView;Ljava/util/regex/Pattern;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 296
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 415
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v6, v0

    .line 416
    .local v6, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v7, p0, Lorg/connectbot/HostList;->list:Landroid/widget/ListView;

    iget v8, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 418
    .local v2, cursor:Landroid/database/Cursor;
    iget v7, p0, Lorg/connectbot/HostList;->COL_NICKNAME:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 419
    iget v7, p0, Lorg/connectbot/HostList;->COL_ID:I

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 423
    .local v5, id:I
    const-string v7, "Disconnect"

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 424
    .local v1, connect:Landroid/view/MenuItem;
    new-instance v7, Lorg/connectbot/HostList$9;

    invoke-direct {v7, p0}, Lorg/connectbot/HostList$9;-><init>(Lorg/connectbot/HostList;)V

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 430
    const-string v7, "Edit host"

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 431
    .local v4, edit:Landroid/view/MenuItem;
    new-instance v7, Lorg/connectbot/HostList$10;

    invoke-direct {v7, p0, v5}, Lorg/connectbot/HostList$10;-><init>(Lorg/connectbot/HostList;I)V

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 440
    const-string v7, "Delete host"

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 441
    .local v3, delete:Landroid/view/MenuItem;
    new-instance v7, Lorg/connectbot/HostList$11;

    invoke-direct {v7, p0, v5}, Lorg/connectbot/HostList$11;-><init>(Lorg/connectbot/HostList;I)V

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 449
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x1080052

    const/4 v5, 0x0

    .line 331
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 343
    const-string v3, "Sort by color"

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lorg/connectbot/HostList;->sortcolor:Landroid/view/MenuItem;

    .line 344
    iget-object v3, p0, Lorg/connectbot/HostList;->sortcolor:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 345
    iget-object v3, p0, Lorg/connectbot/HostList;->sortcolor:Landroid/view/MenuItem;

    new-instance v4, Lorg/connectbot/HostList$7;

    invoke-direct {v4, p0}, Lorg/connectbot/HostList$7;-><init>(Lorg/connectbot/HostList;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 353
    const-string v3, "Sort by name"

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lorg/connectbot/HostList;->sortlast:Landroid/view/MenuItem;

    .line 354
    iget-object v3, p0, Lorg/connectbot/HostList;->sortlast:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 355
    iget-object v3, p0, Lorg/connectbot/HostList;->sortlast:Landroid/view/MenuItem;

    new-instance v4, Lorg/connectbot/HostList$8;

    invoke-direct {v4, p0}, Lorg/connectbot/HostList$8;-><init>(Lorg/connectbot/HostList;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 363
    const-string v3, "Manage keys"

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 364
    .local v1, keys:Landroid/view/MenuItem;
    const v3, 0x108002f

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 365
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 367
    const-string v3, "Settings"

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 368
    .local v2, settings:Landroid/view/MenuItem;
    const v3, 0x1080049

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 369
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/connectbot/SettingsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 371
    const-string v3, "About"

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 372
    .local v0, about:Landroid/view/MenuItem;
    const v3, 0x1080040

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 373
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/connectbot/WizardActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 375
    const/4 v3, 0x1

    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 322
    iget-object v0, p0, Lorg/connectbot/HostList;->sortcolor:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lorg/connectbot/HostList;->sortedByColor:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 323
    iget-object v0, p0, Lorg/connectbot/HostList;->sortlast:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lorg/connectbot/HostList;->sortedByColor:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    return v2

    :cond_0
    move v1, v2

    .line 322
    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const-class v2, Lorg/connectbot/service/TerminalManager;

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/connectbot/HostList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/connectbot/HostList;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/connectbot/HostList;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 131
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 136
    iget-object v0, p0, Lorg/connectbot/HostList;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/connectbot/HostList;->unbindService(Landroid/content/ServiceConnection;)V

    .line 138
    return-void
.end method

.method public readUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "fetchurl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1770

    const/4 v12, 0x0

    .line 382
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 384
    .local v0, buffer:[B
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 385
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 386
    .local v2, connection:Ljava/net/URLConnection;
    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 387
    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 388
    const-string v6, "User-Agent"

    const-string v7, "%s %f"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/connectbot/HostList;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f07

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x1

    const-wide/high16 v10, 0x3ff0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 390
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 391
    .local v3, is:Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 394
    .local v4, os:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 398
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 399
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 400
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 402
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    return-object v6

    .line 395
    :cond_0
    invoke-virtual {v4, v0, v12, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public updateCursor()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const-string v7, "lastconnect"

    .line 304
    iget-object v1, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_0
    iget-object v1, p0, Lorg/connectbot/HostList;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget-boolean v2, p0, Lorg/connectbot/HostList;->sortedByColor:Z

    invoke-virtual {v1, v2}, Lorg/connectbot/util/HostDatabase;->allHosts(Z)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    .line 308
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030008

    iget-object v3, p0, Lorg/connectbot/HostList;->hosts:Landroid/database/Cursor;

    .line 309
    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "nickname"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "lastconnect"

    aput-object v7, v4, v1

    const/4 v1, 0x2

    const-string v5, "lastconnect"

    aput-object v7, v4, v1

    const/4 v1, 0x3

    const-string v5, "color"

    aput-object v5, v4, v1

    .line 310
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 308
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 311
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    new-instance v1, Lorg/connectbot/util/HostBinder;

    iget-object v2, p0, Lorg/connectbot/HostList;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {p0}, Lorg/connectbot/HostList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/connectbot/util/HostBinder;-><init>(Lorg/connectbot/service/TerminalManager;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 314
    iget-object v1, p0, Lorg/connectbot/HostList;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    return-void

    .line 310
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
        0x6t 0x0t 0x2t 0x1t
        0x2t 0x0t 0x2t 0x1t
    .end array-data
.end method
