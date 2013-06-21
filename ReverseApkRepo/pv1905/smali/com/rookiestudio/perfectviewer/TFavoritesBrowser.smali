.class public Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;
.super Landroid/app/Activity;
.source "TFavoritesBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;,
        Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private AddDateStr:Ljava/lang/String;

.field private BackButton:Landroid/widget/ImageButton;

.field private BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

.field private CurrentBook:Ljava/lang/String;

.field private CurrentBookIndex:J

.field private CurrentBookTitle:Landroid/widget/TextView;

.field private CurrentFolder:Ljava/lang/String;

.field private FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

.field private MainListView:Landroid/widget/ListView;

.field private MenuLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    .line 41
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MenuLevel:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBookIndex:J

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBook:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->AddDateStr:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->AddDateStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBookIndex:J

    return-wide v0
.end method


# virtual methods
.method public DeleteBook(J)V
    .locals 4
    .parameter "BookIndex"

    .prologue
    .line 217
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 219
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 220
    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 221
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 222
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$5;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$6;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$6;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 237
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 238
    return-void
.end method

.method public DeleteFavorites(J)V
    .locals 4
    .parameter "FavoritesIndex"

    .prologue
    .line 277
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 280
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 281
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$9;

    invoke-direct {v3, p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$9;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$10;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$10;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 296
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 297
    return-void
.end method

.method public EditBook(JLjava/lang/String;)V
    .locals 4
    .parameter "BookIndex"
    .parameter "Name"

    .prologue
    .line 182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0029

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 184
    const v2, 0x7f0a002d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 186
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 187
    .local v1, input:Landroid/widget/EditText;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v2, 0x104000a

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$3;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;Landroid/widget/EditText;J)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    const/high16 v2, 0x104

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$4;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$4;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 213
    return-void
.end method

.method public EditFavorites(JLjava/lang/String;)V
    .locals 4
    .parameter "FavoritesIndex"
    .parameter "Name"

    .prologue
    .line 242
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a002b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 244
    const v2, 0x7f0a0020

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 246
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, input:Landroid/widget/EditText;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const v2, 0x104000a

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$7;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$7;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;Landroid/widget/EditText;J)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    const/high16 v2, 0x104

    new-instance v3, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$8;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$8;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 273
    return-void
.end method

.method public ListBooks()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->Clear()V

    .line 304
    :cond_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->ListBooks()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    .line 305
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MainListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 307
    return-void
.end method

.method public ListFavoritess(J)V
    .locals 2
    .parameter "BookIndex"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->Clear()V

    .line 314
    :cond_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->FavoritesManager:Lcom/rookiestudio/perfectviewer/TFavoritesManager;

    invoke-virtual {v1, p1, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesManager;->ListFavorites(J)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    .line 315
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MainListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 317
    return-void
.end method

.method public onBookMenu(Landroid/view/View;I)V
    .locals 11
    .parameter "arg1"
    .parameter "ItemIndex"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 78
    new-array v2, v10, [Ljava/lang/CharSequence;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x7f0a0029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    const/4 v6, 0x1

    .line 79
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x2

    .line 80
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a0090

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 81
    .local v2, MenuItemList:[Ljava/lang/CharSequence;
    new-array v1, v10, [I

    fill-array-data v1, :array_0

    .line 84
    .local v1, MenuImageList:[I
    new-instance v4, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;

    const v6, 0x7f03001b

    invoke-direct {v4, p0, v6, v2, v1}, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[I)V

    .line 85
    .local v4, PopupMenu:Lcom/rookiestudio/customize/PopupMenuArrayAdapter;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v5, alert:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    invoke-virtual {v6, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->getItem(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 87
    const v6, 0x108009b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 88
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v3, MenuListView:Landroid/widget/ListView;
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 90
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 91
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x1080012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 95
    .local v0, MenuDialog:Landroid/app/AlertDialog;
    new-instance v6, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$1;

    invoke-direct {v6, p0, v0, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$1;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;Landroid/app/AlertDialog;I)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 113
    return-void

    .line 81
    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public onBookmarkMenu(Landroid/view/View;I)V
    .locals 11
    .parameter "arg1"
    .parameter "ItemIndex"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 116
    new-array v2, v10, [Ljava/lang/CharSequence;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x7f0a002b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    const/4 v6, 0x1

    .line 117
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x2

    .line 118
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a0090

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 119
    .local v2, MenuItemList:[Ljava/lang/CharSequence;
    new-array v1, v10, [I

    fill-array-data v1, :array_0

    .line 122
    .local v1, MenuImageList:[I
    new-instance v4, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;

    const v6, 0x7f03001b

    invoke-direct {v4, p0, v6, v2, v1}, Lcom/rookiestudio/customize/PopupMenuArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[I)V

    .line 123
    .local v4, PopupMenu:Lcom/rookiestudio/customize/PopupMenuArrayAdapter;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v5, alert:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    invoke-virtual {v6, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->getItem(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    const v6, 0x108009b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 126
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v3, MenuListView:Landroid/widget/ListView;
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 128
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 129
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x1080012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 133
    .local v0, MenuDialog:Landroid/app/AlertDialog;
    new-instance v6, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;

    invoke-direct {v6, p0, v0, p2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$2;-><init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;Landroid/app/AlertDialog;I)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 151
    return-void

    .line 119
    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c003a

    if-ne v0, v1, :cond_0

    .line 156
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MenuLevel:I

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->finish()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->Clear()V

    .line 160
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MainListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 162
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MenuLevel:I

    .line 163
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBookTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->setContentView(I)V

    .line 51
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    .line 52
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->AddDateStr:Ljava/lang/String;

    .line 53
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BackButton:Landroid/widget/ImageButton;

    .line 54
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MainListView:Landroid/widget/ListView;

    .line 56
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBookTitle:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MainListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MainListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->ListBooks()V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 348
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->Clear()V

    .line 349
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->Clear()V

    .line 362
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 321
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MenuLevel:I

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    invoke-virtual {v1, p3}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->getItem(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBook:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    invoke-virtual {v1, p3}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->getPath(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentFolder:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBookTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->BookList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;

    invoke-virtual {v1, p3}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBookIndex:J

    .line 326
    iget-wide v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentBookIndex:J

    invoke-virtual {p0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->ListFavoritess(J)V

    .line 327
    const/4 v1, 0x1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MenuLevel:I

    .line 344
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentFolder:Ljava/lang/String;

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    :cond_1
    const/4 v0, 0x0

    .line 332
    .local v0, FileOrder:I
    :try_start_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    invoke-virtual {v1, p3}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->getValue2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 335
    :goto_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->CurrentFolder:Ljava/lang/String;

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    .line 336
    sput v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFileOrder:I

    .line 342
    .end local v0           #FileOrder:I
    :goto_2
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->finish()V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->FavoritesList:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;

    invoke-virtual {v1, p3}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->getValue1(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    goto :goto_2

    .line 333
    .restart local v0       #FileOrder:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->MenuLevel:I

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, p2, p3}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->onBookMenu(Landroid/view/View;I)V

    .line 73
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->onBookmarkMenu(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
