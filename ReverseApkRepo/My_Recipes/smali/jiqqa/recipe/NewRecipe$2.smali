.class Ljiqqa/recipe/NewRecipe$2;
.super Ljava/lang/Object;
.source "NewRecipe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/NewRecipe;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljiqqa/recipe/NewRecipe;


# direct methods
.method constructor <init>(Ljiqqa/recipe/NewRecipe;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    iget-object v0, v0, Ljiqqa/recipe/NewRecipe;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, tt:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    iget-object v0, v0, Ljiqqa/recipe/NewRecipe;->CategorySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, tc:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    iget-object v0, v0, Ljiqqa/recipe/NewRecipe;->txtServes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, ts:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    iget-object v0, v0, Ljiqqa/recipe/NewRecipe;->txtIngredients:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, ti:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    iget-object v0, v0, Ljiqqa/recipe/NewRecipe;->txtInstructions:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, tii:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    #getter for: Ljiqqa/recipe/NewRecipe;->theImage:Ljava/lang/String;
    invoke-static {v0}, Ljiqqa/recipe/NewRecipe;->access$0(Ljiqqa/recipe/NewRecipe;)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, timg:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, all:Ljava/lang/String;
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    new-instance v8, Ljiqqa/recipe/RecipeDBAdapter;

    iget-object v9, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    invoke-virtual {v9}, Ljiqqa/recipe/NewRecipe;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Ljiqqa/recipe/RecipeDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Ljiqqa/recipe/NewRecipe;->db:Ljiqqa/recipe/RecipeDBAdapter;

    .line 100
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    iget-object v0, v0, Ljiqqa/recipe/NewRecipe;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual {v0}, Ljiqqa/recipe/RecipeDBAdapter;->open()Ljiqqa/recipe/RecipeDBAdapter;

    .line 101
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    iget-object v0, v0, Ljiqqa/recipe/NewRecipe;->db:Ljiqqa/recipe/RecipeDBAdapter;

    invoke-virtual/range {v0 .. v6}, Ljiqqa/recipe/RecipeDBAdapter;->enterRecipe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 102
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    invoke-virtual {v0}, Ljiqqa/recipe/NewRecipe;->clearFields()V

    .line 103
    iget-object v0, p0, Ljiqqa/recipe/NewRecipe$2;->this$0:Ljiqqa/recipe/NewRecipe;

    invoke-virtual {v0}, Ljiqqa/recipe/NewRecipe;->finish()V

    .line 104
    return-void
.end method
