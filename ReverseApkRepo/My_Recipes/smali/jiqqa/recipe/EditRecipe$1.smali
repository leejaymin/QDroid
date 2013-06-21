.class Ljiqqa/recipe/EditRecipe$1;
.super Ljava/lang/Object;
.source "EditRecipe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/EditRecipe;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljiqqa/recipe/EditRecipe;


# direct methods
.method constructor <init>(Ljiqqa/recipe/EditRecipe;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    iget-object v0, v0, Ljiqqa/recipe/EditRecipe;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, tt:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    iget-object v0, v0, Ljiqqa/recipe/EditRecipe;->CategorySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, tc:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    iget-object v0, v0, Ljiqqa/recipe/EditRecipe;->txtServes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, ts:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    iget-object v0, v0, Ljiqqa/recipe/EditRecipe;->txtIngredients:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, ti:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    iget-object v0, v0, Ljiqqa/recipe/EditRecipe;->txtInstructions:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, tii:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    iget-object v0, v0, Ljiqqa/recipe/EditRecipe;->addImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, timg:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    new-instance v1, Ljiqqa/recipe/RecipeDBAdapter;

    iget-object v2, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    invoke-virtual {v2}, Ljiqqa/recipe/EditRecipe;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljiqqa/recipe/RecipeDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Ljiqqa/recipe/EditRecipe;->db:Ljiqqa/recipe/RecipeDBAdapter;

    .line 116
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    iget-object v0, v0, Ljiqqa/recipe/EditRecipe;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v0}, Ljiqqa/recipe/RecipeDBAdapter;->open()Ljiqqa/recipe/RecipeDBAdapter;

    .line 117
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    iget-object v0, v0, Ljiqqa/recipe/EditRecipe;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-static {}, Ljiqqa/recipe/EditRecipe;->access$0()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual/range {v0 .. v8}, Ljiqqa/recipe/RecipeDBAdapter;->updateRecipe(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    iget-object v0, v0, Ljiqqa/recipe/EditRecipe;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v0}, Ljiqqa/recipe/RecipeDBAdapter;->close()V

    .line 119
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$1;->this$0:Ljiqqa/recipe/EditRecipe;

    invoke-virtual {v0}, Ljiqqa/recipe/EditRecipe;->finish()V

    .line 120
    return-void
.end method
