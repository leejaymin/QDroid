.class public Ljiqqa/recipe/Main;
.super Landroid/app/ListActivity;
.source "Main.java"


# static fields
.field private static final EDIT_RECIPE:I = 0x4

.field private static final NEW_RECIPE:I = 0x1

.field private static final VIEW_RECIPE:I = 0x2


# instance fields
.field backgroundPref:Ljava/lang/String;

.field banner:Landroid/widget/ImageView;

.field db:Ljiqqa/recipe/RecipeDBAdapter;

.field deleteDialog:Landroid/app/AlertDialog;

.field llBg:Landroid/widget/LinearLayout;

.field lv:Landroid/widget/ListView;

.field pkg:Ljava/lang/String;

.field qm:Ljiqqa/recipe/QMenu;

.field private rCursor:Landroid/database/Cursor;

.field private rCursor2:Landroid/database/Cursor;

.field shareRecipe:Landroid/content/Intent;

.field type:Ljava/lang/String;

.field whatCat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 47
    const-string v0, "jiqqa.recipe"

    iput-object v0, p0, Ljiqqa/recipe/Main;->pkg:Ljava/lang/String;

    .line 48
    const-string v0, "drawable"

    iput-object v0, p0, Ljiqqa/recipe/Main;->type:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Ljiqqa/recipe/Main;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1(Ljiqqa/recipe/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Ljiqqa/recipe/Main;->fillData()V

    return-void
.end method

.method private fillData()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 114
    iget-object v1, p0, Ljiqqa/recipe/Main;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v1}, Ljiqqa/recipe/RecipeDBAdapter;->getAllRecipes()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;

    .line 115
    iget-object v1, p0, Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Ljiqqa/recipe/Main;->startManagingCursor(Landroid/database/Cursor;)V

    .line 117
    new-array v4, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_title"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "_serves"

    aput-object v2, v4, v1

    .line 118
    .local v4, from:[Ljava/lang/String;
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 120
    .local v5, to:[I
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030008

    iget-object v3, p0, Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 121
    .local v0, cRecipes:Landroid/widget/SimpleCursorAdapter;
    invoke-virtual {p0, v0}, Ljiqqa/recipe/Main;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void

    .line 118
    :array_0
    .array-data 0x4
        0x2bt 0x0t 0xat 0x7ft
        0x2dt 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private getPrefs()V
    .locals 6

    .prologue
    .line 285
    invoke-virtual {p0}, Ljiqqa/recipe/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "prefBG"

    const-string v2, "bg_white_stripes"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljiqqa/recipe/Main;->backgroundPref:Ljava/lang/String;

    .line 287
    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Ljiqqa/recipe/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ljiqqa/recipe/Main;->llBg:Landroid/widget/LinearLayout;

    .line 288
    iget-object v1, p0, Ljiqqa/recipe/Main;->llBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljiqqa/recipe/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Ljiqqa/recipe/Main;->backgroundPref:Ljava/lang/String;

    iget-object v4, p0, Ljiqqa/recipe/Main;->type:Ljava/lang/String;

    iget-object v5, p0, Ljiqqa/recipe/Main;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 289
    return-void
.end method

.method private testDialog()V
    .locals 5

    .prologue
    .line 294
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, fl:Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 296
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 297
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 296
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 301
    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 302
    const-string v3, "Please Read!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 303
    const-string v3, "Clicking on a item in List now shows Recipe."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 304
    const-string v3, "Ok"

    new-instance v4, Ljiqqa/recipe/Main$5;

    invoke-direct {v4, p0}, Ljiqqa/recipe/Main$5;-><init>(Ljiqqa/recipe/Main;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 313
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    const-string v7, "My Recipe"

    .line 58
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Ljiqqa/recipe/Main;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Ljiqqa/recipe/Main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 62
    .local v6, extras:Landroid/os/Bundle;
    const-string v1, "theCat"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    .line 63
    const-string v1, "My Recipe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extras recieved:["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const v1, 0x7f0a000f

    invoke-virtual {p0, v1}, Ljiqqa/recipe/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    .line 65
    new-instance v1, Ljiqqa/recipe/RecipeDBAdapter;

    invoke-direct {v1, p0}, Ljiqqa/recipe/RecipeDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ljiqqa/recipe/Main;->db:Ljiqqa/recipe/RecipeDBAdapter;

    .line 66
    iget-object v1, p0, Ljiqqa/recipe/Main;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v1}, Ljiqqa/recipe/RecipeDBAdapter;->open()Ljiqqa/recipe/RecipeDBAdapter;

    .line 67
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "All"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 68
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    const-string v1, "My Recipe"

    const-string v1, "Loading All..."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Ljiqqa/recipe/Main;->fillData()V

    .line 75
    :goto_0
    iget-object v1, p0, Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Ljiqqa/recipe/Main;->startManagingCursor(Landroid/database/Cursor;)V

    .line 77
    new-array v4, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_title"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "_serves"

    aput-object v2, v4, v1

    .line 78
    .local v4, from:[Ljava/lang/String;
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 80
    .local v5, to:[I
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030008

    iget-object v3, p0, Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 81
    .local v0, cRecipes:Landroid/widget/SimpleCursorAdapter;
    invoke-virtual {p0, v0}, Ljiqqa/recipe/Main;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "Appetizers and Snacks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :cond_0
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "Bread"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :cond_1
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "Breakfast and Brunch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    :cond_2
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "Desserts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :cond_3
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "Drinks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    :cond_4
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "Main Dish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :cond_5
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "Salad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :cond_6
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "Side Dish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 105
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :cond_7
    iget-object v1, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    const-string v2, "Soups, Stews and Chili"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 108
    iget-object v1, p0, Ljiqqa/recipe/Main;->banner:Landroid/widget/ImageView;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :cond_8
    return-void

    .line 74
    .end local v0           #cRecipes:Landroid/widget/SimpleCursorAdapter;
    .end local v4           #from:[Ljava/lang/String;
    .end local v5           #to:[I
    :cond_9
    iget-object v1, p0, Ljiqqa/recipe/Main;->db:Ljiqqa/recipe/RecipeDBAdapter;

    iget-object v2, p0, Ljiqqa/recipe/Main;->whatCat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljiqqa/recipe/RecipeDBAdapter;->getCategories(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 78
    :array_0
    .array-data 0x4
        0x2bt 0x0t 0xat 0x7ft
        0x2dt 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 258
    invoke-virtual {p0}, Ljiqqa/recipe/Main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 259
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 260
    const/4 v1, 0x1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 133
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 135
    new-instance v5, Ljiqqa/recipe/QuickAction;

    invoke-direct {v5, p2}, Ljiqqa/recipe/QuickAction;-><init>(Landroid/view/View;)V

    .line 136
    .local v5, mQuickAction:Ljiqqa/recipe/QuickAction;
    new-instance v12, Ljiqqa/recipe/ActionItem;

    invoke-direct {v12}, Ljiqqa/recipe/ActionItem;-><init>()V

    .line 138
    .local v12, viewR:Ljiqqa/recipe/ActionItem;
    const-string v0, "View"

    invoke-virtual {v12, v0}, Ljiqqa/recipe/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Ljiqqa/recipe/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljiqqa/recipe/ActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v0, Ljiqqa/recipe/Main$1;

    move-object v1, p0

    move/from16 v2, p3

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Ljiqqa/recipe/Main$1;-><init>(Ljiqqa/recipe/Main;IJLjiqqa/recipe/QuickAction;)V

    invoke-virtual {v12, v0}, Ljiqqa/recipe/ActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v10, Ljiqqa/recipe/ActionItem;

    invoke-direct {v10}, Ljiqqa/recipe/ActionItem;-><init>()V

    .line 160
    .local v10, editR:Ljiqqa/recipe/ActionItem;
    const-string v0, "Edit"

    invoke-virtual {v10, v0}, Ljiqqa/recipe/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljiqqa/recipe/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljiqqa/recipe/ActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 162
    new-instance v0, Ljiqqa/recipe/Main$2;

    move-object v1, p0

    move/from16 v2, p3

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Ljiqqa/recipe/Main$2;-><init>(Ljiqqa/recipe/Main;IJLjiqqa/recipe/QuickAction;)V

    invoke-virtual {v10, v0}, Ljiqqa/recipe/ActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance v11, Ljiqqa/recipe/ActionItem;

    invoke-direct {v11}, Ljiqqa/recipe/ActionItem;-><init>()V

    .line 181
    .local v11, shareR:Ljiqqa/recipe/ActionItem;
    const-string v0, "Share"

    invoke-virtual {v11, v0}, Ljiqqa/recipe/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Ljiqqa/recipe/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljiqqa/recipe/ActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 183
    new-instance v0, Ljiqqa/recipe/Main$3;

    move-object v1, p0

    move/from16 v2, p3

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Ljiqqa/recipe/Main$3;-><init>(Ljiqqa/recipe/Main;IJLjiqqa/recipe/QuickAction;)V

    invoke-virtual {v11, v0}, Ljiqqa/recipe/ActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v9, Ljiqqa/recipe/ActionItem;

    invoke-direct {v9}, Ljiqqa/recipe/ActionItem;-><init>()V

    .line 217
    .local v9, deleteR:Ljiqqa/recipe/ActionItem;
    const-string v0, "Delete"

    invoke-virtual {v9, v0}, Ljiqqa/recipe/ActionItem;->setTitle(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Ljiqqa/recipe/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljiqqa/recipe/ActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 219
    new-instance v3, Ljiqqa/recipe/Main$4;

    move-object v4, p0

    move/from16 v6, p3

    move-wide/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Ljiqqa/recipe/Main$4;-><init>(Ljiqqa/recipe/Main;Ljiqqa/recipe/QuickAction;IJ)V

    invoke-virtual {v9, v3}, Ljiqqa/recipe/ActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-virtual {v5, v12}, Ljiqqa/recipe/QuickAction;->addActionItem(Ljiqqa/recipe/ActionItem;)V

    .line 248
    invoke-virtual {v5, v10}, Ljiqqa/recipe/QuickAction;->addActionItem(Ljiqqa/recipe/ActionItem;)V

    .line 249
    invoke-virtual {v5, v11}, Ljiqqa/recipe/QuickAction;->addActionItem(Ljiqqa/recipe/ActionItem;)V

    .line 250
    invoke-virtual {v5, v9}, Ljiqqa/recipe/QuickAction;->addActionItem(Ljiqqa/recipe/ActionItem;)V

    .line 251
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Ljiqqa/recipe/QuickAction;->setAnimStyle(I)V

    .line 252
    invoke-virtual {v5}, Ljiqqa/recipe/QuickAction;->show()V

    .line 254
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 271
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 267
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljiqqa/recipe/MainPrefs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljiqqa/recipe/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x7f0a0038
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 280
    invoke-direct {p0}, Ljiqqa/recipe/Main;->getPrefs()V

    .line 281
    return-void
.end method
