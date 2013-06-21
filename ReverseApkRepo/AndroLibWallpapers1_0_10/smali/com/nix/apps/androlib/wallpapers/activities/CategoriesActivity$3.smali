.class Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$3;
.super Ljava/lang/Thread;
.source "CategoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$3;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$3;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->loadCategories()V

    return-void
.end method
