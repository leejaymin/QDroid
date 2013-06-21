.class public Lcom/fleapapa/helper/ItemView;
.super Landroid/app/Activity;
.source "ItemView.java"


# static fields
.field public static final FX:I = 0x1f4

.field public static final WHO:Ljava/lang/String; = "ItemView"

.field static preview:Landroid/webkit/WebView;


# instance fields
.field aid:I

.field cdir:I

.field cidx:I

.field citem:Lcom/fleapapa/helper/Item;

.field dltx:I

.field dlty:I

.field flea:Lcom/fleapapa/helper/Flea;

.field fromMap:Z

.field gestureScanner:Landroid/view/GestureDetector;

.field hscroll:Landroid/widget/HorizontalScrollView;

.field lltop:Landroid/widget/LinearLayout;

.field oldx:I

.field oldy:I

.field t0:J

.field velox:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static clearCache()V
    .locals 2

    .prologue
    .line 606
    sget-object v0, Lcom/fleapapa/helper/ItemView;->preview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fleapapa/helper/ItemView;->preview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 607
    :cond_0
    return-void
.end method

.method private fetchBids(Lcom/fleapapa/helper/Item;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 419
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 420
    iget-object v0, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 422
    .local v4, handler:Landroid/os/Handler;
    new-instance v5, Lcom/fleapapa/helper/ItemView$13;

    invoke-direct {v5, p0, p1}, Lcom/fleapapa/helper/ItemView$13;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    .line 429
    .local v5, runner:Ljava/lang/Runnable;
    new-instance v0, Lcom/fleapapa/helper/ItemView$14;

    const-string v2, "flea.item_bid_get"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemView$14;-><init>(Lcom/fleapapa/helper/ItemView;Ljava/lang/String;Lcom/fleapapa/helper/Item;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 434
    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemView$14;->start()V

    .line 435
    return-void
.end method

.method private flintTo(I)V
    .locals 5
    .parameter "velocityX"

    .prologue
    const v4, 0x7f06003b

    const/4 v3, 0x1

    .line 207
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemView.flint: velocityX="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v0, -0x1f4

    if-ge p1, v0, :cond_2

    .line 209
    iget v0, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 210
    sget-object v0, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Item;

    invoke-virtual {p0, v0, v3}, Lcom/fleapapa/helper/ItemView;->scrollTo(Lcom/fleapapa/helper/Item;I)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    invoke-static {p0, v4}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;I)V

    goto :goto_0

    .line 214
    :cond_2
    const/16 v0, 0x1f4

    if-le p1, v0, :cond_0

    .line 215
    iget v0, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    if-lez v0, :cond_3

    .line 216
    sget-object v0, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Item;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/fleapapa/helper/ItemView;->scrollTo(Lcom/fleapapa/helper/Item;I)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-static {p0, v4}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static viewItem(Landroid/content/Context;Lcom/fleapapa/helper/Item;Z)V
    .locals 3
    .parameter "context"
    .parameter "item"
    .parameter "fromMap"

    .prologue
    .line 598
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fleapapa/helper/ItemView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "iid"

    iget v2, p1, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    const-string v1, "map"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 601
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 602
    return-void
.end method


# virtual methods
.method add2Scroll(Lcom/fleapapa/helper/Item;)V
    .locals 12
    .parameter "item"

    .prologue
    .line 258
    const/4 v7, 0x1

    iput-boolean v7, p1, Lcom/fleapapa/helper/Item;->refetch:Z

    .line 259
    sget-object v7, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 260
    .local v2, idx:I
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    if-nez v7, :cond_0

    .line 262
    and-int/lit8 v7, v2, 0x3

    packed-switch v7, :pswitch_data_0

    .line 264
    const v6, 0x7f020073

    .line 269
    .local v6, wpaper:I
    :goto_0
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/ItemView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 270
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030016

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    .line 271
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 272
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 274
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #wpaper:I
    :cond_0
    iget-object v7, p0, Lcom/fleapapa/helper/ItemView;->lltop:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, p1, :cond_1

    .line 275
    iget-object v7, p0, Lcom/fleapapa/helper/ItemView;->lltop:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 276
    iget-object v7, p0, Lcom/fleapapa/helper/ItemView;->lltop:Landroid/widget/LinearLayout;

    iget-object v8, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    sget v10, Lcom/fleapapa/util/My;->wwide:I

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v7, p0, Lcom/fleapapa/helper/ItemView;->hscroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 280
    :cond_1
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800e8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    .line 281
    .local v5, rgrp:Landroid/widget/RadioGroup;
    new-instance v7, Lcom/fleapapa/helper/ItemView$2;

    invoke-direct {v7, p0, p1, v5}, Lcom/fleapapa/helper/ItemView$2;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;Landroid/widget/RadioGroup;)V

    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 298
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800ee

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 299
    .local v4, pll:Landroid/widget/LinearLayout;
    iget v7, p1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_5

    .line 300
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800ef

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f06003c

    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p1, Lcom/fleapapa/helper/Item;->qty:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800f0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget v7, p1, Lcom/fleapapa/helper/Item;->type:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_3

    const v7, 0x7f06008f

    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setText(I)V

    .line 302
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800f1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget v7, p1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 306
    :goto_3
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800ed

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 307
    .local v1, bc:Landroid/widget/CheckBox;
    iget-boolean v7, p1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 308
    iget-boolean v7, p1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v7, :cond_7

    .line 310
    iget-boolean v7, p1, Lcom/fleapapa/helper/Item;->biddable:Z

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 312
    new-instance v7, Lcom/fleapapa/helper/ItemView$3;

    invoke-direct {v7, p0, p1}, Lcom/fleapapa/helper/ItemView$3;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 317
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 323
    :goto_5
    iget v7, p1, Lcom/fleapapa/helper/Item;->type:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_8

    .line 324
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800f3

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v7, 0x7f06002c

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/fleapapa/helper/Item;->ccname:[Ljava/lang/String;

    iget v11, p1, Lcom/fleapapa/helper/Item;->currency:I

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, p1, Lcom/fleapapa/helper/Item;->buynow:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\.00"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800f4

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v7, 0x7f06002d

    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p1, Lcom/fleapapa/helper/Item;->qty:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :goto_6
    iget v7, p1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v7, v7, 0xff8

    if-eqz v7, :cond_2

    .line 331
    iget v7, p1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_b

    .line 332
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    iget v8, p1, Lcom/fleapapa/helper/Item;->type:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_9

    const v8, 0x7f0800e9

    :goto_7
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v7, p1, Lcom/fleapapa/helper/Item;->type:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    const v7, 0x7f06005f

    :goto_8
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 335
    :goto_9
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800f2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_2
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f080100

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/ItemView$4;

    invoke-direct {v7, p0, p1}, Lcom/fleapapa/helper/ItemView$4;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v0, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f080101

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/ItemView$5;

    invoke-direct {v7, p0, p1}, Lcom/fleapapa/helper/ItemView$5;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v0, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f080102

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/ItemView$6;

    invoke-direct {v7, p0, p1}, Lcom/fleapapa/helper/ItemView$6;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v0, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f080103

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/ItemView$7;

    invoke-direct {v7, p0, p1}, Lcom/fleapapa/helper/ItemView$7;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v0, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f080104

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/ItemView$8;

    invoke-direct {v7, p0, p1}, Lcom/fleapapa/helper/ItemView$8;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v0, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f080106

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/ItemView$9;

    invoke-direct {v7, p0, p1}, Lcom/fleapapa/helper/ItemView$9;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v0, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f080107

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/ItemView$10;

    invoke-direct {v7, p0, p1}, Lcom/fleapapa/helper/ItemView$10;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v0, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f080105

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/ItemView$11;

    invoke-direct {v7, p0, p1}, Lcom/fleapapa/helper/ItemView$11;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v0, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800e7

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 394
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "#%d/%d: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p1, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v9, 0x7f060041

    invoke-virtual {p0, v9}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/fleapapa/helper/Item;->tpago:Ljava/lang/String;

    invoke-static {p0, v11}, Lcom/fleapapa/util/MyUtil;->timeLeft(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 394
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/ItemView;->showVariables(Lcom/fleapapa/helper/Item;)V

    .line 398
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800ff

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/AdView;

    .line 399
    .local v0, admob:Lcom/admob/android/ads/AdView;
    new-instance v7, Lcom/fleapapa/helper/ItemView$12;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/ItemView$12;-><init>(Lcom/fleapapa/helper/ItemView;)V

    invoke-virtual {v0, v7}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 413
    return-void

    .line 265
    .end local v0           #admob:Lcom/admob/android/ads/AdView;
    .end local v1           #bc:Landroid/widget/CheckBox;
    .end local v4           #pll:Landroid/widget/LinearLayout;
    .end local v5           #rgrp:Landroid/widget/RadioGroup;
    :pswitch_0
    const v6, 0x7f020072

    .restart local v6       #wpaper:I
    goto/16 :goto_0

    .line 266
    .end local v6           #wpaper:I
    :pswitch_1
    const v6, 0x7f020074

    .restart local v6       #wpaper:I
    goto/16 :goto_0

    .line 267
    .end local v6           #wpaper:I
    :pswitch_2
    const v6, 0x7f020071

    .restart local v6       #wpaper:I
    goto/16 :goto_0

    .line 301
    .end local v6           #wpaper:I
    .restart local v4       #pll:Landroid/widget/LinearLayout;
    .restart local v5       #rgrp:Landroid/widget/RadioGroup;
    :cond_3
    const v7, 0x7f06008e

    goto/16 :goto_1

    .line 302
    :cond_4
    const/16 v7, 0x8

    goto/16 :goto_2

    .line 305
    :cond_5
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 307
    .restart local v1       #bc:Landroid/widget/CheckBox;
    :cond_6
    const/16 v7, 0x8

    goto/16 :goto_4

    .line 320
    :cond_7
    iget v7, p1, Lcom/fleapapa/helper/Item;->type:I

    invoke-static {v7}, Lcom/fleapapa/helper/Interest;->typeOf(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_5

    .line 328
    :cond_8
    iget-object v7, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v8, 0x7f0800f2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 332
    :cond_9
    const v8, 0x7f0800ea

    goto/16 :goto_7

    :cond_a
    const v7, 0x7f060060

    goto/16 :goto_8

    .line 334
    :cond_b
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto/16 :goto_9

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method delete(Lcom/fleapapa/helper/Item;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 492
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/fleapapa/util/MyUtil;->getDataDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "item."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 494
    const/4 v0, 0x0

    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v7, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    .line 495
    .local v6, pdlg:Landroid/app/ProgressDialog;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 496
    .local v4, handler:Landroid/os/Handler;
    new-instance v5, Lcom/fleapapa/helper/ItemView$17;

    invoke-direct {v5, p0, v6, p1}, Lcom/fleapapa/helper/ItemView$17;-><init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;)V

    .line 505
    .local v5, runner:Ljava/lang/Runnable;
    new-instance v0, Lcom/fleapapa/helper/ItemView$18;

    const-string v2, "flea.item_del"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemView$18;-><init>(Lcom/fleapapa/helper/ItemView;Ljava/lang/String;Lcom/fleapapa/helper/Item;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 510
    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemView$18;->start()V

    .line 511
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "ev"

    .prologue
    .line 146
    sget-object v12, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->cidx:I

    move v13, v0

    invoke-virtual {v12, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fleapapa/helper/Item;

    .line 147
    .local v8, it:Lcom/fleapapa/helper/Item;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/4 v13, 0x0

    sub-float/2addr v12, v13

    float-to-int v6, v12

    .line 148
    .local v6, ex:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    const/high16 v13, 0x41c0

    sub-float/2addr v12, v13

    float-to-int v7, v12

    .line 158
    .local v7, ey:I
    iget-object v12, v8, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v13, 0x7f0800fe

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 159
    .local v11, wv:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    if-lt v7, v12, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    if-ge v7, v12, :cond_0

    const/4 v12, 0x1

    move v9, v12

    .line 160
    .local v9, onWeb:Z
    :goto_0
    if-eqz v9, :cond_1

    .line 162
    :try_start_0
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 163
    .local v10, pv:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 164
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 204
    .end local v10           #pv:Landroid/view/View;
    :goto_1
    return v12

    .line 159
    .end local v9           #onWeb:Z
    :cond_0
    const/4 v12, 0x0

    move v9, v12

    goto :goto_0

    .line 166
    .restart local v9       #onWeb:Z
    :catch_0
    move-exception v12

    move-object v5, v12

    .line 167
    .local v5, e:Ljava/lang/Exception;
    sget-object v12, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "ItemView.dispatchTouchEvent(): missed event: web="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",ey="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",wy="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", ev="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_3

    .line 170
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->oldx:I

    .line 171
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->oldy:I

    .line 172
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->velox:I

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->dlty:I

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->dltx:I

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fleapapa/helper/ItemView;->t0:J

    .line 204
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->oldx:I

    move v12, v0

    sub-int v3, v6, v12

    .line 178
    .local v3, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->oldy:I

    move v12, v0

    sub-int v4, v7, v12

    .line 179
    .local v4, dy:I
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->oldx:I

    .line 180
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->oldy:I

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->dltx:I

    move v12, v0

    add-int/2addr v12, v3

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->dltx:I

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->dlty:I

    move v12, v0

    add-int/2addr v12, v4

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->dlty:I

    .line 184
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/16 v13, 0x32

    if-le v12, v13, :cond_4

    .line 185
    int-to-long v12, v3

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fleapapa/helper/ItemView;->t0:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    div-long/2addr v12, v14

    long-to-int v12, v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fleapapa/helper/ItemView;->velox:I

    .line 186
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/fleapapa/helper/ItemView;->t0:J

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemView;->hscroll:Landroid/widget/HorizontalScrollView;

    move-object v12, v0

    neg-int v13, v3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 190
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 193
    .end local v3           #dx:I
    .end local v4           #dy:I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 195
    invoke-static {}, Lcom/fleapapa/util/MyImageButton;->tipOff()V

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->velox:I

    move v12, v0

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemView;->flintTo(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemView;->hscroll:Landroid/widget/HorizontalScrollView;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->cidx:I

    move v13, v0

    sget v14, Lcom/fleapapa/util/My;->wwide:I

    mul-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->dltx:I

    move v12, v0

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/16 v13, 0x14

    if-gt v12, v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->dlty:I

    move v12, v0

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_2

    .line 200
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_1
.end method

.method edit(Lcom/fleapapa/helper/Item;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 543
    const/4 v3, 0x0

    const v4, 0x7f06006d

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 544
    .local v1, pdlg:Landroid/app/ProgressDialog;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 545
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/fleapapa/helper/ItemView$22;

    invoke-direct {v2, p0, v1, p1}, Lcom/fleapapa/helper/ItemView$22;-><init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;)V

    .line 554
    .local v2, runner:Ljava/lang/Runnable;
    new-instance v3, Lcom/fleapapa/helper/ItemView$23;

    const-string v4, "flea.item_getauth"

    invoke-direct {v3, p0, v4, v0, v2}, Lcom/fleapapa/helper/ItemView$23;-><init>(Lcom/fleapapa/helper/ItemView;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 559
    invoke-virtual {v3}, Lcom/fleapapa/helper/ItemView$23;->start()V

    .line 560
    return-void
.end method

.method edit2(Lcom/fleapapa/helper/Item;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 514
    const/4 v0, 0x0

    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    .line 515
    .local v7, pdlg:Landroid/app/ProgressDialog;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 516
    .local v4, handler:Landroid/os/Handler;
    new-instance v5, Lcom/fleapapa/helper/ItemView$19;

    invoke-direct {v5, p0, v7, p1}, Lcom/fleapapa/helper/ItemView$19;-><init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;)V

    .line 528
    .local v5, done:Ljava/lang/Runnable;
    new-instance v6, Lcom/fleapapa/helper/ItemView$20;

    invoke-direct {v6, p0, v7}, Lcom/fleapapa/helper/ItemView$20;-><init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;)V

    .line 534
    .local v6, fail:Ljava/lang/Runnable;
    new-instance v0, Lcom/fleapapa/helper/ItemView$21;

    const-string v2, "flea.item_detail"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/fleapapa/helper/ItemView$21;-><init>(Lcom/fleapapa/helper/ItemView;Ljava/lang/String;Lcom/fleapapa/helper/Item;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 539
    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemView$21;->start()V

    .line 540
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 591
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ItemView.onActivityResult: resultCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/16 v1, 0x42

    if-ne p1, v1, :cond_0

    .line 593
    invoke-static {p2}, Lcom/fleapapa/helper/ItemList;->item(I)Lcom/fleapapa/helper/Item;

    move-result-object v0

    .line 594
    .local v0, item:Lcom/fleapapa/helper/Item;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fleapapa/helper/ItemView;->scrollTo(Lcom/fleapapa/helper/Item;I)V

    .line 596
    .end local v0           #item:Lcom/fleapapa/helper/Item;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v6, "ItemView.onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 55
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/ItemView;->requestWindowFeature(I)Z

    .line 56
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/ItemView;->requestWindowFeature(I)Z

    .line 58
    const v5, 0x7f030017

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/ItemView;->setContentView(I)V

    .line 59
    const v5, 0x7f080109

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/fleapapa/helper/ItemView;->lltop:Landroid/widget/LinearLayout;

    .line 60
    const v5, 0x7f080108

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    iput-object v5, p0, Lcom/fleapapa/helper/ItemView;->hscroll:Landroid/widget/HorizontalScrollView;

    .line 62
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 63
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "iid"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, iid:I
    const-string v5, "map"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/fleapapa/helper/ItemView;->fromMap:Z

    .line 65
    invoke-static {v1}, Lcom/fleapapa/helper/ItemList;->item(I)Lcom/fleapapa/helper/Item;

    move-result-object v5

    iput-object v5, p0, Lcom/fleapapa/helper/ItemView;->citem:Lcom/fleapapa/helper/Item;

    if-nez v5, :cond_1

    .line 66
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ItemView.onCreate: no item for iid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemView;->finish()V

    .line 117
    :cond_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 72
    sget-object v5, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/Item;

    .line 73
    .local v3, it:Lcom/fleapapa/helper/Item;
    iget-object v5, v3, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    move-object v4, v5

    .line 74
    .local v4, v:Landroid/view/View;
    :goto_1
    iget-object v5, v3, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    if-nez v5, :cond_3

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v5, p0, Lcom/fleapapa/helper/ItemView;->lltop:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcom/fleapapa/util/My;->wwide:I

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v4           #v:Landroid/view/View;
    :cond_2
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    goto :goto_1

    .restart local v4       #v:Landroid/view/View;
    :cond_3
    move-object v5, v3

    .line 74
    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "ItemView.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView;->flea:Lcom/fleapapa/helper/Flea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemView;->flea:Lcom/fleapapa/helper/Flea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView;->lltop:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "ItemView.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v0, Lcom/fleapapa/helper/ItemView;->preview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fleapapa/helper/ItemView;->preview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 128
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemView.onResume: window wide="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/fleapapa/util/My;->wwide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",high="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/fleapapa/util/My;->whigh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView;->citem:Lcom/fleapapa/helper/Item;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fleapapa/helper/ItemView;->scrollTo(Lcom/fleapapa/helper/Item;I)V

    .line 122
    return-void
.end method

.method qa(Lcom/fleapapa/helper/Item;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 586
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fleapapa/helper/QAList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "iid"

    iget v2, p1, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemView;->startActivity(Landroid/content/Intent;)V

    .line 589
    return-void
.end method

.method scrollTo(Lcom/fleapapa/helper/Item;I)V
    .locals 11
    .parameter "item"
    .parameter "dir"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "ItemView.scrollTo: prefetch cidx="

    .line 221
    iput p2, p0, Lcom/fleapapa/helper/ItemView;->cdir:I

    .line 222
    sget-object v3, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/fleapapa/helper/ItemView;->citem:Lcom/fleapapa/helper/Item;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 236
    iget v3, p0, Lcom/fleapapa/helper/ItemView;->cdir:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 237
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ItemView.scrollTo: prefetch cidx="

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v3, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v4, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/Item;

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemView;->add2Scroll(Lcom/fleapapa/helper/Item;)V

    .line 240
    :cond_0
    iget v3, p0, Lcom/fleapapa/helper/ItemView;->cdir:I

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    sub-int/2addr v3, v8

    if-ltz v3, :cond_1

    .line 241
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ItemView.scrollTo: prefetch cidx="

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v3, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v4, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    sub-int/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/Item;

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemView;->add2Scroll(Lcom/fleapapa/helper/Item;)V

    .line 244
    :cond_1
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ItemView.scrollTo: scroll to cidx="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/ItemView;->add2Scroll(Lcom/fleapapa/helper/Item;)V

    .line 250
    new-instance v2, Lcom/fleapapa/helper/ItemView$1;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/ItemView$1;-><init>(Lcom/fleapapa/helper/ItemView;)V

    .line 255
    .local v2, runner:Ljava/lang/Runnable;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    return-void

    .line 225
    .end local v2           #runner:Ljava/lang/Runnable;
    :cond_2
    iget v3, p0, Lcom/fleapapa/helper/ItemView;->cidx:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    .line 224
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 226
    :cond_4
    sget-object v3, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/Item;

    .line 227
    .local v1, it:Lcom/fleapapa/helper/Item;
    iget-object v3, v1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 228
    iget-object v3, p0, Lcom/fleapapa/helper/ItemView;->lltop:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 229
    iget-object v3, p0, Lcom/fleapapa/helper/ItemView;->lltop:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 230
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcom/fleapapa/util/My;->wwide:I

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 229
    invoke-virtual {v3, v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v3, v1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 232
    iput-object v9, v1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    goto :goto_1
.end method

.method showVariables(Lcom/fleapapa/helper/Item;)V
    .locals 14
    .parameter "item"

    .prologue
    const v13, 0x7f080106

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 437
    invoke-static {p0, v9}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 439
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800fe

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    sput-object v2, Lcom/fleapapa/helper/ItemView;->preview:Landroid/webkit/WebView;

    .line 440
    iget-boolean v2, p1, Lcom/fleapapa/helper/Item;->refetch:Z

    if-eqz v2, :cond_4

    .line 441
    iput-boolean v9, p1, Lcom/fleapapa/helper/Item;->refetch:Z

    .line 442
    iget-boolean v2, p1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/fleapapa/helper/ItemView;->fetchBids(Lcom/fleapapa/helper/Item;)V

    .line 443
    :cond_0
    sget-object v2, Lcom/fleapapa/helper/ItemView;->preview:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/fleapapa/helper/Flea;->itemURI(Lcom/fleapapa/helper/Item;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/fleapapa/util/MyUtil;->preview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 448
    :goto_0
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800fc

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 449
    .local v1, cc:Landroid/widget/Button;
    const v2, 0x7f060029

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, p1, Lcom/fleapapa/helper/Item;->ncomt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 450
    new-instance v2, Lcom/fleapapa/helper/ItemView$15;

    invoke-direct {v2, p0, p1}, Lcom/fleapapa/helper/ItemView$15;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800f5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 455
    .local v0, bb:Landroid/widget/Button;
    const v2, 0x7f060030

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, p1, Lcom/fleapapa/helper/Item;->nbid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 456
    new-instance v2, Lcom/fleapapa/helper/ItemView$16;

    invoke-direct {v2, p0, p1}, Lcom/fleapapa/helper/ItemView$16;-><init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800f7

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v3, :cond_5

    move v3, v9

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800f5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v3, :cond_6

    move v3, v9

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800fa

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060035

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    iget v5, p1, Lcom/fleapapa/helper/Item;->nview:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800fb

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060036

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    iget v5, p1, Lcom/fleapapa/helper/Item;->nwatch:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800fd

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060037

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    iget v5, p1, Lcom/fleapapa/helper/Item;->ratp:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget v5, p1, Lcom/fleapapa/helper/Item;->ratn:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-boolean v2, p1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v2, :cond_1

    .line 471
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800f6

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/fleapapa/helper/Item;->maxbid:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_7

    const v3, 0x7f06002e

    :goto_3
    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    sget-object v5, Lcom/fleapapa/helper/Item;->ccname:[Ljava/lang/String;

    iget v6, p1, Lcom/fleapapa/helper/Item;->currency:I

    aget-object v5, v5, v6

    aput-object v5, v4, v9

    iget-wide v5, p1, Lcom/fleapapa/helper/Item;->maxbid:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_8

    iget-wide v5, p1, Lcom/fleapapa/helper/Item;->reserve:D

    :goto_4
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\.00"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800f8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fleapapa/helper/Item;->ended()Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x7f060032

    :goto_5
    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    aput-object v5, v4, v9

    iget-object v5, p1, Lcom/fleapapa/helper/Item;->tleft:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/fleapapa/util/MyUtil;->timeLeft(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :cond_1
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f080100

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/fleapapa/helper/Item;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-ne v3, v4, :cond_a

    sget-boolean v3, Lcom/fleapapa/util/My;->isGuest:Z

    if-nez v3, :cond_a

    move v3, v9

    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f080101

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/fleapapa/helper/Item;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-ne v3, v4, :cond_b

    sget-boolean v3, Lcom/fleapapa/util/My;->isGuest:Z

    if-nez v3, :cond_b

    move v3, v9

    :goto_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/fleapapa/helper/Item;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v4, :cond_c

    sget v3, Lcom/fleapapa/util/My;->uid:I

    if-lez v3, :cond_c

    sget-boolean v3, Lcom/fleapapa/util/My;->isGuest:Z

    if-nez v3, :cond_c

    move v3, v9

    :goto_8
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f080107

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/fleapapa/helper/Item;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v4, :cond_d

    sget v3, Lcom/fleapapa/util/My;->uid:I

    if-lez v3, :cond_d

    sget-boolean v3, Lcom/fleapapa/util/My;->isGuest:Z

    if-nez v3, :cond_d

    move v3, v9

    :goto_9
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f080102

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/fleapapa/helper/Item;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v4, :cond_e

    iget-boolean v3, p1, Lcom/fleapapa/helper/Item;->callable:Z

    if-eqz v3, :cond_e

    move v3, v9

    :goto_a
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f080103

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/fleapapa/helper/Item;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v4, :cond_f

    iget-boolean v3, p1, Lcom/fleapapa/helper/Item;->mailable:Z

    if-eqz v3, :cond_f

    move v3, v9

    :goto_b
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f080102

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/fleapapa/helper/Item;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v4, :cond_10

    invoke-virtual {p1}, Lcom/fleapapa/helper/Item;->iwin()I

    move-result v3

    if-gtz v3, :cond_2

    iget-boolean v3, p1, Lcom/fleapapa/helper/Item;->callable:Z

    if-eqz v3, :cond_10

    :cond_2
    move v3, v9

    :goto_c
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f080103

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/fleapapa/helper/Item;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v4, :cond_11

    invoke-virtual {p1}, Lcom/fleapapa/helper/Item;->iwin()I

    move-result v3

    if-gtz v3, :cond_3

    iget-boolean v3, p1, Lcom/fleapapa/helper/Item;->mailable:Z

    if-eqz v3, :cond_11

    :cond_3
    move v3, v9

    :goto_d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    iget v3, p1, Lcom/fleapapa/helper/Item;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-nez v3, :cond_12

    const v3, 0x7f020064

    :goto_e
    invoke-virtual {v2, v3}, Lcom/fleapapa/util/MyImageButton;->setImageResource(I)V

    .line 484
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f080107

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    iget v3, p1, Lcom/fleapapa/helper/Item;->flags:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-nez v3, :cond_13

    const v3, 0x7f02005c

    :goto_f
    invoke-virtual {v2, v3}, Lcom/fleapapa/util/MyImageButton;->setImageResource(I)V

    .line 485
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    iget v3, p1, Lcom/fleapapa/helper/Item;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-nez v3, :cond_14

    const v3, 0x7f06003d

    :goto_10
    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 486
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f080107

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/util/MyImageButton;

    iget v3, p1, Lcom/fleapapa/helper/Item;->flags:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-nez v3, :cond_15

    const v3, 0x7f06003f

    :goto_11
    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 488
    iget-object v2, p1, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v3, 0x7f0800f2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 489
    return-void

    .line 446
    .end local v0           #bb:Landroid/widget/Button;
    .end local v1           #cc:Landroid/widget/Button;
    .restart local p0
    :cond_4
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v3, "ItemView.showVariables: no refetch^_^"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v0       #bb:Landroid/widget/Button;
    .restart local v1       #cc:Landroid/widget/Button;
    :cond_5
    move v3, v10

    .line 464
    goto/16 :goto_1

    :cond_6
    move v3, v10

    .line 465
    goto/16 :goto_2

    .line 471
    :cond_7
    const v3, 0x7f06002f

    goto/16 :goto_3

    :cond_8
    iget-wide v5, p1, Lcom/fleapapa/helper/Item;->maxbid:D

    goto/16 :goto_4

    .line 472
    :cond_9
    const v3, 0x7f060031

    goto/16 :goto_5

    :cond_a
    move v3, v10

    .line 475
    goto/16 :goto_6

    :cond_b
    move v3, v10

    .line 476
    goto/16 :goto_7

    :cond_c
    move v3, v10

    .line 477
    goto/16 :goto_8

    :cond_d
    move v3, v10

    .line 478
    goto/16 :goto_9

    :cond_e
    move v3, v10

    .line 479
    goto/16 :goto_a

    :cond_f
    move v3, v10

    .line 480
    goto/16 :goto_b

    :cond_10
    move v3, v10

    .line 481
    goto/16 :goto_c

    :cond_11
    move v3, v10

    .line 482
    goto/16 :goto_d

    .line 483
    :cond_12
    const v3, 0x7f020062

    goto/16 :goto_e

    .line 484
    :cond_13
    const v3, 0x7f020061

    goto/16 :goto_f

    .line 485
    :cond_14
    const v3, 0x7f06003e

    goto :goto_10

    .line 486
    :cond_15
    const v3, 0x7f060040

    goto :goto_11
.end method

.method watch(Lcom/fleapapa/helper/Item;Z)V
    .locals 9
    .parameter "item"
    .parameter "watch"

    .prologue
    const/4 v2, 0x1

    .line 562
    const/4 v0, 0x0

    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v8

    .line 563
    .local v8, pdlg:Landroid/app/ProgressDialog;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 564
    .local v5, handler:Landroid/os/Handler;
    new-instance v6, Lcom/fleapapa/helper/ItemView$24;

    invoke-direct {v6, p0, v8, p1, p2}, Lcom/fleapapa/helper/ItemView$24;-><init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;Z)V

    .line 571
    .local v6, done:Ljava/lang/Runnable;
    new-instance v7, Lcom/fleapapa/helper/ItemView$25;

    invoke-direct {v7, p0, v8}, Lcom/fleapapa/helper/ItemView$25;-><init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;)V

    .line 577
    .local v7, fail:Ljava/lang/Runnable;
    new-instance v0, Lcom/fleapapa/helper/ItemView$26;

    const-string v2, "flea.item_watch"

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/fleapapa/helper/ItemView$26;-><init>(Lcom/fleapapa/helper/ItemView;Ljava/lang/String;Lcom/fleapapa/helper/Item;ZLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 582
    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemView$26;->start()V

    .line 583
    return-void
.end method
