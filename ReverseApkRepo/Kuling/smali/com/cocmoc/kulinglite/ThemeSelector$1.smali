.class Lcom/cocmoc/kulinglite/ThemeSelector$1;
.super Ljava/lang/Object;
.source "ThemeSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/ThemeSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/ThemeSelector;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/ThemeSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/ThemeSelector$1;->this$0:Lcom/cocmoc/kulinglite/ThemeSelector;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, myIntent:Landroid/content/Intent;
    const-string v1, "com.cocmoc.kulinglite"

    const-string v2, "com.cocmoc.kulinglite.DownloadThemeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "INSTALLED_SKINS"

    invoke-static {}, Lcom/cocmoc/kulinglite/ThemeSelector;->access$0()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/cocmoc/kulinglite/ThemeSelector$1;->this$0:Lcom/cocmoc/kulinglite/ThemeSelector;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/cocmoc/kulinglite/ThemeSelector;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    return-void
.end method
