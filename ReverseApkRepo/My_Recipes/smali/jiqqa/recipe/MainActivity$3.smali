.class Ljiqqa/recipe/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/MainActivity;->recipeDialog()V
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
    iput-object p1, p0, Ljiqqa/recipe/MainActivity$3;->this$0:Ljiqqa/recipe/MainActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    iget-object v2, p0, Ljiqqa/recipe/MainActivity$3;->this$0:Ljiqqa/recipe/MainActivity;

    invoke-virtual {v2}, Ljiqqa/recipe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, items:[Ljava/lang/String;
    aget-object v2, v0, p2

    sput-object v2, Ljiqqa/recipe/MainActivity;->selectedItem:Ljava/lang/String;

    .line 139
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ljiqqa/recipe/MainActivity$3;->this$0:Ljiqqa/recipe/MainActivity;

    const-class v3, Ljiqqa/recipe/Main;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, selIntent:Landroid/content/Intent;
    const-string v2, "theCat"

    sget-object v3, Ljiqqa/recipe/MainActivity;->selectedItem:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Ljiqqa/recipe/MainActivity$3;->this$0:Ljiqqa/recipe/MainActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljiqqa/recipe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 143
    return-void
.end method
