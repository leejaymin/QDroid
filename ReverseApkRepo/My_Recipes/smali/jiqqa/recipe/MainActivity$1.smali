.class Ljiqqa/recipe/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljiqqa/recipe/MainActivity;


# direct methods
.method constructor <init>(Ljiqqa/recipe/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/MainActivity$1;->this$0:Ljiqqa/recipe/MainActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljiqqa/recipe/MainActivity$1;->this$0:Ljiqqa/recipe/MainActivity;

    const-class v2, Ljiqqa/recipe/NewRecipe;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, newRecipe:Landroid/content/Intent;
    iget-object v1, p0, Ljiqqa/recipe/MainActivity$1;->this$0:Ljiqqa/recipe/MainActivity;

    invoke-virtual {v1, v0}, Ljiqqa/recipe/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
