.class public Lcom/jjcgames/android/airhockey/PlayerSelectActivity;
.super Landroid/app/Activity;
.source "PlayerSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;
    }
.end annotation


# instance fields
.field private movingOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->movingOn:Z

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->createPlayer(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->movingOn:Z

    return-void
.end method

.method static synthetic access$2(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->populatePlayerList()V

    return-void
.end method

.method private createPlayer(ILjava/lang/String;I)V
    .locals 6
    .parameter "id"
    .parameter "name"
    .parameter "startingLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "\n"

    .line 162
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 163
    new-instance v2, Ljava/io/File;

    const-string v3, "players"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 164
    sget-object v2, Lcom/jjcgames/android/airhockey/Game;->PLAYER_FILE_CHARSET:Ljava/nio/charset/Charset;

    .line 162
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 166
    .local v0, w:Ljava/io/Writer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 169
    return-void
.end method

.method static getColorResourceIDForLevel(I)I
    .locals 1
    .parameter "level"

    .prologue
    .line 38
    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    .line 39
    const/high16 v0, 0x7f05

    .line 59
    :goto_0
    return v0

    .line 40
    :cond_0
    const/16 v0, 0xc8

    if-ge p0, v0, :cond_1

    .line 41
    const v0, 0x7f050001

    goto :goto_0

    .line 42
    :cond_1
    const/16 v0, 0x12c

    if-ge p0, v0, :cond_2

    .line 43
    const v0, 0x7f050002

    goto :goto_0

    .line 44
    :cond_2
    const/16 v0, 0x190

    if-ge p0, v0, :cond_3

    .line 45
    const v0, 0x7f050003

    goto :goto_0

    .line 46
    :cond_3
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_4

    .line 47
    const v0, 0x7f050004

    goto :goto_0

    .line 48
    :cond_4
    const/16 v0, 0x258

    if-ge p0, v0, :cond_5

    .line 49
    const v0, 0x7f050005

    goto :goto_0

    .line 50
    :cond_5
    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_6

    .line 51
    const v0, 0x7f050006

    goto :goto_0

    .line 52
    :cond_6
    const/16 v0, 0x320

    if-ge p0, v0, :cond_7

    .line 53
    const v0, 0x7f050007

    goto :goto_0

    .line 54
    :cond_7
    const/16 v0, 0x384

    if-ge p0, v0, :cond_8

    .line 55
    const v0, 0x7f050008

    goto :goto_0

    .line 56
    :cond_8
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_9

    .line 57
    const v0, 0x7f050009

    goto :goto_0

    .line 59
    :cond_9
    const v0, 0x7f05000a

    goto :goto_0
.end method

.method private populatePlayerList()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 126
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 128
    .local v3, players:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/jjcgames/android/airhockey/Player;>;"
    const-string v4, "players"

    invoke-virtual {p0, v4, v5}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 129
    .local v2, playerFiles:[Ljava/io/File;
    if-nez v2, :cond_0

    .line 132
    new-array v2, v5, [Ljava/io/File;

    .line 135
    :cond_0
    array-length v4, v2

    :goto_0
    if-lt v5, v4, :cond_1

    .line 146
    new-instance v4, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$1;

    invoke-direct {v4, p0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$1;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 154
    const v4, 0x7f090011

    invoke-virtual {p0, v4}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 155
    new-instance v6, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;

    .line 156
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/jjcgames/android/airhockey/Player;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/jjcgames/android/airhockey/Player;

    .line 155
    invoke-direct {v6, p0, v5}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;-><init>(Landroid/content/Context;[Lcom/jjcgames/android/airhockey/Player;)V

    .line 154
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    return-void

    .line 135
    :cond_1
    aget-object v0, v2, v5

    .line 137
    .local v0, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, id:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 135
    .end local v1           #id:I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    .restart local v1       #id:I
    :cond_2
    new-instance v6, Lcom/jjcgames/android/airhockey/Player;

    invoke-direct {v6, p0, v1}, Lcom/jjcgames/android/airhockey/Player;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 143
    .end local v1           #id:I
    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    const-string v1, "state"

    invoke-virtual {p0, v1}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->deleteFile(Ljava/lang/String;)Z

    .line 177
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->requestWindowFeature(I)Z

    .line 178
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 179
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->setContentView(I)V

    .line 181
    const v1, 0x7f090011

    invoke-virtual {p0, v1}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 183
    .local v0, playerList:Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 185
    new-instance v1, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Landroid/widget/ListView;)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    new-instance v1, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Landroid/widget/ListView;)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 253
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 254
    new-instance v2, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$4;

    invoke-direct {v2, p0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$4;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;)V

    .line 253
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 271
    .line 272
    const-string v1, "layout_inflater"

    .line 271
    invoke-virtual {p0, v1}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 273
    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, dialogView:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 276
    const v2, 0x7f070012

    .line 277
    new-instance v3, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$5;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Landroid/view/View;)V

    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 337
    const v2, 0x7f070013

    .line 338
    new-instance v3, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$6;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Landroid/view/View;)V

    .line 337
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 346
    new-instance v2, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$7;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Landroid/view/View;)V

    .line 345
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 353
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 274
    return-object v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 359
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->movingOn:Z

    .line 362
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 369
    iget-boolean v2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->movingOn:Z

    if-nez v2, :cond_0

    .line 371
    :try_start_0
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->stateWriter(Landroid/content/Context;)Ljava/io/Writer;

    move-result-object v1

    .line 372
    .local v1, state:Ljava/io/Writer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v1           #state:Ljava/io/Writer;
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 375
    .local v0, e:Ljava/io/IOException;
    const-string v2, "state"

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 378
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->movingOn:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 266
    invoke-direct {p0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->populatePlayerList()V

    .line 267
    return-void
.end method
