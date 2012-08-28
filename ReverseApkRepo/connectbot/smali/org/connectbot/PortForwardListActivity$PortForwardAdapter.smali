.class Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PortForwardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/PortForwardListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PortForwardAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/connectbot/bean/PortForwardBean;",
        ">;"
    }
.end annotation


# instance fields
.field private portForwards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PortForwardBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/connectbot/PortForwardListActivity;


# direct methods
.method public constructor <init>(Lorg/connectbot/PortForwardListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PortForwardBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p3, portForwards:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/PortForwardBean;>;"
    iput-object p1, p0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;->this$0:Lorg/connectbot/PortForwardListActivity;

    .line 393
    const v0, 0x7f03000f

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 395
    iput-object p3, p0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;->portForwards:Ljava/util/List;

    .line 396
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 402
    if-nez p2, :cond_1

    .line 403
    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v2, v2, Lorg/connectbot/PortForwardListActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 405
    new-instance v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;-><init>(Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;)V

    .line 406
    .local v0, holder:Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    .line 407
    const v2, 0x1020015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    .line 409
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 413
    :goto_0
    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;->portForwards:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/bean/PortForwardBean;

    .line 414
    .local v1, pfb:Lorg/connectbot/bean/PortForwardBean;
    iget-object v2, v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/connectbot/bean/PortForwardBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v2, v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/connectbot/bean/PortForwardBean;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v2, v2, Lorg/connectbot/PortForwardListActivity;->hostBridge:Lorg/connectbot/service/TerminalBridge;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/connectbot/bean/PortForwardBean;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    iget-object v2, v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    iget-object v3, v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 419
    iget-object v2, v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    iget-object v3, v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 422
    :cond_0
    return-object p2

    .line 411
    .end local v0           #holder:Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;
    .end local v1           #pfb:Lorg/connectbot/bean/PortForwardBean;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;

    .restart local v0       #holder:Lorg/connectbot/PortForwardListActivity$PortForwardAdapter$ViewHolder;
    goto :goto_0
.end method
