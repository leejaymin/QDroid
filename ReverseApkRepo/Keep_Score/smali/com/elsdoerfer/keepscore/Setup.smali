.class public Lcom/elsdoerfer/keepscore/Setup;
.super Landroid/app/Activity;
.source "Setup.java"


# static fields
.field public static final CLEAR_GAMES_ID:I = 0x4

.field public static final CLEAR_PLAYERS_ID:I = 0x1

.field public static final CONTINUE_GAME_ID:I = 0x2

.field public static final DELETE_GAME_ID:I = 0x3

.field public static final LIST_OF_PLAYERS_KEY:Ljava/lang/String; = "players"


# instance fields
.field protected mAddNewPlayerOrStartButton:Landroid/widget/Button;

.field protected mClearGamesItem:Landroid/view/MenuItem;

.field protected mClearPlayersItem:Landroid/view/MenuItem;

.field mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

.field protected mDeleteGameItem:Landroid/view/MenuItem;

.field protected mExistingPlayersList:Landroid/widget/ListView;

.field protected mExistingSessionsAdapter:Landroid/widget/SimpleCursorAdapter;

.field protected mExistingSessionsList:Landroid/widget/ListView;

.field protected mExistingSessionsPanel:Landroid/widget/LinearLayout;

.field protected mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mListOfPlayersArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNewPlayerNameText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-direct {v0, p0}, Lcom/elsdoerfer/keepscore/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/elsdoerfer/keepscore/Setup;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/elsdoerfer/keepscore/Setup;->newPlayerNameSubmit()V

    return-void
.end method

