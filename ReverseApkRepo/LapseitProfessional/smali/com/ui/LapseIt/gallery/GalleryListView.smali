.class public Lcom/ui/LapseIt/gallery/GalleryListView;
.super Landroid/app/ListActivity;
.source "GalleryListView.java"

# interfaces
.implements Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;
    }
.end annotation


# instance fields
.field dataObserver:Landroid/database/DataSetObserver;

.field fetchingDialog:Landroid/app/ProgressDialog;

.field private galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

.field private galleryAdapter:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

.field private headerListener:Landroid/view/View$OnClickListener;

.field headerSubTitle:Landroid/widget/TextView;

.field headerTitleView:Landroid/widget/TextView;

.field private isRegistering:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private sortingUser:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 152
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryListView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/gallery/GalleryListView$1;-><init>(Lcom/ui/LapseIt/gallery/GalleryListView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerListener:Landroid/view/View$OnClickListener;

    .line 263
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryListView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/gallery/GalleryListView$2;-><init>(Lcom/ui/LapseIt/gallery/GalleryListView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 322
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryListView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/gallery/GalleryListView$3;-><init>(Lcom/ui/LapseIt/gallery/GalleryListView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->dataObserver:Landroid/database/DataSetObserver;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/gallery/GalleryListView;)Lcom/ui/LapseIt/gallery/GalleryQuickAction;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/gallery/GalleryListView;Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    return-void
.end method

.method private buildConnectionErrorDialog()V
    .locals 5

    .prologue
    .line 240
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 242
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 243
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 244
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ui/LapseIt/gallery/GalleryListView$4;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/gallery/GalleryListView$4;-><init>(Lcom/ui/LapseIt/gallery/GalleryListView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 259
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerTitleView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Searching for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 306
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 308
    const v2, 0x7f03000b

    invoke-static {p0, v2}, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->getInstance(Landroid/content/Context;I)Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAdapter:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    .line 309
    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAdapter:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->isRegistering:Z

    .line 312
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 314
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 315
    return-void

    .line 302
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #query:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .restart local v1       #query:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 206
    invoke-static {}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->values()[Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 212
    :goto_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 206
    :cond_0
    aget-object v0, v2, v1

    .line 207
    .local v0, sortMode:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->getTitleId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/gallery/GalleryListView;->setSortMode(Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;)V

    goto :goto_1

    .line 206
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 79
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 81
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->setContentView(I)V

    .line 83
    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 84
    .local v1, sortView:Landroid/widget/ImageView;
    const v2, 0x7f0b0029

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    .local v0, searchView:Landroid/widget/ImageView;
    const v2, 0x7f0b0027

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerTitleView:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f0b0028

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerSubTitle:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->registerForContextMenu(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->handleIntent(Landroid/content/Intent;)V

    .line 99
    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->fetchingDialog:Landroid/app/ProgressDialog;

    .line 102
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 197
    invoke-static {}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->values()[Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 202
    return-void

    .line 197
    :cond_0
    aget-object v0, v2, v1

    .line 198
    .local v0, sortMode:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;
    sget-object v4, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->FROM_USER:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {v0, v4}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->getTitleId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 197
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onGalleryResult(Lorg/json/JSONArray;)V
    .locals 4
    .parameter "resultJSON"

    .prologue
    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->fetchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    if-nez p1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->buildConnectionErrorDialog()V

    .line 237
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {p0}, Lui/utils/OrientationUtils;->unlockScreen(Landroid/app/Activity;)V

    .line 225
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, headerTitle:Ljava/lang/String;
    const-string v2, "XXX"

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 232
    :goto_1
    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAdapter:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    invoke-virtual {v2, p1}, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->setJSONAndPopulate(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v1           #headerTitle:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 229
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1       #headerTitle:Ljava/lang/String;
    const-string v2, "XXX"

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 349
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 350
    iget-boolean v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->sortingUser:Z

    if-eqz v1, :cond_0

    .line 351
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->RECENTLY_ADDED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->setSortMode(Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;)V

    .line 352
    iput-boolean v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->sortingUser:Z

    .line 360
    :goto_0
    return v0

    .line 354
    :cond_0
    sget-object v1, Lcom/ui/LapseIt/list/ListHostView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 355
    sget-object v1, Lcom/ui/LapseIt/list/ListHostView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 360
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/ui/LapseIt/gallery/GalleryListView;->handleIntent(Landroid/content/Intent;)V

    .line 320
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-boolean v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->isRegistering:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 171
    iput-boolean v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->isRegistering:Z

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->dismissWithAnimation(Z)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    .line 179
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 180
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 109
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->RECENTLY_ADDED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/gallery/GalleryListView;->setSortMode(Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;)V

    .line 110
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 111
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 114
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->dismissWithAnimation(Z)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->galleryAction:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    .line 122
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 71
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 184
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 191
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 192
    return-void
.end method

.method setSortMode(Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;)V
    .locals 7
    .parameter "sortMode"

    .prologue
    const v6, 0x7f0800ca

    const/4 v5, 0x0

    .line 125
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, sorting:Ljava/lang/String;
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerSubTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->getTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iput-boolean v5, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->sortingUser:Z

    .line 131
    invoke-static {p0}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 133
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->fetchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->fetchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 136
    new-instance v1, Lcom/ui/LapseIt/gallery/GalleryRequestTask;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/gallery/GalleryRequestTask;-><init>(Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    aput-object p1, v2, v5

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void
.end method

.method setSortMode(Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;ILjava/lang/String;)V
    .locals 6
    .parameter "sortMode"
    .parameter "userId"
    .parameter "username"

    .prologue
    const/4 v5, 0x1

    .line 140
    new-instance v1, Lcom/ui/LapseIt/gallery/GalleryRequestTask;

    invoke-direct {v1, p0, p2}, Lcom/ui/LapseIt/gallery/GalleryRequestTask;-><init>(Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;I)V

    new-array v2, v5, [Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    const/4 v3, 0x0

    sget-object v4, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->FROM_USER:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, fetchMessage:Ljava/lang/String;
    const-string v1, "XXX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " @"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->headerSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iput-boolean v5, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->sortingUser:Z

    .line 148
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->fetchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView;->fetchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 150
    return-void
.end method
