.class Ljiqqa/recipe/NewRecipe$5;
.super Ljava/lang/Object;
.source "NewRecipe.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/NewRecipe;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Ljiqqa/recipe/NewRecipe$5;->this$0:Ljiqqa/recipe/NewRecipe;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 151
    return-void
.end method
