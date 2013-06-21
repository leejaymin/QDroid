.class public Ljiqqa/recipe/EditRecipe;
.super Landroid/app/Activity;
.source "EditRecipe.java"


# static fields
.field private static final ADD_ING:I

.field static catID:I

.field private static theID:Ljava/lang/Long;


# instance fields
.field CategorySpinner:Landroid/widget/Spinner;

.field S1:Landroid/widget/Spinner;

.field addImage:Landroid/widget/ImageView;

.field backgroundPref:Ljava/lang/String;

.field btnAdd:Landroid/widget/Button;

.field btnCancel:Landroid/widget/Button;

.field btnSave:Landroid/widget/Button;

.field db:Ljiqqa/recipe/RecipeDBAdapter;

.field llBg:Landroid/widget/LinearLayout;

.field pkg:Ljava/lang/String;

.field txtIngredients:Landroid/widget/TextView;

.field txtInstructions:Landroid/widget/TextView;

.field txtServes:Landroid/widget/TextView;

.field txtTitle:Landroid/widget/TextView;

.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    sput v0, Ljiqqa/recipe/EditRecipe;->catID:I

    .line 32
    const/4 v0, 0x0

    sput-object v0, Ljiqqa/recipe/EditRecipe;->theID:Ljava/lang/Long;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const-string v0, "jiqqa.recipe"

    iput-object v0, p0, Ljiqqa/recipe/EditRecipe;->pkg:Ljava/lang/String;

    .line 29
    const-string v0, "drawable"

    iput-object v0, p0, Ljiqqa/recipe/EditRecipe;->type:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$0()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljiqqa/recipe/EditRecipe;->theID:Ljava/lang/Long;

    return-object v0
.end method

