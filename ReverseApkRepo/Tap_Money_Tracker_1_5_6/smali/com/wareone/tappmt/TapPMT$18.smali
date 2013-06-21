.class Lcom/wareone/tappmt/TapPMT$18;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->_setFilter()V
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
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$18;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "pos"

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$18;->this$0:Lcom/wareone/tappmt/TapPMT;

    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$18;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_real_account:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$22(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    #setter for: Lcom/wareone/tappmt/TapPMT;->m_filter_account:J
    invoke-static {v1, v2, v3}, Lcom/wareone/tappmt/TapPMT;->access$23(Lcom/wareone/tappmt/TapPMT;J)V

    .line 1229
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$18;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v0}, Lcom/wareone/tappmt/TapPMT;->_refresh()V

    .line 1230
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1231
    return-void
.end method
