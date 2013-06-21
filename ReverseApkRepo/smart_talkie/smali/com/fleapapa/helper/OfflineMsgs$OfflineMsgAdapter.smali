.class public Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OfflineMsgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/OfflineMsgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OfflineMsgAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/fleapapa/helper/OfflineMsgs;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/OfflineMsgs;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    .local p0, this:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;,"Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->this$0:Lcom/fleapapa/helper/OfflineMsgs;

    .line 82
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 83
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/fleapapa/helper/OfflineMsgs;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 86
    .local p0, this:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;,"Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter<TT;>;"
    iget-object v5, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->this$0:Lcom/fleapapa/helper/OfflineMsgs;

    iget-object v5, v5, Lcom/fleapapa/helper/OfflineMsgs;->adapter:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;

    invoke-virtual {v5, p1}, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;

    .line 87
    .local v3, omsg:Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
    sget-object v5, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v6, v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->uid:I

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v4

    .line 89
    .local v4, ue:Lcom/fleapapa/helper/CallPapa$UE;
    if-nez p2, :cond_1

    .line 90
    iget-object v5, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030019

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    .local v1, ll:Landroid/widget/LinearLayout;
    :goto_0
    const/4 v2, 0x0

    .line 95
    .local v2, msg:Ljava/lang/String;
    iget v5, v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->cid:I

    if-eqz v5, :cond_0

    .line 96
    iget-object v5, v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    if-eqz v5, :cond_0

    .line 97
    iget-object v5, v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-byte v5, v5, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v5, :cond_0

    .line 98
    iget-object v5, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->this$0:Lcom/fleapapa/helper/OfflineMsgs;

    const v6, 0x7f060107

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/OfflineMsgs;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_0
    const v5, 0x7f08010c

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v4, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v5, 0x7f08010e

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    move-object v6, v2

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v5, 0x7f08010d

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsgAdapter;->this$0:Lcom/fleapapa/helper/OfflineMsgs;

    iget-wide v7, v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->stime:J

    invoke-static {v6, v7, v8}, Lcom/fleapapa/util/MyUtil;->timeAgo(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->shown:Z

    .line 103
    return-object v1

    .line 92
    .end local v1           #ll:Landroid/widget/LinearLayout;
    .end local v2           #msg:Ljava/lang/String;
    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    .restart local v1       #ll:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 100
    .restart local v2       #msg:Ljava/lang/String;
    :cond_2
    iget-object v6, v3, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->msg:Ljava/lang/String;

    goto :goto_1
.end method
