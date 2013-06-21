.class Ljiqqa/recipe/EditRecipe$2;
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
    iput-object p1, p0, Ljiqqa/recipe/EditRecipe$2;->this$0:Ljiqqa/recipe/EditRecipe;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljiqqa/recipe/EditRecipe$2;->this$0:Ljiqqa/recipe/EditRecipe;

    const-class v2, Ljiqqa/recipe/AddIng;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, newIngre:Landroid/content/Intent;
    iget-object v1, p0, Ljiqqa/recipe/EditRecipe$2;->this$0:Ljiqqa/recipe/EditRecipe;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljiqqa/recipe/EditRecipe;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method
