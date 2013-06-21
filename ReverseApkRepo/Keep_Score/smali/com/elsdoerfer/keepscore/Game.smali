.class public Lcom/elsdoerfer/keepscore/Game;
.super Landroid/app/Activity;
.source "Game.java"


# static fields
.field public static final END_GAME_ID:I = 0x2

.field private static NUM_ROWS_FOR_FOOTER:I = 0x0

.field public static final REMOVE_LAST_ROW_ID:I = 0x1


# instance fields
.field protected mAddNewScoresButton:Landroid/widget/Button;

.field protected mBoldFace:Landroid/graphics/Typeface;

.field protected mCellPadding:I

.field mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

.field protected mEndGameItem:Landroid/view/MenuItem;

.field protected mFooterRow:Landroid/widget/TableRow;

.field protected mGameScrollView:Landroid/widget/ScrollView;

.field protected mGameTable:Landroid/widget/TableLayout;

.field protected mHeaderRow:Landroid/widget/TableRow;

.field protected mLastEnteredValue:Ljava/lang/CharSequence;

.field protected mNewScoreEdits:[Landroid/widget/EditText;

.field protected mNewScoreValues:[Ljava/lang/Integer;

.field protected mPlayers:[Ljava/lang/String;

.field protected mRemoveLastRowItem:Landroid/view/MenuItem;

.field protected mScoreMatrix:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSessionId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0xa

    sput v0, Lcom/elsdoerfer/keepscore/Game;->NUM_ROWS_FOR_FOOTER:I

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    new-instance v0, Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-direct {v0, p0}, Lcom/elsdoerfer/keepscore/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mLastEnteredValue:Ljava/lang/CharSequence;

    .line 42
    return-void
.end method


# virtual methods
.method protected getInsertPosition()I
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/elsdoerfer/keepscore/Game;->NUM_ROWS_FOR_FOOTER:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    .line 365
    :goto_0
    sub-int/2addr v0, v1

    return v0

    .line 366
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected insertScoreRow([Ljava/lang/Integer;)V
    .locals 8
    .parameter "scores"

    .prologue
    .line 332
    invoke-virtual {p1}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/Integer;

    .line 333
    .restart local p1
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    array-length v4, p1

    new-array v1, v4, [Ljava/lang/Integer;

    .line 339
    .local v1, currentSums:[Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 348
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/elsdoerfer/keepscore/Game;->makeTextRow([Ljava/lang/Object;Z)Landroid/widget/TableRow;

    move-result-object v5

    .line 349
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Game;->getInsertPosition()I

    move-result v6

    .line 348
    invoke-virtual {v4, v5, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 356
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/elsdoerfer/keepscore/Game;->NUM_ROWS_FOR_FOOTER:I

    if-ne v4, v5, :cond_0

    .line 357
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    iget-object v5, p0, Lcom/elsdoerfer/keepscore/Game;->mPlayers:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/elsdoerfer/keepscore/Game;->makeTextRow([Ljava/lang/Object;Z)Landroid/widget/TableRow;

    move-result-object v5

    .line 358
    iget-object v6, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    invoke-virtual {v6}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    .line 357
    invoke-virtual {v4, v5, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 360
    :cond_0
    return-void

    .line 340
    :cond_1
    iget-object v4, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 341
    .local v0, aRow:[Ljava/lang/Integer;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v4, v0

    if-lt v3, v4, :cond_2

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_2
    aget-object v4, v1, v3

    if-nez v4, :cond_3

    .line 343
    aget-object v4, v0, v3

    aput-object v4, v1, v3

    .line 341
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    :cond_3
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_2
.end method

.method protected makeTextRow([Ljava/lang/Object;Z)Landroid/widget/TableRow;
    .locals 9
    .parameter "values"
    .parameter "header"

    .prologue
    .line 319
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 320
    .local v0, newRow:Landroid/widget/TableRow;
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 328
    return-object v0

    .line 320
    :cond_0
    aget-object v2, p1, v4

    .line 321
    .local v2, value:Ljava/lang/Object;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 322
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 324
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/elsdoerfer/keepscore/Game;->mBoldFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 325
    :cond_1
    iget v5, p0, Lcom/elsdoerfer/keepscore/Game;->mCellPadding:I

    iget v6, p0, Lcom/elsdoerfer/keepscore/Game;->mCellPadding:I

    iget v7, p0, Lcom/elsdoerfer/keepscore/Game;->mCellPadding:I

    iget v8, p0, Lcom/elsdoerfer/keepscore/Game;->mCellPadding:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Lcom/elsdoerfer/keepscore/Game;->setContentView(I)V

    .line 91
    new-instance v8, Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-direct {v8, p0}, Lcom/elsdoerfer/keepscore/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    .line 92
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-virtual {v8}, Lcom/elsdoerfer/keepscore/DbAdapter;->open()Lcom/elsdoerfer/keepscore/DbAdapter;

    .line 95
    if-eqz p1, :cond_3

    .line 96
    sget-object v8, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_ID_KEY:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 95
    :goto_0
    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    .line 98
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    if-nez v8, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Game;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 100
    .local v4, extras:Landroid/os/Bundle;
    sget-object v8, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_ID_KEY:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    .line 104
    .end local v4           #extras:Landroid/os/Bundle;
    :cond_0
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    iget-object v9, p0, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/elsdoerfer/keepscore/DbAdapter;->fetchSessionPlayerNames(J)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mPlayers:[Ljava/lang/String;

    .line 107
    const/high16 v8, 0x7f06

    invoke-virtual {p0, v8}, Lcom/elsdoerfer/keepscore/Game;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mGameScrollView:Landroid/widget/ScrollView;

    .line 108
    const v8, 0x7f060001

    invoke-virtual {p0, v8}, Lcom/elsdoerfer/keepscore/Game;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableLayout;

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    .line 109
    const v8, 0x7f060002

    invoke-virtual {p0, v8}, Lcom/elsdoerfer/keepscore/Game;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mAddNewScoresButton:Landroid/widget/Button;

    .line 110
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mAddNewScoresButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/TableRow$LayoutParams;

    .line 111
    .local v6, params:Landroid/widget/TableRow$LayoutParams;
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mPlayers:[Ljava/lang/String;

    array-length v8, v8

    iput v8, v6, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 112
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mAddNewScoresButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-static {v12}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mBoldFace:Landroid/graphics/Typeface;

    .line 116
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f04

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/elsdoerfer/keepscore/Game;->mCellPadding:I

    .line 119
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mPlayers:[Ljava/lang/String;

    invoke-virtual {p0, v8, v12}, Lcom/elsdoerfer/keepscore/Game;->makeTextRow([Ljava/lang/Object;Z)Landroid/widget/TableRow;

    move-result-object v8

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mHeaderRow:Landroid/widget/TableRow;

    .line 120
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    iget-object v9, p0, Lcom/elsdoerfer/keepscore/Game;->mHeaderRow:Landroid/widget/TableRow;

    invoke-virtual {v8, v9, v11}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 123
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 124
    .local v3, editRow:Landroid/widget/TableRow;
    const-class v8, Landroid/widget/EditText;

    iget-object v9, p0, Lcom/elsdoerfer/keepscore/Game;->mPlayers:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/widget/EditText;

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreEdits:[Landroid/widget/EditText;

    .line 125
    const-class v8, Ljava/lang/Integer;

    iget-object v9, p0, Lcom/elsdoerfer/keepscore/Game;->mPlayers:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    .line 126
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mPlayers:[Ljava/lang/String;

    array-length v8, v8

    if-lt v5, v8, :cond_4

    .line 220
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    invoke-virtual {v8, v3, v12}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 222
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    .line 225
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    iget-object v9, p0, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/elsdoerfer/keepscore/DbAdapter;->fetchSessionScores(J)Landroid/database/Cursor;

    move-result-object v7

    .line 227
    .local v7, scoreStream:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 228
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mPlayers:[Ljava/lang/String;

    array-length v8, v8

    new-array v1, v8, [Ljava/lang/Integer;

    .line 230
    .local v1, currentRow:[Ljava/lang/Integer;
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 232
    .local v0, currentPos:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v8

    .line 233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    array-length v9, v1

    if-ne v8, v9, :cond_2

    .line 235
    invoke-virtual {p0, v1}, Lcom/elsdoerfer/keepscore/Game;->insertScoreRow([Ljava/lang/Integer;)V

    .line 236
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 238
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 231
    if-nez v8, :cond_1

    .line 239
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_5

    .line 243
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    .line 244
    const-string v9, "Score stream ended unexpectedly. The session data is faulty."

    .line 243
    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v0           #currentPos:Ljava/lang/Integer;
    .end local v1           #currentRow:[Ljava/lang/Integer;
    :catchall_0
    move-exception v8

    .line 250
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 251
    throw v8

    .end local v3           #editRow:Landroid/widget/TableRow;
    .end local v5           #i:I
    .end local v6           #params:Landroid/widget/TableRow$LayoutParams;
    .end local v7           #scoreStream:Landroid/database/Cursor;
    :cond_3
    move-object v8, v13

    .line 97
    goto/16 :goto_0

    .line 127
    .restart local v3       #editRow:Landroid/widget/TableRow;
    .restart local v5       #i:I
    .restart local v6       #params:Landroid/widget/TableRow$LayoutParams;
    :cond_4
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 128
    .local v2, edit:Landroid/widget/EditText;
    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 138
    const v8, 0x7f99006

    add-int/2addr v8, v5

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setId(I)V

    .line 147
    new-instance v8, Lcom/elsdoerfer/keepscore/Game$1;

    invoke-direct {v8, p0, v12, v11}, Lcom/elsdoerfer/keepscore/Game$1;-><init>(Lcom/elsdoerfer/keepscore/Game;ZZ)V

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 185
    new-instance v8, Lcom/elsdoerfer/keepscore/Game$2;

    invoke-direct {v8, p0}, Lcom/elsdoerfer/keepscore/Game$2;-><init>(Lcom/elsdoerfer/keepscore/Game;)V

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 216
    invoke-virtual {v3, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 217
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreEdits:[Landroid/widget/EditText;

    aput-object v2, v8, v5

    .line 218
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    aput-object v13, v8, v5

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 250
    .end local v2           #edit:Landroid/widget/EditText;
    .restart local v7       #scoreStream:Landroid/database/Cursor;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 254
    iget-object v8, p0, Lcom/elsdoerfer/keepscore/Game;->mAddNewScoresButton:Landroid/widget/Button;

    new-instance v9, Lcom/elsdoerfer/keepscore/Game$3;

    invoke-direct {v9, p0}, Lcom/elsdoerfer/keepscore/Game$3;-><init>(Lcom/elsdoerfer/keepscore/Game;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Game;->updateUI()V

    .line 284
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 449
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 450
    const v0, 0x7f050015

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mRemoveLastRowItem:Landroid/view/MenuItem;

    .line 451
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mRemoveLastRowItem:Landroid/view/MenuItem;

    const v1, 0x7f020004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 452
    const/4 v0, 0x2

    const v1, 0x7f050016

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mEndGameItem:Landroid/view/MenuItem;

    .line 453
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mEndGameItem:Landroid/view/MenuItem;

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 455
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Game;->updateUI()V

    .line 456
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 289
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/DbAdapter;->close()V

    .line 290
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 460
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 481
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 462
    :pswitch_0
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 465
    .local v0, lastRow:[Ljava/lang/Integer;
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/elsdoerfer/keepscore/Game;->NUM_ROWS_FOR_FOOTER:I

    if-ne v1, v2, :cond_0

    .line 468
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Game;->getInsertPosition()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/elsdoerfer/keepscore/DbAdapter;->removeSessionScores(JLjava/lang/Integer;)Z

    .line 473
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mGameTable:Landroid/widget/TableLayout;

    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Game;->getInsertPosition()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 474
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v1, v5

    .line 476
    goto :goto_0

    .line 478
    .end local v0           #lastRow:[Ljava/lang/Integer;
    :pswitch_1
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Game;->finish()V

    move v1, v5

    .line 479
    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/elsdoerfer/keepscore/DbAdapter;->updateSessionTimestamp(J)Z

    .line 303
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 308
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Game;->mDb:Lcom/elsdoerfer/keepscore/DbAdapter;

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/elsdoerfer/keepscore/DbAdapter;->updateSessionTimestamp(J)Z

    .line 309
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 295
    sget-object v0, Lcom/elsdoerfer/keepscore/DbAdapter;->SESSION_ID_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Game;->mSessionId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 296
    return-void
.end method

.method protected updateUI()V
    .locals 15

    .prologue
    .line 372
    const/4 v5, 0x0

    .line 373
    .local v5, numManualScores:I
    const/4 v11, 0x0

    .line 374
    .local v11, sumManualScores:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreEdits:[Landroid/widget/EditText;

    array-length v12, v12

    if-lt v1, v12, :cond_2

    .line 402
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    array-length v12, v12

    sub-int v4, v12, v5

    .line 403
    .local v4, numAutomaticValues:I
    const/4 v10, 0x0

    .line 404
    .local v10, sumAutomaticValues:I
    const/4 v3, 0x0

    .line 405
    .local v3, lastSetIndex:Ljava/lang/Integer;
    const/4 v1, 0x0

    :goto_1
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreEdits:[Landroid/widget/EditText;

    array-length v12, v12

    if-lt v1, v12, :cond_5

    .line 433
    add-int v6, v10, v11

    .line 434
    .local v6, roundingError:I
    if-eqz v6, :cond_0

    .line 435
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v14, v12, v13

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v14, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 436
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreEdits:[Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    iget-object v13, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 440
    :cond_0
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mAddNewScoresButton:Landroid/widget/Button;

    if-lez v5, :cond_9

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 443
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mRemoveLastRowItem:Landroid/view/MenuItem;

    if-eqz v12, :cond_1

    .line 444
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mRemoveLastRowItem:Landroid/view/MenuItem;

    iget-object v13, p0, Lcom/elsdoerfer/keepscore/Game;->mScoreMatrix:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_a

    const/4 v13, 0x1

    :goto_3
    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 445
    :cond_1
    return-void

    .line 375
    .end local v3           #lastSetIndex:Ljava/lang/Integer;
    .end local v4           #numAutomaticValues:I
    .end local v6           #roundingError:I
    .end local v10           #sumAutomaticValues:I
    :cond_2
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreEdits:[Landroid/widget/EditText;

    aget-object v7, v12, v1

    .line 376
    .local v7, scoreEdit:Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 377
    .local v8, stringValue:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_4

    .line 379
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 380
    .local v2, intValue:I
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    add-int/2addr v11, v2

    .line 382
    add-int/lit8 v5, v5, 0x1

    .line 374
    .end local v2           #intValue:I
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :catch_0
    move-exception v12

    move-object v0, v12

    .line 392
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Landroid/widget/EditText;->hasFocus()Z

    move-result v12

    if-nez v12, :cond_3

    .line 393
    invoke-virtual {p0}, Lcom/elsdoerfer/keepscore/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050014

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 398
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    const/4 v13, 0x0

    aput-object v13, v12, v1

    goto :goto_4

    .line 406
    .end local v7           #scoreEdit:Landroid/widget/EditText;
    .end local v8           #stringValue:Ljava/lang/String;
    .restart local v3       #lastSetIndex:Ljava/lang/Integer;
    .restart local v4       #numAutomaticValues:I
    .restart local v10       #sumAutomaticValues:I
    :cond_5
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreEdits:[Landroid/widget/EditText;

    aget-object v7, v12, v1

    .line 407
    .restart local v7       #scoreEdit:Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_6

    .line 408
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 412
    :cond_6
    if-gtz v5, :cond_8

    .line 413
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    const/4 v13, 0x0

    aput-object v13, v12, v1

    .line 405
    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 418
    :cond_8
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    if-nez v12, :cond_7

    .line 419
    div-int v12, v11, v4

    neg-int v9, v12

    .line 420
    .local v9, suggestedValue:I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v12, p0, Lcom/elsdoerfer/keepscore/Game;->mNewScoreValues:[Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    .line 422
    add-int/2addr v10, v9

    .line 423
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 426
    const/4 v12, 0x1

    if-ne v4, v12, :cond_7

    .line 427
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_5

    .line 440
    .end local v7           #scoreEdit:Landroid/widget/EditText;
    .end local v9           #suggestedValue:I
    .restart local v6       #roundingError:I
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 444
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_3
.end method
