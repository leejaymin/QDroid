.class Ljiqqa/recipe/NewRecipe$3;
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
    iput-object p1, p0, Ljiqqa/recipe/NewRecipe$3;->this$0:Ljiqqa/recipe/NewRecipe;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljiqqa/recipe/NewRecipe$3;->this$0:Ljiqqa/recipe/NewRecipe;

    const-class v2, Ljiqqa/recipe/AddIng;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, newIngre:Landroid/content/Intent;
    iget-object v1, p0, Ljiqqa/recipe/NewRecipe$3;->this$0:Ljiqqa/recipe/NewRecipe;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljiqqa/recipe/NewRecipe;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    return-void
.end method
