.class Ljiqqa/recipe/NewRecipe$4;
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
    iput-object p1, p0, Ljiqqa/recipe/NewRecipe$4;->this$0:Ljiqqa/recipe/NewRecipe;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "returnStatus"

    const-string v3, "CANCEL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v1, mIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    iget-object v2, p0, Ljiqqa/recipe/NewRecipe$4;->this$0:Ljiqqa/recipe/NewRecipe;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljiqqa/recipe/NewRecipe;->setResult(ILandroid/content/Intent;)V

    .line 128
    iget-object v2, p0, Ljiqqa/recipe/NewRecipe$4;->this$0:Ljiqqa/recipe/NewRecipe;

    invoke-virtual {v2}, Ljiqqa/recipe/NewRecipe;->finish()V

    .line 129
    return-void
.end method