.method private getPrefs()V
    .locals 6

    .prologue
    .line 180
    invoke-virtual {p0}, Ljiqqa/recipe/EditRecipe;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "prefBG"

    const-string v2, "bg_white_stripes"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljiqqa/recipe/EditRecipe;->backgroundPref:Ljava/lang/String;

    .line 182
    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ljiqqa/recipe/EditRecipe;->llBg:Landroid/widget/LinearLayout;

    .line 183
    iget-object v1, p0, Ljiqqa/recipe/EditRecipe;->llBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljiqqa/recipe/EditRecipe;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Ljiqqa/recipe/EditRecipe;->backgroundPref:Ljava/lang/String;

    iget-object v4, p0, Ljiqqa/recipe/EditRecipe;->type:Ljava/lang/String;

    iget-object v5, p0, Ljiqqa/recipe/EditRecipe;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 184
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const-string v8, "|"

    const-string v7, " "

    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 156
    .local v3, extras:Landroid/os/Bundle;
    if-nez p2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    const-string v4, "ingredient"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, Ringredients:Ljava/lang/String;
    const-string v4, "amount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, Ramount:Ljava/lang/String;
    const-string v4, "measurement"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, Rmeasurement:Ljava/lang/String;
    const-string v4, "Returned Values"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v4, p0, Ljiqqa/recipe/EditRecipe;->txtIngredients:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v8, 0x7f030003

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->setContentView(I)V

    .line 40
    const v8, 0x7f0a0013

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->txtTitle:Landroid/widget/TextView;

    .line 41
    const v8, 0x7f0a0017

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->txtServes:Landroid/widget/TextView;

    .line 42
    const v8, 0x7f0a001c

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->txtIngredients:Landroid/widget/TextView;

    .line 43
    const v8, 0x7f0a001e

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->txtInstructions:Landroid/widget/TextView;

    .line 44
    const v8, 0x7f0a001b

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->btnAdd:Landroid/widget/Button;

    .line 45
    const v8, 0x7f0a0020

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->btnSave:Landroid/widget/Button;

    .line 46
    const v8, 0x7f0a001f

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->btnCancel:Landroid/widget/Button;

    .line 47
    const v8, 0x7f0a0007

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->S1:Landroid/widget/Spinner;

    .line 48
    const v8, 0x7f0a0015

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->CategorySpinner:Landroid/widget/Spinner;

    .line 49
    const v8, 0x7f0a0011

    invoke-virtual {p0, v8}, Ljiqqa/recipe/EditRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Ljiqqa/recipe/EditRecipe;->addImage:Landroid/widget/ImageView;

    .line 55
    const v8, 0x7f060003

    const v9, 0x1090008

    .line 54
    invoke-static {p0, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 56
    .local v6, categoryAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v8, 0x1090009

    invoke-virtual {v6, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 57
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->CategorySpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 59
    invoke-virtual {p0}, Ljiqqa/recipe/EditRecipe;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 60
    .local v7, extras:Landroid/os/Bundle;
    const-string v8, "_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 61
    .local v1, _id:Ljava/lang/Long;
    const-string v8, "_title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, _title:Ljava/lang/String;
    const-string v8, "_category"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, _category:Ljava/lang/String;
    const-string v8, "_serves"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, _serves:Ljava/lang/String;
    const-string v8, "_ingredients"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, _ingredients:Ljava/lang/String;
    const-string v8, "_instructions"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, _instructions:Ljava/lang/String;
    const-string v8, "All"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    const/4 v8, 0x0

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    .line 97
    :goto_0
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->txtServes:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->txtIngredients:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->txtInstructions:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->CategorySpinner:Landroid/widget/Spinner;

    sget v9, Ljiqqa/recipe/EditRecipe;->catID:I

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 102
    sput-object v1, Ljiqqa/recipe/EditRecipe;->theID:Ljava/lang/Long;

    .line 104
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->btnSave:Landroid/widget/Button;

    new-instance v9, Ljiqqa/recipe/EditRecipe$1;

    invoke-direct {v9, p0}, Ljiqqa/recipe/EditRecipe$1;-><init>(Ljiqqa/recipe/EditRecipe;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->btnAdd:Landroid/widget/Button;

    new-instance v9, Ljiqqa/recipe/EditRecipe$2;

    invoke-direct {v9, p0}, Ljiqqa/recipe/EditRecipe$2;-><init>(Ljiqqa/recipe/EditRecipe;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->btnCancel:Landroid/widget/Button;

    new-instance v9, Ljiqqa/recipe/EditRecipe$3;

    invoke-direct {v9, p0}, Ljiqqa/recipe/EditRecipe$3;-><init>(Ljiqqa/recipe/EditRecipe;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void

    .line 69
    :cond_0
    const-string v8, "Appetizers and Snacks"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 70
    const/4 v8, 0x1

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    goto :goto_0

    .line 72
    :cond_1
    const-string v8, "Bread"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 73
    const/4 v8, 0x2

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    goto :goto_0

    .line 75
    :cond_2
    const-string v8, "Breakfast and Brunch"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 76
    const/4 v8, 0x3

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    goto :goto_0

    .line 78
    :cond_3
    const-string v8, "Desserts"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 79
    const/4 v8, 0x4

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    goto :goto_0

    .line 81
    :cond_4
    const-string v8, "Drinks"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 82
    const/4 v8, 0x5

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    goto :goto_0

    .line 84
    :cond_5
    const-string v8, "Main Dish"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 85
    const/4 v8, 0x6

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    goto/16 :goto_0

    .line 87
    :cond_6
    const-string v8, "Salad"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 88
    const/4 v8, 0x7

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    goto/16 :goto_0

    .line 90
    :cond_7
    const-string v8, "Side Dish"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 91
    const/16 v8, 0x8

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    goto/16 :goto_0

    .line 93
    :cond_8
    const-string v8, "Soups, Stews and Chili"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 94
    const/16 v8, 0x9

    sput v8, Ljiqqa/recipe/EditRecipe;->catID:I

    goto/16 :goto_0

    .line 96
    :cond_9
    iget-object v8, p0, Ljiqqa/recipe/EditRecipe;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "i"
    .parameter "event"

    .prologue
    .line 172
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 173
    invoke-virtual {p0}, Ljiqqa/recipe/EditRecipe;->finish()V

    .line 175
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    invoke-direct {p0}, Ljiqqa/recipe/EditRecipe;->getPrefs()V

    .line 148
    return-void
.end method
