.class public Ljiqqa/recipe/NewRecipe;
.super Landroid/app/Activity;
.source "NewRecipe.java"


# static fields
.field private static final ADD_ING:I = 0x0

.field private static final ADD_RECIPE_DIALOG:I = 0x0

.field private static final CANCELED:I = 0x3

.field private static final EDIT_RECIPE:I = 0x4

.field private static final NEW_RECIPE:I = 0x1

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

.field private currImageURI:Landroid/net/Uri;

.field db:Ljiqqa/recipe/RecipeDBAdapter;

.field llBg:Landroid/widget/LinearLayout;

.field pkg:Ljava/lang/String;

.field private theImage:Ljava/lang/String;

.field txtIngredients:Landroid/widget/TextView;

.field txtInstructions:Landroid/widget/TextView;

.field txtServes:Landroid/widget/TextView;

.field txtTitle:Landroid/widget/TextView;

.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Ljiqqa/recipe/NewRecipe;->theID:Ljava/lang/Long;

    .line 48
    const/4 v0, -0x1

    sput v0, Ljiqqa/recipe/NewRecipe;->catID:I

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Ljiqqa/recipe/NewRecipe;->theImage:Ljava/lang/String;

    .line 45
    const-string v0, "jiqqa.recipe"

    iput-object v0, p0, Ljiqqa/recipe/NewRecipe;->pkg:Ljava/lang/String;

    .line 46
    const-string v0, "drawable"

    iput-object v0, p0, Ljiqqa/recipe/NewRecipe;->type:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$0(Ljiqqa/recipe/NewRecipe;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe;->theImage:Ljava/lang/String;

    return-object v0
.end method

.method private getPrefs()V
    .locals 6

    .prologue
    .line 229
    invoke-virtual {p0}, Ljiqqa/recipe/NewRecipe;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "prefBG"

    const-string v2, "bg_white_stripes"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->backgroundPref:Ljava/lang/String;

    .line 231
    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->llBg:Landroid/widget/LinearLayout;

    .line 232
    iget-object v1, p0, Ljiqqa/recipe/NewRecipe;->llBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ljiqqa/recipe/NewRecipe;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Ljiqqa/recipe/NewRecipe;->backgroundPref:Ljava/lang/String;

    iget-object v4, p0, Ljiqqa/recipe/NewRecipe;->type:Ljava/lang/String;

    iget-object v5, p0, Ljiqqa/recipe/NewRecipe;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 233
    return-void
.end method


# virtual methods
.method public clearFields()V
    .locals 3

    .prologue
    const-string v2, ""

    .line 166
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe;->txtTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe;->CategorySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 168
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe;->txtServes:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe;->txtIngredients:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe;->txtInstructions:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "contentUri"

    .prologue
    const/4 v3, 0x0

    const-string v8, "_data"

    .line 238
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v8, v2, v0

    .local v2, proj:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 239
    invoke-virtual/range {v0 .. v5}, Ljiqqa/recipe/NewRecipe;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 244
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 245
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 247
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const-string v8, "|"

    const-string v7, " "

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 179
    .local v3, extras:Landroid/os/Bundle;
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 181
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 184
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Ljiqqa/recipe/NewRecipe;->currImageURI:Landroid/net/Uri;

    .line 185
    iget-object v4, p0, Ljiqqa/recipe/NewRecipe;->currImageURI:Landroid/net/Uri;

    invoke-virtual {p0, v4}, Ljiqqa/recipe/NewRecipe;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljiqqa/recipe/NewRecipe;->theImage:Ljava/lang/String;

    .line 186
    iget-object v4, p0, Ljiqqa/recipe/NewRecipe;->addImage:Landroid/widget/ImageView;

    iget-object v5, p0, Ljiqqa/recipe/NewRecipe;->currImageURI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 191
    :cond_0
    if-nez p2, :cond_1

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    const-string v4, "ingredient"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, Ringredients:Ljava/lang/String;
    const-string v4, "amount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, Ramount:Ljava/lang/String;
    const-string v4, "measurement"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
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

    .line 201
    iget-object v4, p0, Ljiqqa/recipe/NewRecipe;->txtIngredients:Landroid/widget/TextView;

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

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->setContentView(I)V

    .line 55
    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->txtTitle:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0a0017

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->txtServes:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0a001c

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->txtIngredients:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0a001e

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->txtInstructions:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0a001b

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->btnAdd:Landroid/widget/Button;

    .line 60
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->btnSave:Landroid/widget/Button;

    .line 61
    const v1, 0x7f0a001f

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->btnCancel:Landroid/widget/Button;

    .line 62
    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->S1:Landroid/widget/Spinner;

    .line 63
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->CategorySpinner:Landroid/widget/Spinner;

    .line 67
    const v1, 0x7f060003

    const v2, 0x1090008

    .line 66
    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 68
    .local v0, categoryAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 69
    iget-object v1, p0, Ljiqqa/recipe/NewRecipe;->CategorySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 72
    invoke-direct {p0}, Ljiqqa/recipe/NewRecipe;->getPrefs()V

    .line 74
    const v1, 0x7f0a0011

    invoke-virtual {p0, v1}, Ljiqqa/recipe/NewRecipe;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Ljiqqa/recipe/NewRecipe;->addImage:Landroid/widget/ImageView;

    .line 75
    iget-object v1, p0, Ljiqqa/recipe/NewRecipe;->addImage:Landroid/widget/ImageView;

    new-instance v2, Ljiqqa/recipe/NewRecipe$1;

    invoke-direct {v2, p0}, Ljiqqa/recipe/NewRecipe$1;-><init>(Ljiqqa/recipe/NewRecipe;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Ljiqqa/recipe/NewRecipe;->btnSave:Landroid/widget/Button;

    new-instance v2, Ljiqqa/recipe/NewRecipe$2;

    invoke-direct {v2, p0}, Ljiqqa/recipe/NewRecipe$2;-><init>(Ljiqqa/recipe/NewRecipe;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Ljiqqa/recipe/NewRecipe;->btnAdd:Landroid/widget/Button;

    new-instance v2, Ljiqqa/recipe/NewRecipe$3;

    invoke-direct {v2, p0}, Ljiqqa/recipe/NewRecipe$3;-><init>(Ljiqqa/recipe/NewRecipe;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Ljiqqa/recipe/NewRecipe;->btnCancel:Landroid/widget/Button;

    new-instance v2, Ljiqqa/recipe/NewRecipe$4;

    invoke-direct {v2, p0}, Ljiqqa/recipe/NewRecipe$4;-><init>(Ljiqqa/recipe/NewRecipe;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 135
    packed-switch p1, :pswitch_data_0

    move-object v2, v3

    .line 162
    :goto_0
    return-object v2

    .line 139
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 140
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030001

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, textEntryView:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 144
    const-string v3, "Add Ingredient"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 146
    const-string v3, "Cancel"

    new-instance v4, Ljiqqa/recipe/NewRecipe$5;

    invoke-direct {v4, p0}, Ljiqqa/recipe/NewRecipe$5;-><init>(Ljiqqa/recipe/NewRecipe;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 153
    const-string v3, "Add"

    new-instance v4, Ljiqqa/recipe/NewRecipe$6;

    invoke-direct {v4, p0}, Ljiqqa/recipe/NewRecipe$6;-><init>(Ljiqqa/recipe/NewRecipe;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "i"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 216
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "returnStatus"

    const-string v3, "CANCEL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v1, mIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v4, v1}, Ljiqqa/recipe/NewRecipe;->setResult(ILandroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Ljiqqa/recipe/NewRecipe;->finish()V

    .line 224
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_0
    return v4
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    invoke-direct {p0}, Ljiqqa/recipe/NewRecipe;->getPrefs()V

    .line 212
    return-void
.end method