.method private newPlayerNameSubmit()V
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup;->mNewPlayerNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, playerName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0, v0}, Lcom/elsdoerfer/keepscore/Setup;->addPlayerToNewGame(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup;->mNewPlayerNameText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup;->mNewPlayerNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 339
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->updateAddPlayerOrStartButton()V

    goto :goto_0
.end method


# virtual methods
.method protected addPlayerOrStartButtonIsStartMode()Z
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mNewPlayerNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 369
    goto :goto_0
.end method

.method protected addPlayerToNewGame(Ljava/lang/String;)V
    .locals 1
    .parameter "playerName"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 344
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->updateUI()V

    .line 345
    return-void
.end method

.method protected continueSession(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elsdoerfer/keepscore/Game;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/elsdoerfer/keepscore/Setup;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method protected deleteSession(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/elsdoerfer/keepscore/DbAdapter;->deleteSession(J)V

    .line 355
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 356
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->updateUI()V

    .line 357
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x2

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/elsdoerfer/keepscore/Setup;->setContentView(I)V

    .line 87
    new-instance v0, Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-direct {v0, p0}, Lcom/elsdoerfer/keepscore/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    .line 88
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/DbAdapter;->open()Lcom/elsdoerfer/keepscore/DbAdapter;

    .line 91
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/elsdoerfer/keepscore/Setup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingPlayersList:Landroid/widget/ListView;

    .line 92
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/elsdoerfer/keepscore/Setup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mNewPlayerNameText:Landroid/widget/EditText;

    .line 93
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/elsdoerfer/keepscore/Setup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mAddNewPlayerOrStartButton:Landroid/widget/Button;

    .line 94
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/elsdoerfer/keepscore/Setup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsPanel:Landroid/widget/LinearLayout;

    .line 95
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/elsdoerfer/keepscore/Setup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsList:Landroid/widget/ListView;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v0, "players"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    :goto_0
    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersArray:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 102
    const v1, 0x7f030001

    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersArray:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 101
    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    .line 103
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingPlayersList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/DbAdapter;->fetchAllSessions()Landroid/database/Cursor;

    move-result-object v3

    .line 107
    .local v3, existingSessionListCursor:Landroid/database/Cursor;
    invoke-virtual {p0, v3}, Lcom/elsdoerfer/keepscore/Setup;->startManagingCursor(Landroid/database/Cursor;)V

    .line 109
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 110
    const v2, 0x7f030002

    .line 112
    new-array v4, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v5, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_LABEL_VKEY:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    sget-object v5, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_LAST_PLAYED_AT_KEY:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 113
    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 109
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 108
    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 114
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsAdapter:Landroid/widget/SimpleCursorAdapter;

    new-instance v1, Lcom/elsdoerfer/keepscore/Setup$1;

    invoke-direct {v1, p0}, Lcom/elsdoerfer/keepscore/Setup$1;-><init>(Lcom/elsdoerfer/keepscore/Setup;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 152
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    move-object v6, p0

    .line 157
    .local v6, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/elsdoerfer/keepscore/Setup;->registerForContextMenu(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mNewPlayerNameText:Landroid/widget/EditText;

    new-instance v1, Lcom/elsdoerfer/keepscore/Setup$2;

    invoke-direct {v1, p0}, Lcom/elsdoerfer/keepscore/Setup$2;-><init>(Lcom/elsdoerfer/keepscore/Setup;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 176
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mNewPlayerNameText:Landroid/widget/EditText;

    new-instance v1, Lcom/elsdoerfer/keepscore/Setup$3;

    invoke-direct {v1, p0}, Lcom/elsdoerfer/keepscore/Setup$3;-><init>(Lcom/elsdoerfer/keepscore/Setup;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mAddNewPlayerOrStartButton:Landroid/widget/Button;

    new-instance v1, Lcom/elsdoerfer/keepscore/Setup$4;

    invoke-direct {v1, p0, v3}, Lcom/elsdoerfer/keepscore/Setup$4;-><init>(Lcom/elsdoerfer/keepscore/Setup;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingPlayersList:Landroid/widget/ListView;

    new-instance v1, Lcom/elsdoerfer/keepscore/Setup$5;

    invoke-direct {v1, p0, v6}, Lcom/elsdoerfer/keepscore/Setup$5;-><init>(Lcom/elsdoerfer/keepscore/Setup;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsList:Landroid/widget/ListView;

    new-instance v1, Lcom/elsdoerfer/keepscore/Setup$6;

    invoke-direct {v1, p0}, Lcom/elsdoerfer/keepscore/Setup$6;-><init>(Lcom/elsdoerfer/keepscore/Setup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 243
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsList:Landroid/widget/ListView;

    new-instance v1, Lcom/elsdoerfer/keepscore/Setup$7;

    invoke-direct {v1, p0}, Lcom/elsdoerfer/keepscore/Setup$7;-><init>(Lcom/elsdoerfer/keepscore/Setup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 252
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->updateUI()V

    .line 253
    return-void

    .line 100
    .end local v3           #existingSessionListCursor:Landroid/database/Cursor;
    .end local v6           #context:Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 113
    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 311
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 312
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 313
    const v2, 0x7f050006

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/elsdoerfer/keepscore/Setup$9;

    invoke-direct {v3, p0, v1}, Lcom/elsdoerfer/keepscore/Setup$9;-><init>(Lcom/elsdoerfer/keepscore/Setup;Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 320
    const v2, 0x7f050007

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/elsdoerfer/keepscore/Setup$10;

    invoke-direct {v3, p0, v1}, Lcom/elsdoerfer/keepscore/Setup$10;-><init>(Lcom/elsdoerfer/keepscore/Setup;Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 327
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x7f020001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 270
    const v0, 0x7f05000a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mClearPlayersItem:Landroid/view/MenuItem;

    .line 271
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mClearPlayersItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 272
    const/4 v0, 0x3

    const v1, 0x7f050007

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDeleteGameItem:Landroid/view/MenuItem;

    .line 273
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDeleteGameItem:Landroid/view/MenuItem;

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 274
    const/4 v0, 0x4

    const v1, 0x7f050008

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mClearGamesItem:Landroid/view/MenuItem;

    .line 275
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mClearGamesItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 277
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->updateUI()V

    .line 278
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->sessionListSelectionChanged()V

    .line 279
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 258
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/DbAdapter;->close()V

    .line 259
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 307
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 285
    :pswitch_1
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/elsdoerfer/keepscore/Setup;->deleteSession(J)V

    move v0, v3

    .line 286
    goto :goto_0

    .line 288
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 290
    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 292
    const v1, 0x7f050002

    new-instance v2, Lcom/elsdoerfer/keepscore/Setup$8;

    invoke-direct {v2, p0}, Lcom/elsdoerfer/keepscore/Setup$8;-><init>(Lcom/elsdoerfer/keepscore/Setup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    const-string v1, "No"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    .line 301
    goto :goto_0

    .line 303
    :pswitch_3
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 304
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->updateUI()V

    move v0, v3

    .line 305
    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    const-string v0, "players"

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 265
    return-void
.end method

.method protected sessionListSelectionChanged()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDeleteGameItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup;->mDeleteGameItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 362
    :cond_0
    return-void

    .line 361
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateAddPlayerOrStartButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->addPlayerOrStartButtonIsStartMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    :goto_0
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup;->mAddNewPlayerOrStartButton:Landroid/widget/Button;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 381
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateUI()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 399
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 401
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingPlayersList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 402
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 403
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingPlayersList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    :goto_0
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mDeleteGameItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    .line 422
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v5

    .line 423
    .local v0, editingPlayers:Z
    :goto_1
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v5

    .line 424
    .local v2, sessionsExist:Z
    :goto_2
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mDeleteGameItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    move v4, v5

    :goto_3
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 425
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mClearGamesItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_6

    move v4, v5

    :goto_4
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mClearGamesItem:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 427
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mClearPlayersItem:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    .end local v0           #editingPlayers:Z
    .end local v2           #sessionsExist:Z
    :cond_0
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Setup;->updateAddPlayerOrStartButton()V

    .line 431
    return-void

    .line 408
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingPlayersList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 409
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 410
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingPlayersList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v3}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 414
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 416
    :cond_2
    iget-object v3, p0, Lcom/elsdoerfer/keepscore/Setup;->mExistingSessionsPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v6

    .line 422
    goto :goto_1

    .restart local v0       #editingPlayers:Z
    :cond_4
    move v2, v6

    .line 423
    goto :goto_2

    .restart local v2       #sessionsExist:Z
    :cond_5
    move v4, v6

    .line 424
    goto :goto_3

    :cond_6
    move v4, v6

    .line 425
    goto :goto_4
.end method
