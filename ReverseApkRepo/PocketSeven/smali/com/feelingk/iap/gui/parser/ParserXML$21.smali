.class Lcom/feelingk/iap/gui/parser/ParserXML$21;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$21;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 3936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 3940
    const-string v6, "SETTING_VIEW"

    .line 3941
    .local v6, strMsg:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3942
    .local v3, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3943
    const-string v7, "com.skt.skaf.A000Z00040"

    const-string v8, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3944
    const-string v7, "COLLAB_ACTION"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3945
    const-string v7, "com.skt.skaf.COL.URI"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3946
    const-string v7, "com.skt.skaf.COL.REQUESTER"

    const-string v8, "A000Z00040"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3950
    iget-object v7, p0, Lcom/feelingk/iap/gui/parser/ParserXML$21;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$3(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3951
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 3952
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 3953
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 3954
    .local v4, nSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 3962
    iget-object v7, p0, Lcom/feelingk/iap/gui/parser/ParserXML$21;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z
    invoke-static {v7}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3963
    iget-object v7, p0, Lcom/feelingk/iap/gui/parser/ParserXML$21;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$3(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3967
    :goto_1
    return-void

    .line 3955
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3956
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.skt.skaf.A000Z00040"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 3957
    iget-object v7, p0, Lcom/feelingk/iap/gui/parser/ParserXML$21;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v8, 0x1

    #setter for: Lcom/feelingk/iap/gui/parser/ParserXML;->tStoreFlag:Z
    invoke-static {v7, v8}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$23(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    .line 3954
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3965
    :cond_2
    iget-object v7, p0, Lcom/feelingk/iap/gui/parser/ParserXML$21;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    #getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;
    invoke-static {v7}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$24(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;->onOtpTstoreButtonClick()V

    goto :goto_1
.end method
