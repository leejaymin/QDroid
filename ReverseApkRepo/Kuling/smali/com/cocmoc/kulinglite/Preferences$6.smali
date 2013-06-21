.class Lcom/cocmoc/kulinglite/Preferences$6;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Preferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Preferences;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Preferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences$6;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, myIntent:Landroid/content/Intent;
    const-string v1, "com.cocmoc.kulinglite"

    const-string v2, "com.cocmoc.kulinglite.StationSelector"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$6;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/cocmoc/kulinglite/Preferences;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    return-void
.end method
