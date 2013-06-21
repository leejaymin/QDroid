.class public Lcom/fleapapa/helper/CallBursts$BurstAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CallBursts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallBursts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BurstAdapter"
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

.field final synthetic this$0:Lcom/fleapapa/helper/CallBursts;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallBursts;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    .local p0, this:Lcom/fleapapa/helper/CallBursts$BurstAdapter;,"Lcom/fleapapa/helper/CallBursts$BurstAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallBursts;

    .line 166
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 167
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/fleapapa/helper/CallBursts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/fleapapa/helper/CallBursts$BurstAdapter;,"Lcom/fleapapa/helper/CallBursts$BurstAdapter<TT;>;"
    const v11, 0x7f080016

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 170
    iget-object v6, p0, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v6, v6, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v6, p1}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallBursts$Burstx;

    .line 171
    .local v1, burstx:Lcom/fleapapa/helper/CallBursts$Burstx;
    iget-object v0, v1, Lcom/fleapapa/helper/CallBursts$Burstx;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 172
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    sget-object v6, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v7, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    invoke-virtual {v6, v7}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v4

    .line 173
    .local v4, ue:Lcom/fleapapa/helper/CallPapa$UE;
    if-nez v4, :cond_1

    const-string v6, "???"

    move-object v3, v6

    .line 174
    .local v3, name:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    move-object v2, p2

    :goto_1
    check-cast v2, Landroid/widget/LinearLayout;

    .line 175
    .local v2, ll:Landroid/widget/LinearLayout;
    const v6, 0x7f080012

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-boolean v7, v0, Lcom/fleapapa/helper/CallPapa$Burst;->selected:Z

    if-eqz v7, :cond_3

    move v7, v10

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    const v6, 0x7f080011

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    sget-object v7, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v7, v7, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    if-ne p1, v7, :cond_4

    move v7, v10

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    const v6, 0x7f080013

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallBursts;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Burst;->duration()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/fleapapa/util/MyUtil;->timeLen(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-byte v7, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v7, :cond_5

    move v7, v10

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    const v6, 0x7f080014

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-byte v7, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallBursts;

    const v8, 0x7f060107

    invoke-virtual {v7, v8}, Lcom/fleapapa/helper/CallBursts;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v6, p0, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-wide v7, v0, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    invoke-static {v6, v7, v8}, Lcom/fleapapa/util/MyUtil;->timeAgo(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, when:Ljava/lang/String;
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 185
    iget-object v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    .line 186
    :cond_0
    const v6, 0x7f080015

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0           #this:Lcom/fleapapa/helper/CallBursts$BurstAdapter;,"Lcom/fleapapa/helper/CallBursts$BurstAdapter<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iput-object v2, v1, Lcom/fleapapa/helper/CallBursts$Burstx;->ll:Landroid/widget/LinearLayout;

    return-object v2

    .line 173
    .end local v2           #ll:Landroid/widget/LinearLayout;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #when:Ljava/lang/String;
    .restart local p0       #this:Lcom/fleapapa/helper/CallBursts$BurstAdapter;,"Lcom/fleapapa/helper/CallBursts$BurstAdapter<TT;>;"
    :cond_1
    iget-object v6, v4, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    move-object v3, v6

    goto/16 :goto_0

    .line 174
    .restart local v3       #name:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move-object v2, v6

    goto/16 :goto_1

    .restart local v2       #ll:Landroid/widget/LinearLayout;
    :cond_3
    move v7, v9

    .line 175
    goto/16 :goto_2

    :cond_4
    move v7, v9

    .line 176
    goto/16 :goto_3

    .line 179
    :cond_5
    const/16 v7, 0x8

    goto :goto_4

    .line 180
    :cond_6
    iget-object v7, v0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    goto :goto_5

    :cond_7
    const-string v7, ""

    goto :goto_5
.end method
