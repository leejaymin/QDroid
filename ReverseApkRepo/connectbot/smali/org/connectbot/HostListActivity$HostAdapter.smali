.class Lorg/connectbot/HostListActivity$HostAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HostListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/connectbot/bean/HostBean;",
        ">;"
    }
.end annotation


# instance fields
.field private final blue:Landroid/content/res/ColorStateList;

.field private final green:Landroid/content/res/ColorStateList;

.field private hosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/HostBean;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lorg/connectbot/service/TerminalManager;

.field private final red:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Lorg/connectbot/HostListActivity;


# direct methods
.method public constructor <init>(Lorg/connectbot/HostListActivity;Landroid/content/Context;Ljava/util/List;Lorg/connectbot/service/TerminalManager;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter
    .parameter "manager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/HostBean;",
            ">;",
            "Lorg/connectbot/service/TerminalManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 448
    .local p3, hosts:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/HostBean;>;"
    iput-object p1, p0, Lorg/connectbot/HostListActivity$HostAdapter;->this$0:Lorg/connectbot/HostListActivity;

    .line 449
    const v0, 0x7f03000e

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 451
    iput-object p3, p0, Lorg/connectbot/HostListActivity$HostAdapter;->hosts:Ljava/util/List;

    .line 452
    iput-object p4, p0, Lorg/connectbot/HostListActivity$HostAdapter;->manager:Lorg/connectbot/service/TerminalManager;

    .line 454
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/HostListActivity$HostAdapter;->red:Landroid/content/res/ColorStateList;

    .line 455
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/HostListActivity$HostAdapter;->green:Landroid/content/res/ColorStateList;

    .line 456
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/HostListActivity$HostAdapter;->blue:Landroid/content/res/ColorStateList;

    .line 457
    return-void
.end method

.method private getConnectedState(Lorg/connectbot/bean/HostBean;)I
    .locals 2
    .parameter "host"

    .prologue
    const/4 v0, 0x1

    .line 464
    iget-object v1, p0, Lorg/connectbot/HostListActivity$HostAdapter;->manager:Lorg/connectbot/service/TerminalManager;

    if-nez v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    iget-object v1, p0, Lorg/connectbot/HostListActivity$HostAdapter;->manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v1, p1}, Lorg/connectbot/service/TerminalManager;->getConnectedBridge(Lorg/connectbot/bean/HostBean;)Lorg/connectbot/service/TerminalBridge;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 468
    const/4 v0, 0x2

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Lorg/connectbot/HostListActivity$HostAdapter;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v1, v1, Lorg/connectbot/service/TerminalManager;->disconnected:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 480
    if-nez p2, :cond_0

    .line 481
    iget-object v11, p0, Lorg/connectbot/HostListActivity$HostAdapter;->this$0:Lorg/connectbot/HostListActivity;

    iget-object v11, v11, Lorg/connectbot/HostListActivity;->inflater:Landroid/view/LayoutInflater;

    const v12, 0x7f03000e

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 483
    new-instance v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;

    invoke-direct {v4, p0}, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;-><init>(Lorg/connectbot/HostListActivity$HostAdapter;)V

    .line 485
    .local v4, holder:Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;
    const v11, 0x1020014

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    .line 486
    const v11, 0x1020015

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    .line 487
    const v11, 0x1020006

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 489
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 493
    :goto_0
    iget-object v11, p0, Lorg/connectbot/HostListActivity$HostAdapter;->hosts:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/connectbot/bean/HostBean;

    .line 494
    .local v5, host:Lorg/connectbot/bean/HostBean;
    if-nez v5, :cond_1

    .line 496
    const-string v11, "HostAdapter"

    const-string v12, "Host bean is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    const-string v12, "Error during lookup"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    const-string v12, "see \'adb logcat\' for more"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    :goto_1
    return-object p2

    .line 491
    .end local v4           #holder:Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;
    .end local v5           #host:Lorg/connectbot/bean/HostBean;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;

    .restart local v4       #holder:Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;
    goto :goto_0

    .line 503
    .restart local v5       #host:Lorg/connectbot/bean/HostBean;
    :cond_1
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    invoke-virtual {v5}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-direct {p0, v5}, Lorg/connectbot/HostListActivity$HostAdapter;->getConnectedState(Lorg/connectbot/bean/HostBean;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 517
    :goto_2
    const/4 v1, 0x0

    .line 518
    .local v1, chosen:Landroid/content/res/ColorStateList;
    const-string v11, "red"

    invoke-virtual {v5}, Lorg/connectbot/bean/HostBean;->getColor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 519
    iget-object v1, p0, Lorg/connectbot/HostListActivity$HostAdapter;->red:Landroid/content/res/ColorStateList;

    .line 525
    :cond_2
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 527
    .local v2, context:Landroid/content/Context;
    if-eqz v1, :cond_6

    .line 529
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 530
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 537
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long v9, v11, v13

    .line 539
    .local v9, now:J
    const v11, 0x7f080083

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 540
    .local v8, nice:Ljava/lang/String;
    invoke-virtual {v5}, Lorg/connectbot/bean/HostBean;->getLastConnect()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 541
    invoke-virtual {v5}, Lorg/connectbot/bean/HostBean;->getLastConnect()J

    move-result-wide v11

    sub-long v11, v9, v11

    const-wide/16 v13, 0x3c

    div-long/2addr v11, v13

    long-to-int v7, v11

    .line 542
    .local v7, minutes:I
    const/16 v11, 0x3c

    if-lt v7, v11, :cond_8

    .line 543
    div-int/lit8 v6, v7, 0x3c

    .line 544
    .local v6, hours:I
    const/16 v11, 0x18

    if-lt v6, v11, :cond_7

    .line 545
    div-int/lit8 v3, v6, 0x18

    .line 546
    .local v3, days:I
    const v11, 0x7f080086

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 553
    .end local v3           #days:I
    .end local v6           #hours:I
    .end local v7           #minutes:I
    :cond_3
    :goto_5
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 507
    .end local v1           #chosen:Landroid/content/res/ColorStateList;
    .end local v2           #context:Landroid/content/Context;
    .end local v8           #nice:Ljava/lang/String;
    .end local v9           #now:J
    :pswitch_0
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v12, 0x0

    new-array v12, v12, [I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_2

    .line 510
    :pswitch_1
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    const v14, 0x10100a0

    aput v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_2

    .line 513
    :pswitch_2
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    const v14, 0x10100a8

    aput v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto/16 :goto_2

    .line 520
    .restart local v1       #chosen:Landroid/content/res/ColorStateList;
    :cond_4
    const-string v11, "green"

    invoke-virtual {v5}, Lorg/connectbot/bean/HostBean;->getColor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 521
    iget-object v1, p0, Lorg/connectbot/HostListActivity$HostAdapter;->green:Landroid/content/res/ColorStateList;

    goto/16 :goto_3

    .line 522
    :cond_5
    const-string v11, "blue"

    invoke-virtual {v5}, Lorg/connectbot/bean/HostBean;->getColor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 523
    iget-object v1, p0, Lorg/connectbot/HostListActivity$HostAdapter;->blue:Landroid/content/res/ColorStateList;

    goto/16 :goto_3

    .line 533
    .restart local v2       #context:Landroid/content/Context;
    :cond_6
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    const v12, 0x1010040

    invoke-virtual {v11, v2, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 534
    iget-object v11, v4, Lorg/connectbot/HostListActivity$HostAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    const v12, 0x1010042

    invoke-virtual {v11, v2, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_4

    .line 548
    .restart local v6       #hours:I
    .restart local v7       #minutes:I
    .restart local v8       #nice:Ljava/lang/String;
    .restart local v9       #now:J
    :cond_7
    const v11, 0x7f080085

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 550
    .end local v6           #hours:I
    :cond_8
    const v11, 0x7f080084

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
