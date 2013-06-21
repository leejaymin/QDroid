.class Ljiqqa/recipe/MainActivity$2;
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
    iput-object p1, p0, Ljiqqa/recipe/MainActivity$2;->this$0:Ljiqqa/recipe/MainActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Ljiqqa/recipe/MainActivity$2;->this$0:Ljiqqa/recipe/MainActivity;

    #calls: Ljiqqa/recipe/MainActivity;->recipeDialog()V
    invoke-static {v0}, Ljiqqa/recipe/MainActivity;->access$0(Ljiqqa/recipe/MainActivity;)V

    .line 81
    return-void
.end method
