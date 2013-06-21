.class Lcom/wareone/tappmt/TapPMT$19;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->_getTemplate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$19;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "pos"

    .prologue
    const-string v4, "_id"

    .line 1262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$19;->this$0:Lcom/wareone/tappmt/TapPMT;

    const-class v2, Lcom/wareone/tappmt/Transaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1263
    .local v0, it:Landroid/content/Intent;
    const-string v1, "ACTION"

    const v2, 0x7f09005b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1264
    const-string v2, "MODE"

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$19;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_templates:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/TapPMT;->access$24(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "mode"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1265
    const-string v1, "_id"

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1266
    const-string v2, "TEMPLATE_ID"

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$19;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_templates:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/TapPMT;->access$24(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "_id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1267
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$19;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/TapPMT;->startActivity(Landroid/content/Intent;)V

    .line 1269
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1270
    return-void
.end method
