.class public Lcom/battlesheep/marblebox/activities/HighscoresActivity;
.super Landroid/app/Activity;
.source "HighscoresActivity.java"


# instance fields
.field private mGoBackButton:Landroid/widget/Button;

.field mGoBackOnClickListener:Landroid/view/View$OnClickListener;

.field private mLevelPlayed:Ljava/lang/String;

.field private mNameInput:Landroid/widget/TextView;

.field private mNewScore:J

.field private mNewScorePanel:Landroid/view/ViewGroup;

.field private mNoHighScore:Landroid/widget/TextView;

.field private mResetButton:Landroid/widget/Button;

.field mResetConfirmOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mResetOnClickListener:Landroid/view/View$OnClickListener;

.field private mScoreDisplay:Landroid/widget/TextView;

.field private mScoreNameEdit:Landroid/view/ViewGroup;

.field private mScoresTable:Landroid/widget/TableLayout;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    new-instance v0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$1;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity$1;-><init>(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mGoBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 140
    new-instance v0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$2;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity$2;-><init>(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mResetOnClickListener:Landroid/view/View$OnClickListener;

    .line 154
    new-instance v0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$3;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity$3;-><init>(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mResetConfirmOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->populateTable()V

    return-void
.end method

.method static synthetic access$1(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$2(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNameInput:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mLevelPlayed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNewScore:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNewScorePanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mResetButton:Landroid/widget/Button;

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 129
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 130
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNameInput:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    return-void
.end method

.method private populateTable()V
    .locals 13

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x0

    const/16 v12, 0xa

    .line 168
    iget-object v8, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mScoresTable:Landroid/widget/TableLayout;

    invoke-virtual {v8}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 171
    const/4 v4, 0x1

    .line 172
    .local v4, place:I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 173
    .local v0, colors:[I
    const/16 v8, 0x14

    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    aput v8, v0, v9

    .line 174
    const/4 v8, 0x1

    const/16 v9, 0x3c

    invoke-static {v9, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v0, v8

    .line 175
    invoke-static {}, Lcom/battlesheep/marblebox/Highscores;->getRecords()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 211
    return-void

    .line 175
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/battlesheep/marblebox/HighscoreRecord;

    .line 176
    .local v1, hiscore:Lcom/battlesheep/marblebox/HighscoreRecord;
    new-instance v7, Landroid/widget/TableRow;

    invoke-direct {v7, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 177
    .local v7, tr:Landroid/widget/TableRow;
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    rem-int/lit8 v9, v4, 0x2

    aget v9, v0, v9

    invoke-virtual {v7, v9}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 180
    iget-object v9, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mScoresTable:Landroid/widget/TableLayout;

    invoke-virtual {v9, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 183
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v5, placeView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    invoke-virtual {v7, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 189
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v3, nameView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 191
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 192
    iget-object v9, v1, Lcom/battlesheep/marblebox/HighscoreRecord;->name:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    invoke-virtual {v7, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 196
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 197
    .local v2, levelView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 198
    iget-object v9, v1, Lcom/battlesheep/marblebox/HighscoreRecord;->level:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 200
    invoke-virtual {v7, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 202
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v6, scoreView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    iget-wide v9, v1, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 206
    invoke-virtual {v7, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 209
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private showKeyboard()V
    .locals 3

    .prologue
    .line 120
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNameInput:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 123
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f08000d

    const/4 v3, 0x0

    const-string v2, "HS_HISCORE_SCORE"

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "airstrip.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    .line 53
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mScoresTable:Landroid/widget/TableLayout;

    .line 54
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNewScorePanel:Landroid/view/ViewGroup;

    .line 55
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mScoreNameEdit:Landroid/view/ViewGroup;

    .line 56
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNameInput:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNoHighScore:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mScoreDisplay:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mResetButton:Landroid/widget/Button;

    .line 60
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mGoBackButton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNoHighScore:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mScoreDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNameInput:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mResetButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mGoBackButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mGoBackButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mGoBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mResetButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mResetOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HS_HISCORE_SCORE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "HS_HISCORE_SCORE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNewScore:J

    .line 77
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "HS_HISCORE_LEVEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mLevelPlayed:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNewScorePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mScoreDisplay:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNewScore:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-wide v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNewScore:J

    invoke-static {v0, v1}, Lcom/battlesheep/marblebox/Highscores;->checkEligible(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mResetButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mScoreNameEdit:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNameInput:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 92
    invoke-direct {p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->showKeyboard()V

    .line 93
    invoke-virtual {p0, v4}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;

    invoke-direct {v1, p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;-><init>(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->populateTable()V

    .line 114
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNoHighScore:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
