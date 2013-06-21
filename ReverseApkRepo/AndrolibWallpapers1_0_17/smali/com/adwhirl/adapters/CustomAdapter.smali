.class public Lcom/adwhirl/adapters/CustomAdapter;
.super Lcom/adwhirl/adapters/AdWhirlAdapter;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adwhirl/adapters/CustomAdapter$DisplayCustomRunnable;,
        Lcom/adwhirl/adapters/CustomAdapter$FetchCustomRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    .locals 0
    .parameter "adWhirlLayout"
    .parameter "ration"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/adwhirl/adapters/AdWhirlAdapter;-><init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V

    .line 45
    return-void
.end method


# virtual methods
.method public displayCustom()V
    .locals 27

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwhirl/adapters/CustomAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adwhirl/AdWhirlLayout;

    .line 59
    .local v7, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v7, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->activityReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 64
    .local v5, activity:Landroid/app/Activity;
    if-eqz v5, :cond_0

    .line 68
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/adwhirl/obj/Custom;->type:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 131
    sget-boolean v23, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v23, :cond_2

    const-string v23, "AdWhirl SDK"

    const-string v24, "Unknown custom type!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    invoke-virtual {v7}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedNow()V

    goto :goto_0

    .line 70
    :pswitch_0
    sget-boolean v23, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v23, :cond_3

    const-string v23, "AdWhirl SDK"

    const-string v24, "Serving custom type: banner"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_3
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-direct {v10, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .local v10, bannerView:Landroid/widget/RelativeLayout;
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/adwhirl/obj/Custom;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 74
    invoke-virtual {v7}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedNow()V

    goto :goto_0

    .line 77
    :cond_4
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v9, bannerImageView:Landroid/widget/ImageView;
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/adwhirl/obj/Custom;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    move-object v0, v11

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v11, bannerViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0xd

    move-object v0, v11

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    invoke-virtual {v10, v9, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {v7, v10}, Lcom/adwhirl/AdWhirlLayout;->pushSubView(Landroid/view/ViewGroup;)V

    .line 136
    .end local v9           #bannerImageView:Landroid/widget/ImageView;
    .end local v10           #bannerView:Landroid/widget/RelativeLayout;
    .end local v11           #bannerViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/adwhirl/AdWhirlManager;->resetRollover()V

    .line 137
    invoke-virtual {v7}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedDelayed()V

    goto/16 :goto_0

    .line 86
    :pswitch_1
    sget-boolean v23, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v23, :cond_5

    const-string v23, "AdWhirl SDK"

    const-string v24, "Serving custom type: icon"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_5
    new-instance v20, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v20, iconView:Landroid/widget/RelativeLayout;
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/adwhirl/obj/Custom;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-nez v23, :cond_6

    .line 89
    invoke-virtual {v7}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedNow()V

    goto/16 :goto_0

    .line 93
    :cond_6
    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v24, 0x140

    const/16 v25, 0x32

    invoke-direct/range {v23 .. v25}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v13, blendView:Landroid/widget/ImageView;
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/adwhirl/obj/Extra;->bgRed:I

    move/from16 v23, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/adwhirl/obj/Extra;->bgGreen:I

    move/from16 v24, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/adwhirl/obj/Extra;->bgBlue:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 96
    .local v8, backgroundColor:I
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    sget-object v23, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    aput v26, v24, v25

    const/16 v25, 0x1

    aput v8, v24, v25

    const/16 v25, 0x2

    aput v8, v24, v25

    const/16 v25, 0x3

    aput v8, v24, v25

    move-object v0, v12

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 97
    .local v12, blend:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    move-object v0, v14

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v14, blendViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v20

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v18, iconImageView:Landroid/widget/ImageView;
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/adwhirl/obj/Custom;->image:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const/16 v23, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 103
    const/16 v23, 0x4

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 104
    sget-object v23, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v21, iconViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 108
    .local v16, frameImageView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string v24, "/com/adwhirl/assets/ad_frame.gif"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 109
    .local v15, drawableStream:Ljava/io/InputStream;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 110
    .local v6, adFrameDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    const/16 v23, 0x4

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 112
    sget-object v23, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v17, frameViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v19, iconTextView:Landroid/widget/TextView;
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/adwhirl/obj/Custom;->description:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    sget-object v23, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 118
    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/adwhirl/obj/Extra;->fgRed:I

    move/from16 v23, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/adwhirl/obj/Extra;->fgGreen:I

    move/from16 v24, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/adwhirl/obj/Extra;->fgBlue:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v22, textViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v23, 0x1

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getId()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    const/16 v23, 0xc

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    const/16 v23, 0xf

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 124
    const/16 v23, 0xd

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    const/16 v23, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 126
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/adwhirl/AdWhirlLayout;->pushSubView(Landroid/view/ViewGroup;)V

    goto/16 :goto_1

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handle()V
    .locals 6

    .prologue
    .line 49
    iget-object v1, p0, Lcom/adwhirl/adapters/CustomAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 50
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adwhirl/adapters/CustomAdapter$FetchCustomRunnable;

    invoke-direct {v2, p0}, Lcom/adwhirl/adapters/CustomAdapter$FetchCustomRunnable;-><init>(Lcom/adwhirl/adapters/CustomAdapter;)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
