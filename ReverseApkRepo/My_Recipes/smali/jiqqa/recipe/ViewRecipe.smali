.class public Ljiqqa/recipe/ViewRecipe;
.super Landroid/app/Activity;
.source "ViewRecipe.java"


# static fields
.field private static final CANCELED:I = 0x3


# instance fields
.field addImage:Landroid/widget/ImageView;

.field backgroundPref:Ljava/lang/String;

.field ingredientsLabel:Landroid/widget/TextView;

.field instructionsLabel:Landroid/widget/TextView;

.field llBg:Landroid/widget/LinearLayout;

.field private mRowId:Ljava/lang/Long;

.field pkg:Ljava/lang/String;

.field servesLabel:Landroid/widget/TextView;

.field titleLabel:Landroid/widget/TextView;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-string v0, "jiqqa.recipe"

    iput-object v0, p0, Ljiqqa/recipe/ViewRecipe;->pkg:Ljava/lang/String;

    .line 28
    const-string v0, "drawable"

    iput-object v0, p0, Ljiqqa/recipe/ViewRecipe;->type:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private getPrefs()V
    .locals 6

    .prologue
    .line 90
    invoke-virtual {p0}, Ljiqqa/recipe/ViewRecipe;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "prefBG"

    const-string v2, "bg_white_stripes"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljiqqa/recipe/ViewRecipe;->backgroundPref:Ljava/lang/String;

    .line 92
    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Ljiqqa/recipe/ViewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ljiqqa/recipe/ViewRecipe;->llBg:Landroid/widget/LinearLayout;

    .line 93
    iget-object v1, p0, Ljiqqa/recipe/ViewRecipe;->llBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljiqqa/recipe/ViewRecipe;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Ljiqqa/recipe/ViewRecipe;->backgroundPref:Ljava/lang/String;

    iget-object v4, p0, Ljiqqa/recipe/ViewRecipe;->type:Ljava/lang/String;

    iget-object v5, p0, Ljiqqa/recipe/ViewRecipe;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 94
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v7, 0x7f030009

    invoke-virtual {p0, v7}, Ljiqqa/recipe/ViewRecipe;->setContentView(I)V

    .line 36
    const v7, 0x7f0a0030

    invoke-virtual {p0, v7}, Ljiqqa/recipe/ViewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Ljiqqa/recipe/ViewRecipe;->titleLabel:Landroid/widget/TextView;

    .line 37
    const v7, 0x7f0a0032

    invoke-virtual {p0, v7}, Ljiqqa/recipe/ViewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Ljiqqa/recipe/ViewRecipe;->servesLabel:Landroid/widget/TextView;

    .line 38
    const v7, 0x7f0a0034

    invoke-virtual {p0, v7}, Ljiqqa/recipe/ViewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Ljiqqa/recipe/ViewRecipe;->ingredientsLabel:Landroid/widget/TextView;

    .line 39
    const v7, 0x7f0a0037

    invoke-virtual {p0, v7}, Ljiqqa/recipe/ViewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Ljiqqa/recipe/ViewRecipe;->instructionsLabel:Landroid/widget/TextView;

    .line 40
    const v7, 0x7f0a0011

    invoke-virtual {p0, v7}, Ljiqqa/recipe/ViewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Ljiqqa/recipe/ViewRecipe;->addImage:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p0}, Ljiqqa/recipe/ViewRecipe;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 44
    const-string v7, "_title"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, title:Ljava/lang/String;
    const-string v7, "_serves"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, serves:Ljava/lang/String;
    const-string v7, "_ingredients"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, ingredients:Ljava/lang/String;
    const-string v7, "_instructions"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, instructions:Ljava/lang/String;
    const-string v7, "_id"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Ljiqqa/recipe/ViewRecipe;->mRowId:Ljava/lang/Long;

    .line 49
    const-string v7, "_image"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, image:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 52
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 53
    .local v4, myBitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Ljiqqa/recipe/ViewRecipe;->addImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v7, p0, Ljiqqa/recipe/ViewRecipe;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v7, p0, Ljiqqa/recipe/ViewRecipe;->servesLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v7, p0, Ljiqqa/recipe/ViewRecipe;->ingredientsLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v7, p0, Ljiqqa/recipe/ViewRecipe;->instructionsLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .end local v1           #image:Ljava/lang/String;
    .end local v2           #ingredients:Ljava/lang/String;
    .end local v3           #instructions:Ljava/lang/String;
    .end local v4           #myBitmap:Landroid/graphics/Bitmap;
    .end local v5           #serves:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Ljiqqa/recipe/ViewRecipe;->getPrefs()V

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "i"
    .parameter "event"

    .prologue
    .line 75
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "returnStatus"

    const-string v3, "CANCEL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v1, mIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Ljiqqa/recipe/ViewRecipe;->setResult(ILandroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Ljiqqa/recipe/ViewRecipe;->finish()V

    .line 85
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    invoke-direct {p0}, Ljiqqa/recipe/ViewRecipe;->getPrefs()V

    .line 70
    return-void
.end method
