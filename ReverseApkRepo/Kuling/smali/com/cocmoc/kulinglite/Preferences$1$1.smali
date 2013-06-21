.class Lcom/cocmoc/kulinglite/Preferences$1$1;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Preferences$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cocmoc/kulinglite/Preferences$1;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Preferences$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences$1$1;->this$1:Lcom/cocmoc/kulinglite/Preferences$1;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, myIntent:Landroid/content/Intent;
    const-string v1, "com.cocmoc.kulinglite"

    const-string v2, "com.cocmoc.kulinglite.InfoTabs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$1$1;->this$1:Lcom/cocmoc/kulinglite/Preferences$1;

    #getter for: Lcom/cocmoc/kulinglite/Preferences$1;->this$0:Lcom/cocmoc/kulinglite/Preferences;
    invoke-static {v1}, Lcom/cocmoc/kulinglite/Preferences$1;->access$0(Lcom/cocmoc/kulinglite/Preferences$1;)Lcom/cocmoc/kulinglite/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cocmoc/kulinglite/Preferences;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
