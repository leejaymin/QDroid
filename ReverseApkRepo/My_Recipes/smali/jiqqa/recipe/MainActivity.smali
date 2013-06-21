.class public Ljiqqa/recipe/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final NEW_RECIPE:I = 0x1

.field private static final VIEW_RECIPE:I = 0x2

.field public static selectedItem:Ljava/lang/String;


# instance fields
.field backgroundPref:Ljava/lang/String;

.field btnAddRecipe:Landroid/widget/ImageButton;

.field btnViewRecipes:Landroid/widget/ImageButton;

.field db:Ljiqqa/recipe/RecipeDBAdapter;

.field deleteDialog:Landroid/app/AlertDialog;

.field llBg:Landroid/widget/LinearLayout;

.field pkg:Ljava/lang/String;

.field qm:Ljiqqa/recipe/QMenu;

.field rCount:Landroid/widget/TextView;

.field private rCursor:Landroid/database/Cursor;

.field shareRecipe:Landroid/content/Intent;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const-string v0, "jiqqa.recipe"

    iput-object v0, p0, Ljiqqa/recipe/MainActivity;->pkg:Ljava/lang/String;

    .line 42
    const-string v0, "drawable"

    iput-object v0, p0, Ljiqqa/recipe/MainActivity;->type:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$0(Ljiqqa/recipe/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Ljiqqa/recipe/MainActivity;->recipeDialog()V

    return-void
.end method

.method private getPrefs()V
    .locals 6

    .prologue
    .line 119
    invoke-virtual {p0}, Ljiqqa/recipe/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "prefBG"

    const-string v2, "bg_white_stripes"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljiqqa/recipe/MainActivity;->backgroundPref:Ljava/lang/String;

    .line 121
    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Ljiqqa/recipe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ljiqqa/recipe/MainActivity;->llBg:Landroid/widget/LinearLayout;

    .line 122
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->llBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljiqqa/recipe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Ljiqqa/recipe/MainActivity;->backgroundPref:Ljava/lang/String;

    iget-object v4, p0, Ljiqqa/recipe/MainActivity;->type:Ljava/lang/String;

    iget-object v5, p0, Ljiqqa/recipe/MainActivity;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 123
    return-void
.end method

.method private recipeDialog()V
    .locals 6

    .prologue
    .line 126
    const-string v2, ""

    sput-object v2, Ljiqqa/recipe/MainActivity;->selectedItem:Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, fl:Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, iv:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    const-string v3, "Categories:"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 133
    const v3, 0x7f060003

    const/4 v4, 0x0

    new-instance v5, Ljiqqa/recipe/MainActivity$3;

    invoke-direct {v5, p0}, Ljiqqa/recipe/MainActivity$3;-><init>(Ljiqqa/recipe/MainActivity;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 145
    const-string v3, "Cancel"

    new-instance v4, Ljiqqa/recipe/MainActivity$4;

    invoke-direct {v4, p0}, Ljiqqa/recipe/MainActivity$4;-><init>(Ljiqqa/recipe/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 153
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Ljiqqa/recipe/MainActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Ljiqqa/recipe/MainActivity;->getPrefs()V

    .line 55
    const v1, 0x7f0a0024

    invoke-virtual {p0, v1}, Ljiqqa/recipe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljiqqa/recipe/MainActivity;->rCount:Landroid/widget/TextView;

    .line 57
    new-instance v1, Ljiqqa/recipe/RecipeDBAdapter;

    invoke-direct {v1, p0}, Ljiqqa/recipe/RecipeDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ljiqqa/recipe/MainActivity;->db:Ljiqqa/recipe/RecipeDBAdapter;

    .line 58
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v1}, Ljiqqa/recipe/RecipeDBAdapter;->open()Ljiqqa/recipe/RecipeDBAdapter;

    .line 59
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v1}, Ljiqqa/recipe/RecipeDBAdapter;->getRecipeCount()I

    move-result v0

    .line 60
    .local v0, counts:I
    const-string v1, "My Recipe"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Database Count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->rCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v1}, Ljiqqa/recipe/RecipeDBAdapter;->close()V

    .line 64
    const v1, 0x7f0a0022

    invoke-virtual {p0, v1}, Ljiqqa/recipe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Ljiqqa/recipe/MainActivity;->btnAddRecipe:Landroid/widget/ImageButton;

    .line 65
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->btnAddRecipe:Landroid/widget/ImageButton;

    new-instance v2, Ljiqqa/recipe/MainActivity$1;

    invoke-direct {v2, p0}, Ljiqqa/recipe/MainActivity$1;-><init>(Ljiqqa/recipe/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0a0023

    invoke-virtual {p0, v1}, Ljiqqa/recipe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Ljiqqa/recipe/MainActivity;->btnViewRecipes:Landroid/widget/ImageButton;

    .line 74
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->btnViewRecipes:Landroid/widget/ImageButton;

    new-instance v2, Ljiqqa/recipe/MainActivity$2;

    invoke-direct {v2, p0}, Ljiqqa/recipe/MainActivity$2;-><init>(Ljiqqa/recipe/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 101
    invoke-virtual {p0}, Ljiqqa/recipe/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 102
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 103
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 110
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljiqqa/recipe/MainPrefs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ljiqqa/recipe/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x7f0a0038
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    invoke-direct {p0}, Ljiqqa/recipe/MainActivity;->getPrefs()V

    .line 91
    new-instance v1, Ljiqqa/recipe/RecipeDBAdapter;

    invoke-direct {v1, p0}, Ljiqqa/recipe/RecipeDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ljiqqa/recipe/MainActivity;->db:Ljiqqa/recipe/RecipeDBAdapter;

    .line 92
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v1}, Ljiqqa/recipe/RecipeDBAdapter;->open()Ljiqqa/recipe/RecipeDBAdapter;

    .line 93
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v1}, Ljiqqa/recipe/RecipeDBAdapter;->getRecipeCount()I

    move-result v0

    .line 94
    .local v0, counts:I
    const-string v1, "My Recipe"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Database Count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->rCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Ljiqqa/recipe/MainActivity;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v1}, Ljiqqa/recipe/RecipeDBAdapter;->close()V

    .line 97
    return-void
.end method
