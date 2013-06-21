.class public Lcom/fleapapa/helper/ItemList;
.super Landroid/app/Activity;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/ItemList$ItemAdapter;,
        Lcom/fleapapa/helper/ItemList$SortBy;
    }
.end annotation


# static fields
.field public static final WHO:Ljava/lang/String; = "ItemList"

.field static act:Lcom/fleapapa/helper/ItemList;

.field static from:Ljava/lang/String;

.field static items:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/fleapapa/helper/Item;",
            ">;"
        }
    .end annotation
.end field

.field static route:Lcom/fleapapa/helper/ItemRoute;

.field static to:Ljava/lang/String;


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/fleapapa/helper/Item;",
            ">;"
        }
    .end annotation
.end field

.field aid:I

.field cat:Lcom/fleapapa/helper/Category;

.field chkpoll:Landroid/widget/CheckBox;

.field chkpost:Landroid/widget/CheckBox;

.field code:I

.field flea:Lcom/fleapapa/helper/Flea;

.field helpTheMost:Z

.field interest:Lcom/fleapapa/helper/Interest;

.field isMatching:Z

.field lview:Landroid/widget/ListView;

.field op:Ljava/lang/String;

.field sbop:C

.field sspin:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static item(I)Lcom/fleapapa/helper/Item;
    .locals 3
    .parameter "iid"

    .prologue
    .line 334
    sget-object v1, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 334
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Item;

    .line 335
    .local v0, it:Lcom/fleapapa/helper/Item;
    iget v2, v0, Lcom/fleapapa/helper/Item;->iid:I

    if-ne v2, p0, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public static setIcon(Lcom/fleapapa/helper/Item;Landroid/widget/ImageView;Z)V
    .locals 11
    .parameter "item"
    .parameter "iv"
    .parameter "mutate"

    .prologue
    const/4 v10, 0x0

    .line 608
    iget-object v0, p0, Lcom/fleapapa/helper/Item;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/fleapapa/helper/Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/Item;->photos:Ljava/lang/String;

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 616
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const v1, 0x7f02004d

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 617
    .local v6, d:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_8

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 616
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v1, p0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    const v1, 0x7f02001d

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    const v1, 0x7f020027

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const v1, 0x7f02002b

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/fleapapa/helper/Item;->type:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const v1, 0x7f02002e

    goto :goto_1

    :cond_5
    const v1, 0x7f02002d

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    const v1, 0x7f020047

    goto :goto_1

    :cond_7
    const v1, 0x7f02002a

    goto :goto_1

    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object v0, v6

    .line 617
    goto :goto_2

    .line 620
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v0, p0, Lcom/fleapapa/helper/Item;->photos:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 621
    .local v8, photos:[Ljava/lang/String;
    aget-object v0, v8, v10

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 622
    .local v7, icon:Ljava/lang/String;
    const-string v0, "http://%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v9, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, purl:Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 626
    .local v4, handler:Landroid/os/Handler;
    new-instance v5, Lcom/fleapapa/helper/ItemList$28;

    invoke-direct {v5, p1, p0}, Lcom/fleapapa/helper/ItemList$28;-><init>(Landroid/widget/ImageView;Lcom/fleapapa/helper/Item;)V

    .line 631
    .local v5, runner:Ljava/lang/Runnable;
    new-instance v0, Lcom/fleapapa/helper/ItemList$29;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIcon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemList$29;-><init>(Ljava/lang/String;Lcom/fleapapa/helper/Item;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 641
    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemList$29;->start()V

    goto/16 :goto_0
.end method

.method static wallPaper()I
    .locals 2

    .prologue
    const v1, 0x7f02006e

    .line 324
    sget v0, Lcom/fleapapa/util/My;->flags:I

    and-int/lit16 v0, v0, 0xff8

    if-nez v0, :cond_0

    move v0, v1

    .line 331
    :goto_0
    return v0

    .line 325
    :cond_0
    sget v0, Lcom/fleapapa/util/My;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const v0, 0x7f020074

    goto :goto_0

    .line 326
    :cond_1
    sget v0, Lcom/fleapapa/util/My;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const v0, 0x7f02006f

    goto :goto_0

    .line 327
    :cond_2
    sget v0, Lcom/fleapapa/util/My;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    const v0, 0x7f020071

    goto :goto_0

    .line 328
    :cond_3
    sget v0, Lcom/fleapapa/util/My;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    const v0, 0x7f020072

    goto :goto_0

    .line 329
    :cond_4
    sget v0, Lcom/fleapapa/util/My;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    .line 330
    :cond_5
    sget v0, Lcom/fleapapa/util/My;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    const v0, 0x7f02006d

    goto :goto_0

    :cond_6
    move v0, v1

    .line 331
    goto :goto_0
.end method


# virtual methods
.method createItem()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 419
    sget v3, Lcom/fleapapa/util/My;->uid:I

    if-nez v3, :cond_0

    .line 420
    const/16 v3, 0x1409

    invoke-static {p0, v5, v3}, Lcom/fleapapa/helper/Signin;->sign_in_out(Landroid/app/Activity;ZI)V

    .line 446
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v3, 0x0

    const v4, 0x7f06006d

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 425
    .local v1, pdlg:Landroid/app/ProgressDialog;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 426
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/fleapapa/helper/ItemList$20;

    invoke-direct {v2, p0, v1}, Lcom/fleapapa/helper/ItemList$20;-><init>(Lcom/fleapapa/helper/ItemList;Landroid/app/ProgressDialog;)V

    .line 440
    .local v2, runner:Ljava/lang/Runnable;
    new-instance v3, Lcom/fleapapa/helper/ItemList$21;

    const-string v4, "flea.item_getauth"

    invoke-direct {v3, p0, v4, v0, v2}, Lcom/fleapapa/helper/ItemList$21;-><init>(Lcom/fleapapa/helper/ItemList;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 445
    invoke-virtual {v3}, Lcom/fleapapa/helper/ItemList$21;->start()V

    goto :goto_0
.end method

.method match0()V
    .locals 2

    .prologue
    const v1, 0x7f0800c8

    .line 500
    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 501
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 502
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->setFrom()V

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->saveTo()V

    .line 505
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->setInterest()V

    .line 506
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->match1()V

    .line 510
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method match1()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 513
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/helper/ItemList;->from:Ljava/lang/String;

    .line 516
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/helper/ItemList;->to:Ljava/lang/String;

    .line 517
    sput-object v7, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    .line 518
    sget-object v0, Lcom/fleapapa/helper/ItemList;->from:Ljava/lang/String;

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fleapapa/helper/ItemList;->to:Ljava/lang/String;

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->match2()V

    .line 545
    :goto_0
    return-void

    .line 522
    :cond_1
    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v7, v0, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    .line 524
    .local v6, pdlg:Landroid/app/ProgressDialog;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 525
    .local v3, handler:Landroid/os/Handler;
    new-instance v5, Lcom/fleapapa/helper/ItemList$22;

    invoke-direct {v5, p0, v6}, Lcom/fleapapa/helper/ItemList$22;-><init>(Lcom/fleapapa/helper/ItemList;Landroid/app/ProgressDialog;)V

    .line 531
    .local v5, ok:Ljava/lang/Runnable;
    new-instance v4, Lcom/fleapapa/helper/ItemList$23;

    invoke-direct {v4, p0, v6}, Lcom/fleapapa/helper/ItemList$23;-><init>(Lcom/fleapapa/helper/ItemList;Landroid/app/ProgressDialog;)V

    .line 538
    .local v4, err:Ljava/lang/Runnable;
    new-instance v0, Lcom/fleapapa/helper/ItemList$24;

    const-string v2, "flea.router"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemList$24;-><init>(Lcom/fleapapa/helper/ItemList;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 544
    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemList$24;->start()V

    goto :goto_0
.end method

.method match2()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 547
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 548
    .local v2, handler:Landroid/os/Handler;
    const/4 v4, 0x0

    const v5, 0x7f06007b

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    .line 549
    .local v3, pdlg:Landroid/app/ProgressDialog;
    new-instance v0, Lcom/fleapapa/helper/ItemList$25;

    invoke-direct {v0, p0, v3}, Lcom/fleapapa/helper/ItemList$25;-><init>(Lcom/fleapapa/helper/ItemList;Landroid/app/ProgressDialog;)V

    .line 556
    .local v0, eachrow:Ljava/lang/Runnable;
    new-instance v1, Lcom/fleapapa/helper/ItemList$26;

    invoke-direct {v1, p0, v3}, Lcom/fleapapa/helper/ItemList$26;-><init>(Lcom/fleapapa/helper/ItemList;Landroid/app/ProgressDialog;)V

    .line 574
    .local v1, finish:Ljava/lang/Runnable;
    invoke-virtual {p0, v2, v0, v1}, Lcom/fleapapa/helper/ItemList;->match2(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 575
    return-void
.end method

.method match2(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "handler"
    .parameter "eachrow"
    .parameter "finish"

    .prologue
    .line 577
    invoke-static {}, Lcom/fleapapa/helper/ItemView;->clearCache()V

    .line 578
    sget-object v0, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 579
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 581
    new-instance v0, Lcom/fleapapa/helper/ItemList$27;

    const-string v2, "flea.match"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemList$27;-><init>(Lcom/fleapapa/helper/ItemList;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 591
    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemList$27;->start()V

    .line 592
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 448
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 449
    const/16 v1, 0x1409

    if-ne p1, v1, :cond_0

    .line 450
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    sget v1, Lcom/fleapapa/util/My;->uid:I

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->createItem()V

    .line 453
    :cond_0
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 454
    invoke-static {p2}, Lcom/fleapapa/helper/ItemList;->item(I)Lcom/fleapapa/helper/Item;

    move-result-object v0

    .line 455
    .local v0, item:Lcom/fleapapa/helper/Item;
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/fleapapa/helper/ItemView;->viewItem(Landroid/content/Context;Lcom/fleapapa/helper/Item;Z)V

    .line 457
    .end local v0           #item:Lcom/fleapapa/helper/Item;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const v11, 0x7f0800bc

    const/16 v10, 0xb

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 62
    sput-object p0, Lcom/fleapapa/helper/ItemList;->act:Lcom/fleapapa/helper/ItemList;

    .line 64
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 65
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "helpTheMost"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/fleapapa/helper/ItemList;->helpTheMost:Z

    .line 66
    const-string v4, "op"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fleapapa/helper/ItemList;->op:Ljava/lang/String;

    .line 67
    const-string v4, "code"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/fleapapa/helper/ItemList;->code:I

    .line 68
    sget-object v4, Lcom/fleapapa/helper/Interest;->interests:Landroid/util/SparseArray;

    iget v5, p0, Lcom/fleapapa/helper/ItemList;->code:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/helper/Interest;

    iput-object v4, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    .line 69
    iget v4, p0, Lcom/fleapapa/helper/ItemList;->code:I

    invoke-static {v4}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v4

    iput-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    .line 70
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v4, v4, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/fleapapa/helper/ItemList;->code:I

    if-eqz v4, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->finish()V

    .line 232
    :goto_0
    return-void

    .line 74
    :cond_1
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ItemList.onCreate: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-object v6, v6, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v4, p0, Lcom/fleapapa/helper/ItemList;->code:I

    if-eqz v4, :cond_2

    .line 77
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v4, v4, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-eqz v4, :cond_2

    sput v7, Lcom/fleapapa/util/My;->flags:I

    .line 79
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->requestWindowFeature(I)Z

    .line 80
    const v4, 0x7f030013

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->setContentView(I)V

    .line 81
    const v4, 0x7f0800d9

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/fleapapa/helper/ItemList;->lview:Landroid/widget/ListView;

    .line 82
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->lview:Landroid/widget/ListView;

    new-instance v5, Lcom/fleapapa/helper/ItemList$ItemAdapter;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$ItemAdapter;-><init>(Lcom/fleapapa/helper/ItemList;)V

    iput-object v5, p0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->setSortSpinner()V

    .line 88
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->lview:Landroid/widget/ListView;

    new-instance v5, Lcom/fleapapa/helper/ItemList$1;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$1;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    const v4, 0x7f0800ca

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpost:Landroid/widget/CheckBox;

    .line 94
    const v4, 0x7f0800cb

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpoll:Landroid/widget/CheckBox;

    .line 95
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpost:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v5, v5, Lcom/fleapapa/helper/Category;->type:I

    if-ne v5, v10, :cond_6

    const v5, 0x7f06005d

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 96
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpoll:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v5, v5, Lcom/fleapapa/helper/Category;->type:I

    if-ne v5, v10, :cond_7

    const v5, 0x7f06005e

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 97
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpost:Landroid/widget/CheckBox;

    new-instance v5, Lcom/fleapapa/helper/ItemList$2;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$2;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpoll:Landroid/widget/CheckBox;

    new-instance v5, Lcom/fleapapa/helper/ItemList$3;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$3;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    const v4, 0x7f0800c6

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$4;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$4;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v4, 0x7f0800c4

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$5;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$5;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v4, 0x7f0800c5

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$6;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$6;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v4, 0x7f0800d6

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/fleapapa/helper/ItemList$7;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$7;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v4, 0x7f0800be

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$8;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$8;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v4, 0x7f0800bf

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$9;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$9;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v4, 0x7f0800c2

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$10;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$10;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v4, 0x7f0800c0

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$11;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$11;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v4, 0x7f0800c3

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$12;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$12;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v4, 0x7f0800bd

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$13;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$13;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v4, 0x7f0800c1

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/fleapapa/util/MyImageButton;

    new-instance v5, Lcom/fleapapa/helper/ItemList$14;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$14;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v4, 0x7f0800cf

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/fleapapa/helper/ItemList$15;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/ItemList$15;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v4, 0x7f0800d7

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/AdView;

    .line 177
    .local v0, admob:Lcom/admob/android/ads/AdView;
    new-instance v4, Lcom/fleapapa/helper/ItemList$16;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/ItemList$16;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v0, v4}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->setFrom()V

    .line 194
    const v4, 0x7f0800d5

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    .line 195
    .local v3, tov:Landroid/widget/AutoCompleteTextView;
    const-string v4, "tos"

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, tos:[Ljava/lang/String;
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x109000a

    invoke-direct {v4, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    invoke-virtual {v3, v9}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 203
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpost:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 204
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpoll:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v4, v4, Lcom/fleapapa/helper/Category;->post:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v4, v4, Lcom/fleapapa/helper/Category;->poll:Z

    if-nez v4, :cond_3

    .line 207
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpost:Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->chkpoll:Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 212
    :cond_3
    const v4, 0x7f0800ce

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f060054

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 213
    const v4, 0x7f0800cd

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v5, v5, Lcom/fleapapa/helper/Category;->dist:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 214
    const v4, 0x7f0800d1

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-object v5, v5, Lcom/fleapapa/helper/Category;->keyw:Ljava/lang/String;

    if-nez v5, :cond_8

    const-string v5, ""

    :goto_3
    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 216
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->op:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 217
    const v4, 0x7f0800c8

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {p0, v11}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v4, 0x7f0800c4

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const v4, 0x7f0800c5

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_4
    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemList;->helpTheMost:Z

    if-eqz v4, :cond_5

    .line 224
    const v4, 0x7f0800ba

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {p0, v11}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_5
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v4, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 230
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->setInterest()V

    .line 231
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->match1()V

    goto/16 :goto_0

    .line 95
    .end local v0           #admob:Lcom/admob/android/ads/AdView;
    .end local v2           #tos:[Ljava/lang/String;
    .end local v3           #tov:Landroid/widget/AutoCompleteTextView;
    :cond_6
    const v5, 0x7f06005b

    goto/16 :goto_1

    .line 96
    :cond_7
    const v5, 0x7f06005c

    goto/16 :goto_2

    .line 214
    .restart local v0       #admob:Lcom/admob/android/ads/AdView;
    .restart local v2       #tos:[Ljava/lang/String;
    .restart local v3       #tov:Landroid/widget/AutoCompleteTextView;
    :cond_8
    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-object v5, v5, Lcom/fleapapa/helper/Category;->keyw:Ljava/lang/String;

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 243
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemList.onDestroy: flea="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->flea:Lcom/fleapapa/helper/Flea;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList;->flea:Lcom/fleapapa/helper/Flea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemList;->flea:Lcom/fleapapa/helper/Flea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    .line 245
    :cond_0
    invoke-static {}, Lcom/fleapapa/helper/ItemView;->clearCache()V

    .line 248
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 249
    sget-object v0, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 251
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v1, 0x7f0800c8

    .line 594
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 595
    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 597
    const/4 v0, 0x1

    .line 605
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "ItemList.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 241
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "ItemList.onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemList;->showVariables(Z)V

    .line 237
    return-void
.end method

.method saveTo()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "tos"

    .line 257
    const v4, 0x7f0800d5

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    .line 258
    .local v3, tov:Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, to:Ljava/lang/String;
    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 261
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 263
    const-string v4, "tos"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, tos:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "tos"

    aput-object v7, v4, v6

    const/4 v5, 0x1

    const-string v6, ";"

    invoke-static {v2, v6, v1}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    goto :goto_0
.end method

.method setFrom()V
    .locals 5

    .prologue
    .line 253
    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    sget-object v3, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v3}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {p0, v1, v2, v3, v4}, Lcom/fleapapa/helper/PhoneChange;->loc2addr(Landroid/app/Activity;DD)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, from:Ljava/lang/String;
    const v1, 0x7f0800d3

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    return-void
.end method

.method setInterest()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 459
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    const v3, 0x7f0800cd

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/fleapapa/helper/Category;->dist:I

    .line 460
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    const v3, 0x7f0800d1

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/fleapapa/helper/Category;->keyw:Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, changed:Z
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v3, v3, Lcom/fleapapa/helper/Category;->type:I

    and-int/lit8 v2, v3, -0x4

    .line 463
    .local v2, type:I
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v3, v3, Lcom/fleapapa/helper/Category;->post:Z

    if-eqz v3, :cond_4

    move v3, v7

    :goto_0
    or-int/2addr v2, v3

    .line 464
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v3, v3, Lcom/fleapapa/helper/Category;->poll:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    :goto_1
    or-int/2addr v2, v3

    .line 465
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v3, v3, Lcom/fleapapa/helper/Category;->post:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v3, v3, Lcom/fleapapa/helper/Category;->poll:Z

    if-eqz v3, :cond_8

    .line 466
    :cond_0
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    if-eqz v3, :cond_7

    .line 467
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    iget v3, v3, Lcom/fleapapa/helper/Interest;->type:I

    if-ne v3, v2, :cond_6

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    iget v3, v3, Lcom/fleapapa/helper/Interest;->dist:I

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v4, v4, Lcom/fleapapa/helper/Category;->dist:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    iget-object v3, v3, Lcom/fleapapa/helper/Interest;->keyw:Ljava/lang/String;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-object v4, v4, Lcom/fleapapa/helper/Category;->keyw:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/fleapapa/util/MyUtil;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v5

    .line 468
    :goto_2
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v4, v4, Lcom/fleapapa/helper/Category;->dist:I

    iput v4, v3, Lcom/fleapapa/helper/Interest;->dist:I

    .line 469
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-object v4, v4, Lcom/fleapapa/helper/Category;->keyw:Ljava/lang/String;

    iput-object v4, v3, Lcom/fleapapa/helper/Interest;->keyw:Ljava/lang/String;

    .line 470
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    iput v2, v3, Lcom/fleapapa/helper/Interest;->type:I

    .line 479
    :goto_3
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    if-eqz v3, :cond_1

    .line 480
    sput-boolean v0, Lcom/fleapapa/helper/Interest;->changed:Z

    .line 483
    :cond_1
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ItemList.refresh: changed="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v3, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 494
    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v3, v3, Lcom/fleapapa/helper/Category;->post:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v3, v3, Lcom/fleapapa/helper/Category;->poll:Z

    if-nez v3, :cond_3

    .line 495
    sget-object v3, Lcom/fleapapa/helper/Interest;->interests:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    iget v4, v4, Lcom/fleapapa/helper/Interest;->code:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 498
    :cond_3
    return-void

    :cond_4
    move v3, v5

    .line 463
    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 464
    goto/16 :goto_1

    :cond_6
    move v0, v7

    .line 467
    goto :goto_2

    .line 473
    :cond_7
    new-instance v3, Lcom/fleapapa/helper/Interest;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v4, v4, Lcom/fleapapa/helper/Category;->code:I

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v5, v5, Lcom/fleapapa/helper/Category;->dist:I

    iget-object v6, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-object v6, v6, Lcom/fleapapa/helper/Category;->keyw:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/fleapapa/helper/Interest;-><init>(IIILjava/lang/String;)V

    iput-object v3, p0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    .line 474
    const/4 v0, 0x1

    goto :goto_3

    .line 478
    :cond_8
    const/4 v0, 0x1

    goto :goto_3

    .line 484
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/Item;

    .line 485
    .local v1, item:Lcom/fleapapa/helper/Item;
    iget v3, v1, Lcom/fleapapa/helper/Item;->uid:I

    sget v5, Lcom/fleapapa/util/My;->uid:I

    if-ne v3, v5, :cond_2

    .line 486
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ItemList.refresh: had local item="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget v3, v1, Lcom/fleapapa/helper/Item;->type:I

    xor-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    .line 488
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iput-boolean v7, v3, Lcom/fleapapa/helper/Category;->post:Z

    .line 489
    :cond_a
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iput-boolean v7, v3, Lcom/fleapapa/helper/Category;->poll:Z

    .line 490
    :cond_b
    const v3, 0x7f0800ca

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v5, v5, Lcom/fleapapa/helper/Category;->post:Z

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 491
    const v3, 0x7f0800cb

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v5, v5, Lcom/fleapapa/helper/Category;->poll:Z

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4
.end method

.method setSortSpinner()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 339
    const v5, 0x7f0800c7

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/fleapapa/helper/ItemList;->sspin:Landroid/widget/Spinner;

    .line 340
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v1, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 341
    .local v1, sadapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/fleapapa/helper/ItemList$SortBy;>;"
    const v5, 0x1090009

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 342
    sget-object v5, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f07

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, sbys:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v2

    if-lt v0, v5, :cond_0

    .line 352
    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->sspin:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 353
    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->sspin:Landroid/widget/Spinner;

    new-instance v6, Lcom/fleapapa/helper/ItemList$18;

    invoke-direct {v6, p0}, Lcom/fleapapa/helper/ItemList$18;-><init>(Lcom/fleapapa/helper/ItemList;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 367
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-lt v0, v5, :cond_5

    .line 370
    return-void

    .line 344
    :cond_0
    aget-object v5, v2, v0

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, t:[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 343
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_2
    aget-object v5, v4, v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 348
    .local v3, sc:C
    sget v5, Lcom/fleapapa/util/My;->flags:I

    and-int/lit16 v5, v5, 0xff8

    if-eqz v5, :cond_3

    const-string v5, "pPeEbB"

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 349
    :cond_3
    sget v5, Lcom/fleapapa/util/My;->flags:I

    and-int/lit16 v5, v5, 0x100

    if-nez v5, :cond_4

    const-string v5, "gG"

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 350
    :cond_4
    new-instance v5, Lcom/fleapapa/helper/ItemList$SortBy;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-direct {v5, p0, v3, v6}, Lcom/fleapapa/helper/ItemList$SortBy;-><init>(Lcom/fleapapa/helper/ItemList;CLjava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 368
    .end local v3           #sc:C
    .end local v4           #t:[Ljava/lang/String;
    :cond_5
    iget-char v6, p0, Lcom/fleapapa/helper/ItemList;->sbop:C

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fleapapa/helper/ItemList$SortBy;

    iget-char v5, v5, Lcom/fleapapa/helper/ItemList$SortBy;->op:C

    if-ne v6, v5, :cond_6

    .line 369
    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->sspin:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 367
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method showAd()V
    .locals 7

    .prologue
    const v6, 0x7f0800bb

    .line 267
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-object v1, v4, Lcom/fleapapa/helper/Category;->ads:Ljava/util/HashMap;

    .line 268
    .local v1, ads:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/fleapapa/helper/Ad;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    sget-object v1, Lcom/fleapapa/helper/Ad;->dads:Ljava/util/HashMap;

    .line 269
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 270
    .local v3, n:I
    if-nez v3, :cond_2

    .line 282
    :goto_0
    return-void

    .line 271
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v5, v5, Lcom/fleapapa/helper/Category;->adi:I

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Ad;

    .line 272
    .local v0, ad:Lcom/fleapapa/helper/Ad;
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Lcom/fleapapa/helper/Ad;->display(Landroid/widget/ImageView;)V

    .line 273
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v5, v5, Lcom/fleapapa/helper/Category;->adi:I

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v3

    iput v5, v4, Lcom/fleapapa/helper/Category;->adi:I

    .line 275
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 276
    .local v2, adview:Landroid/widget/ImageView;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 277
    new-instance v4, Lcom/fleapapa/helper/ItemList$17;

    invoke-direct {v4, p0, v0}, Lcom/fleapapa/helper/ItemList$17;-><init>(Lcom/fleapapa/helper/ItemList;Lcom/fleapapa/helper/Ad;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method showVariables(Z)V
    .locals 8
    .parameter "showAd"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 285
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->chkpost:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v3, v3, Lcom/fleapapa/helper/Category;->post:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->chkpoll:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v3, v3, Lcom/fleapapa/helper/Category;->poll:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 291
    .local v1, nitem:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-lt v0, v1, :cond_6

    .line 294
    :cond_0
    sget-object v2, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 295
    :cond_1
    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/ItemList;->sortItems(Z)V

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 298
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ItemList.showVariables: cat "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v4, v4, Lcom/fleapapa/helper/Category;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const v2, 0x7f0800c8

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v1, :cond_7

    move v3, v6

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const v2, 0x7f0800c6

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-lez v1, :cond_8

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    const v2, 0x7f0800d9

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-lez v1, :cond_9

    move v3, v6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 302
    const v2, 0x7f0800ca

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/fleapapa/util/My;->flags:I

    if-nez v3, :cond_a

    move v3, v6

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const v2, 0x7f0800cb

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/fleapapa/util/My;->flags:I

    if-nez v3, :cond_b

    move v3, v6

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 304
    const v2, 0x7f0800d8

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v1, :cond_c

    iget-boolean v3, p0, Lcom/fleapapa/helper/ItemList;->isMatching:Z

    if-nez v3, :cond_c

    move v3, v6

    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    const v2, 0x7f0800b9

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/fleapapa/helper/ItemList;->wallPaper()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 307
    const-string v2, "2009-12-25 23:59"

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->expires(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 308
    const v2, 0x7f0800bd

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemList;->showAd()V

    .line 311
    :cond_4
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->op:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 312
    sget v2, Lcom/fleapapa/util/My;->flags:I

    if-ne v2, v5, :cond_d

    const v2, 0x7f060074

    :goto_7
    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    invoke-virtual {v4}, Lcom/fleapapa/helper/Category;->getReversePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    :cond_5
    :goto_8
    return-void

    .line 292
    :cond_6
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    move v3, v5

    .line 299
    goto/16 :goto_1

    :cond_8
    move v3, v5

    .line 300
    goto/16 :goto_2

    :cond_9
    move v3, v5

    .line 301
    goto/16 :goto_3

    :cond_a
    move v3, v5

    .line 302
    goto/16 :goto_4

    :cond_b
    move v3, v5

    .line 303
    goto :goto_5

    :cond_c
    move v3, v5

    .line 304
    goto :goto_6

    .line 312
    :cond_d
    sget v2, Lcom/fleapapa/util/My;->flags:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    const v2, 0x7f060075

    goto :goto_7

    :cond_e
    sget v2, Lcom/fleapapa/util/My;->flags:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_f

    const v2, 0x7f060076

    goto :goto_7

    :cond_f
    sget v2, Lcom/fleapapa/util/My;->flags:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_10

    const v2, 0x7f060077

    goto :goto_7

    :cond_10
    sget v2, Lcom/fleapapa/util/My;->flags:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_11

    const v2, 0x7f060078

    goto :goto_7

    :cond_11
    sget v2, Lcom/fleapapa/util/My;->flags:I

    const/16 v3, 0x100

    if-ne v2, v3, :cond_12

    const v2, 0x7f060079

    goto :goto_7

    :cond_12
    const v2, 0x7f060073

    goto :goto_7

    .line 314
    :cond_13
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->op:Ljava/lang/String;

    const-string v3, "by_uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 315
    const v2, 0x7f0600a5

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 317
    :cond_14
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->op:Ljava/lang/String;

    const-string v3, "by_watch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 318
    const v2, 0x7f0600a6

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 320
    :cond_15
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->op:Ljava/lang/String;

    const-string v3, "by_sub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 321
    const v2, 0x7f0600a7

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/ItemList;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method

.method sortItems(Z)V
    .locals 5
    .parameter "honorClass"

    .prologue
    .line 374
    sget-object v2, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v3, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/fleapapa/helper/Item;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fleapapa/helper/Item;

    .line 375
    .local v1, its:[Lcom/fleapapa/helper/Item;
    new-instance v2, Lcom/fleapapa/helper/ItemList$19;

    invoke-direct {v2, p0, p1}, Lcom/fleapapa/helper/ItemList$19;-><init>(Lcom/fleapapa/helper/ItemList;Z)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 404
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 405
    sget-object v2, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 406
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 416
    return-void

    .line 406
    :cond_0
    aget-object v0, v1, v3

    .line 407
    .local v0, it:Lcom/fleapapa/helper/Item;
    sget-object v4, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v4, p0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
