.class public Lcom/fleapapa/helper/CallMan$BurstAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CallMan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallMan;
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

.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallMan;)V
    .locals 1
    .parameter

    .prologue
    .line 831
    .local p0, this:Lcom/fleapapa/helper/CallMan$BurstAdapter;,"Lcom/fleapapa/helper/CallMan$BurstAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 829
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 830
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/fleapapa/helper/CallMan;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/fleapapa/helper/CallMan$BurstAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 833
    .local p0, this:Lcom/fleapapa/helper/CallMan$BurstAdapter;,"Lcom/fleapapa/helper/CallMan$BurstAdapter<TT;>;"
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fleapapa/helper/CallMan$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallMan;

    #getter for: Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;
    invoke-static {v7}, Lcom/fleapapa/helper/CallMan;->access$0(Lcom/fleapapa/helper/CallMan;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".getView: position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/CallMan$BurstAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 835
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    sget-object v5, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v6, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/CallPapa;->getUE(I)Lcom/fleapapa/helper/CallPapa$UE;

    move-result-object v3

    .line 836
    .local v3, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->uid:I

    sget v6, Lcom/fleapapa/util/My;->uid:I

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    move-object v2, v5

    .line 837
    .local v2, name:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_3

    move-object v1, p2

    :goto_1
    check-cast v1, Landroid/widget/LinearLayout;

    .line 838
    .local v1, ll:Landroid/widget/LinearLayout;
    const v5, 0x7f080012

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    const v5, 0x7f080013

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    const v5, 0x7f080016

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Burst;->duration()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/fleapapa/util/MyUtil;->timeLen(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    const v5, 0x7f080016

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-byte v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v5, :cond_4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 842
    const v5, 0x7f080014

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-byte v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallMan;

    const v6, 0x7f060107

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$BurstAdapter;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-wide v6, v0, Lcom/fleapapa/helper/CallPapa$Burst;->stime:J

    invoke-static {v5, v6, v7}, Lcom/fleapapa/util/MyUtil;->timeAgo(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v4

    .line 846
    .local v4, when:Ljava/lang/String;
    iget-object v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 847
    iget-object v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->rxReport:Ljava/lang/String;

    .line 848
    :cond_0
    const v5, 0x7f080015

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0           #this:Lcom/fleapapa/helper/CallMan$BurstAdapter;,"Lcom/fleapapa/helper/CallMan$BurstAdapter<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    const v5, 0x7f080011

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-boolean v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->heard:Z

    if-nez v5, :cond_1

    .line 853
    const v5, 0x7f080013

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 854
    const v5, 0x7f080014

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 855
    const v5, 0x7f080016

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 857
    :cond_1
    return-object v1

    .line 836
    .end local v1           #ll:Landroid/widget/LinearLayout;
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #when:Ljava/lang/String;
    .restart local p0       #this:Lcom/fleapapa/helper/CallMan$BurstAdapter;,"Lcom/fleapapa/helper/CallMan$BurstAdapter<TT;>;"
    .restart local p1
    :cond_2
    iget-object v5, v3, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    move-object v2, v5

    goto/16 :goto_0

    .line 837
    .restart local v2       #name:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$BurstAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v1, v5

    goto/16 :goto_1

    .line 841
    .end local p1
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    :cond_4
    const/16 v5, 0x8

    goto/16 :goto_2

    .line 842
    :cond_5
    iget-object v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/fleapapa/helper/CallPapa$Burst;->text:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string v5, ""

    goto :goto_3
.end method
