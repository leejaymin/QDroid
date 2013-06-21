.class public Lcom/fleapapa/helper/CallUes$BuddyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CallUes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallUes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuddyAdapter"
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

.field final synthetic this$0:Lcom/fleapapa/helper/CallUes;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallUes;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    .local p0, this:Lcom/fleapapa/helper/CallUes$BuddyAdapter;,"Lcom/fleapapa/helper/CallUes$BuddyAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 346
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 344
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/fleapapa/helper/CallUes;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter;)Lcom/fleapapa/helper/CallUes;
    .locals 1
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 349
    .local p0, this:Lcom/fleapapa/helper/CallUes$BuddyAdapter;,"Lcom/fleapapa/helper/CallUes$BuddyAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/helper/CallPapa$UE;

    .line 350
    .local v4, ue:Lcom/fleapapa/helper/CallPapa$UE;
    if-eqz p2, :cond_2

    move-object v3, p2

    :goto_0
    check-cast v3, Landroid/widget/LinearLayout;

    .line 351
    .local v3, ll:Landroid/widget/LinearLayout;
    const v5, 0x7f080050

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    iget v5, v4, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    invoke-static {v5}, Lcom/fleapapa/helper/Avatar;->avatar(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    const v5, 0x7f08000f

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v5, v4, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const v5, 0x7f080051

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v5, v4, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const v5, 0x7f080010

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v5, v4, Lcom/fleapapa/helper/CallPapa$UE;->city:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    const v5, 0x7f080052

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;

    const v6, 0x7f0600ee

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/CallUes;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v4, Lcom/fleapapa/helper/CallPapa$UE;->dist:I

    int-to-float v8, v8

    const/high16 v9, 0x447a

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const v5, 0x7f080053

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-wide v5, v4, Lcom/fleapapa/helper/CallPapa$UE;->atime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-wide v6, v4, Lcom/fleapapa/helper/CallPapa$UE;->atime:J

    invoke-static {v5, v6, v7}, Lcom/fleapapa/util/MyUtil;->timeAgo(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const v5, 0x7f08000e

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-boolean v5, v4, Lcom/fleapapa/helper/CallPapa$UE;->selected:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-boolean v5, v4, Lcom/fleapapa/helper/CallPapa$UE;->online:Z

    if-eqz v5, :cond_0

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->boldize(Landroid/view/ViewGroup;)V

    .line 361
    :cond_0
    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v5, v5, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move v2, v5

    .line 362
    .local v2, incall:Z
    :goto_3
    sget-object v5, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 364
    if-nez v2, :cond_7

    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;

    iget v5, v5, Lcom/fleapapa/helper/CallUes;->lmode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    const/4 v5, 0x1

    move v1, v5

    .line 365
    .local v1, deletable:Z
    :goto_5
    const v5, 0x7f080054

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    const v5, 0x7f080054

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v5, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;

    invoke-direct {v5, p0, v4}, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;-><init>(Lcom/fleapapa/helper/CallUes$BuddyAdapter;Lcom/fleapapa/helper/CallPapa$UE;)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    return-object v3

    .line 350
    .end local v1           #deletable:Z
    .end local v2           #incall:Z
    .end local v3           #ll:Landroid/widget/LinearLayout;
    .restart local p1
    :cond_2
    iget-object v5, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    goto/16 :goto_0

    .line 356
    .end local p1
    .restart local v3       #ll:Landroid/widget/LinearLayout;
    :cond_3
    const-string v5, ""

    goto :goto_1

    .line 357
    :cond_4
    const/4 v5, 0x4

    goto :goto_2

    .line 361
    :cond_5
    const/4 v5, 0x0

    move v2, v5

    goto :goto_3

    .line 362
    .restart local v2       #incall:Z
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 363
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v6, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v7, v4, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    goto :goto_4

    .line 364
    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    :cond_7
    const/4 v5, 0x0

    move v1, v5

    goto :goto_5

    .line 365
    .restart local v1       #deletable:Z
    :cond_8
    const/4 v5, 0x4

    goto :goto_6
.end method
