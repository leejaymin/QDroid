.class Lcom/fleapapa/helper/CallMan$9;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$9;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 276
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->close()V

    .line 277
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$9;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallMan;->nCall()I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$9;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    if-eqz v0, :cond_1

    .line 279
    sget-object v0, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    const-string v1, "talks"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$9;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallMan;->finish()V

    goto :goto_0
.end method
