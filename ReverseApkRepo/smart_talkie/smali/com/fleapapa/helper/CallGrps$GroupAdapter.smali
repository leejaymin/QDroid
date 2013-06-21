.class public Lcom/fleapapa/helper/CallGrps$GroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CallGrps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallGrps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupAdapter"
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

.field final synthetic this$0:Lcom/fleapapa/helper/CallGrps;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallGrps;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    .local p0, this:Lcom/fleapapa/helper/CallGrps$GroupAdapter;,"Lcom/fleapapa/helper/CallGrps$GroupAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->this$0:Lcom/fleapapa/helper/CallGrps;

    .line 149
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 147
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/fleapapa/helper/CallGrps;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallGrps$GroupAdapter;)Lcom/fleapapa/helper/CallGrps;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->this$0:Lcom/fleapapa/helper/CallGrps;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/fleapapa/helper/CallGrps$GroupAdapter;,"Lcom/fleapapa/helper/CallGrps$GroupAdapter<TT;>;"
    const v7, 0x7f080021

    const/4 v6, 0x0

    .line 152
    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Group;

    .line 153
    .local v0, grp:Lcom/fleapapa/helper/Group;
    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    check-cast v1, Landroid/widget/LinearLayout;

    .line 154
    .local v1, ll:Landroid/widget/LinearLayout;
    const v2, 0x7f08001f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->this$0:Lcom/fleapapa/helper/CallGrps;

    const v4, 0x7f0600f1

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/CallGrps;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;-><init>(Lcom/fleapapa/helper/CallGrps$GroupAdapter;Lcom/fleapapa/helper/Group;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-object v1

    .line 153
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .restart local v1       #ll:Landroid/widget/LinearLayout;
    :cond_1
    move v3, v6

    .line 156
    goto :goto_1
.end method
