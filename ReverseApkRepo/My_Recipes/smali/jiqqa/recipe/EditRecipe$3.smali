.class Ljiqqa/recipe/EditRecipe$3;
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
    iput-object p1, p0, Ljiqqa/recipe/EditRecipe$3;->this$0:Ljiqqa/recipe/EditRecipe;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Ljiqqa/recipe/EditRecipe$3;->this$0:Ljiqqa/recipe/EditRecipe;

    invoke-virtual {v0}, Ljiqqa/recipe/EditRecipe;->finish()V

    .line 138
    return-void
.end method
