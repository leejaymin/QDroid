.class public Lcom/fleapapa/helper/ItemEdit;
.super Landroid/app/Activity;
.source "ItemEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/ItemEdit$Xpinner;
    }
.end annotation


# static fields
.field public static final WHO:Ljava/lang/String; = "ItemEdit"

.field static puri:Ljava/lang/String; = null

.field static rand:Ljava/util/Random; = null

.field private static final rcPickPhoto:I = 0x1

.field static wtf:Ljava/lang/Runnable;


# instance fields
.field aid:I

.field bsdir:Ljava/lang/String;

.field code:I

.field copy:Lcom/fleapapa/helper/Item;

.field cspin:Landroid/widget/Spinner;

.field currCat:Lcom/fleapapa/helper/Category;

.field dspin:Lcom/fleapapa/helper/ItemEdit$Xpinner;

.field editing:Z

.field flea:Lcom/fleapapa/helper/Flea;

.field focusCat:Lcom/fleapapa/helper/Category;

.field iid:I

.field isnew:Z

.field item:Lcom/fleapapa/helper/Item;

.field preview:Landroid/webkit/WebView;

.field sellbuy:Z

.field spins:[Lcom/fleapapa/helper/ItemEdit$Xpinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/fleapapa/helper/ItemEdit;->rand:Ljava/util/Random;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fleapapa/helper/ItemEdit$Xpinner;

    iput-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->spins:[Lcom/fleapapa/helper/ItemEdit$Xpinner;

    .line 42
    return-void
.end method


# virtual methods
.method abort()V
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/fleapapa/helper/ItemEdit;->isnew:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    invoke-static {v0}, Lcom/fleapapa/helper/Item;->remove(Lcom/fleapapa/helper/Item;)V

    .line 727
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->finish(I)V

    .line 728
    return-void
.end method

.method changed()Z
    .locals 4

    .prologue
    .line 608
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 610
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    .line 611
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    .line 612
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/fleapapa/helper/Item;->rdist:I

    .line 613
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/fleapapa/helper/Item;->reserve:D

    .line 614
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/fleapapa/helper/Item;->minbid:D

    .line 615
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/fleapapa/helper/Item;->buynow:D

    .line 616
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 617
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/fleapapa/helper/Item;->qty:I

    .line 622
    :goto_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v0, v0, Lcom/fleapapa/helper/Item;->code:I

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->code:I

    if-ne v0, v1, :cond_1

    .line 623
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v0, v0, Lcom/fleapapa/helper/Item;->type:I

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->type:I

    if-ne v0, v1, :cond_1

    .line 624
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v0, v0, Lcom/fleapapa/helper/Item;->type:I

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->type:I

    if-ne v0, v1, :cond_1

    .line 625
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->flags:I

    if-ne v0, v1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->biddable:Z

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget-boolean v1, v1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-ne v0, v1, :cond_1

    .line 627
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->callable:Z

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget-boolean v1, v1, Lcom/fleapapa/helper/Item;->callable:Z

    if-ne v0, v1, :cond_1

    .line 628
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->mailable:Z

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget-boolean v1, v1, Lcom/fleapapa/helper/Item;->mailable:Z

    if-ne v0, v1, :cond_1

    .line 629
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->reserve:D

    iget-object v2, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget-wide v2, v2, Lcom/fleapapa/helper/Item;->reserve:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->minbid:D

    iget-object v2, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget-wide v2, v2, Lcom/fleapapa/helper/Item;->minbid:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v0, v0, Lcom/fleapapa/helper/Item;->qty:I

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->qty:I

    if-ne v0, v1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->buynow:D

    iget-object v2, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget-wide v2, v2, Lcom/fleapapa/helper/Item;->buynow:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget-object v1, v1, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget-object v1, v1, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget-object v1, v1, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v0, v0, Lcom/fleapapa/helper/Item;->currency:I

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->currency:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/fleapapa/helper/Item;->qty:I

    goto/16 :goto_0

    .line 636
    :cond_1
    const/4 v0, 0x1

    .line 622
    goto :goto_1
.end method

.method edit()V
    .locals 22

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    const-wide/32 v20, 0x93a80

    invoke-static/range {v20 .. v21}, Lcom/fleapapa/util/MyUtil;->getRelativeTime(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    .line 203
    :cond_0
    new-instance v19, Lcom/fleapapa/helper/Item;

    invoke-direct/range {v19 .. v19}, Lcom/fleapapa/helper/Item;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->code:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/fleapapa/helper/Item;->code:I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->uid:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/fleapapa/helper/Item;->uid:I

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/fleapapa/helper/Item;->iid:I

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->type:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/fleapapa/helper/Item;->type:I

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/fleapapa/helper/Item;->flags:I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->rdist:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/fleapapa/helper/Item;->rdist:I

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->biddable:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/fleapapa/helper/Item;->biddable:Z

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->callable:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/fleapapa/helper/Item;->callable:Z

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->mailable:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/fleapapa/helper/Item;->mailable:Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->reserve:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/fleapapa/helper/Item;->reserve:D

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->minbid:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/fleapapa/helper/Item;->minbid:D

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->buynow:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/fleapapa/helper/Item;->buynow:D

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->qty:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/fleapapa/helper/Item;->qty:I

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->copy:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->currency:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/fleapapa/helper/Item;->currency:I

    .line 227
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/fleapapa/helper/ItemEdit;->setVisuals()V

    .line 230
    const v19, 0x7f080098

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff8

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_3

    :cond_1
    const/16 v20, 0x0

    :goto_0
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const v19, 0x7f080099

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioGroup;

    .line 232
    .local v14, rgrp:Landroid/widget/RadioGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/fleapapa/helper/Item;->type:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 234
    const v19, 0x7f08009a

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 239
    :goto_1
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$4;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 254
    const v19, 0x7f08009a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_4

    const v19, 0x7f06005f

    :goto_2
    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 255
    const v19, 0x7f08009b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_5

    const v19, 0x7f060060

    :goto_3
    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 258
    const v19, 0x7f080093

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/fleapapa/helper/Item;->qty:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const v19, 0x7f080094

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 260
    .local v6, agrp:Landroid/widget/RadioGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/fleapapa/helper/Item;->type:I

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const v19, 0x7f080095

    :goto_4
    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 261
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$5;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 268
    const v19, 0x7f080097

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/fleapapa/helper/Item;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_7

    const/16 v19, 0x1

    :goto_5
    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 269
    const v19, 0x7f080097

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    new-instance v19, Lcom/fleapapa/helper/ItemEdit$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$6;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 280
    .end local v6           #agrp:Landroid/widget/RadioGroup;
    :goto_6
    const v19, 0x7f0800a1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->callable:Z

    move/from16 v19, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 281
    const v19, 0x7f0800a1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    new-instance v19, Lcom/fleapapa/helper/ItemEdit$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$7;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 286
    const v19, 0x7f0800a2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->mailable:Z

    move/from16 v19, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
    const v19, 0x7f0800a2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    new-instance v19, Lcom/fleapapa/helper/ItemEdit$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$8;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 293
    sget-boolean v19, Lcom/fleapapa/util/My;->isGuest:Z

    if-eqz v19, :cond_2

    .line 294
    const v19, 0x7f0800a1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 295
    const v19, 0x7f0800a2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_2
    const v19, 0x7f080091

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 299
    .local v18, title:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    const-string v19, ""

    :goto_7
    sget-object v20, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual/range {v18 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 300
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/fleapapa/helper/ItemEdit$9;-><init>(Lcom/fleapapa/helper/ItemEdit;Landroid/widget/EditText;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 306
    const v19, 0x7f0800b7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 307
    .local v9, detail:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    const-string v19, ""

    :goto_8
    sget-object v20, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 308
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/fleapapa/helper/ItemEdit$10;-><init>(Lcom/fleapapa/helper/ItemEdit;Landroid/widget/EditText;)V

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 325
    const v19, 0x7f08009f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 326
    .local v10, dist:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/fleapapa/helper/Item;->rdist:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 327
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/fleapapa/helper/ItemEdit$11;-><init>(Lcom/fleapapa/helper/ItemEdit;Landroid/widget/EditText;)V

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 332
    const v19, 0x7f0800b6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 333
    .local v15, sbut:Landroid/widget/Button;
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$12;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const v19, 0x7f0800b4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 340
    .local v5, abut:Landroid/widget/Button;
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$13;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const v19, 0x7f0800b5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 351
    .local v13, pbut:Landroid/widget/Button;
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v18

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fleapapa/helper/ItemEdit$14;-><init>(Lcom/fleapapa/helper/ItemEdit;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    const v19, 0x7f06004e

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 378
    const v19, 0x7f08009e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #abut:Landroid/widget/Button;
    check-cast v5, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/fleapapa/helper/Item;->biddable:Z

    move/from16 v19, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 379
    const v19, 0x7f08009e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    new-instance v19, Lcom/fleapapa/helper/ItemEdit$15;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$15;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 385
    const v19, 0x7f0800ad

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->reserve:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 386
    const v19, 0x7f0800ad

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v19, Lcom/fleapapa/helper/ItemEdit$16;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$16;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 392
    const v19, 0x7f0800ab

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->minbid:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 393
    const v19, 0x7f0800ab

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    new-instance v19, Lcom/fleapapa/helper/ItemEdit$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$17;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 399
    const v19, 0x7f0800a8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/fleapapa/helper/Item;->qty:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 400
    const v19, 0x7f0800a5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/fleapapa/helper/Item;->buynow:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 408
    .local v16, t:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v11, v16

    .line 409
    .local v11, dtime:[Ljava/lang/String;
    :goto_9
    const v19, 0x7f0800b0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 410
    .local v8, dedit:Landroid/widget/EditText;
    const v19, 0x7f0800b2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    .line 411
    .local v17, tedit:Landroid/widget/EditText;
    const/16 v19, 0x0

    aget-object v19, v11, v19

    sget-object v20, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 412
    const/16 v19, 0x1

    aget-object v19, v11, v19

    sget-object v20, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 413
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/fleapapa/helper/ItemEdit$18;-><init>(Lcom/fleapapa/helper/ItemEdit;[Ljava/lang/String;Landroid/widget/EditText;)V

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 434
    new-instance v19, Lcom/fleapapa/helper/ItemEdit$19;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/fleapapa/helper/ItemEdit$19;-><init>(Lcom/fleapapa/helper/ItemEdit;[Ljava/lang/String;Landroid/widget/EditText;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 455
    const v19, 0x7f0800a6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fleapapa/helper/ItemEdit;->cspin:Landroid/widget/Spinner;

    .line 456
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v19, 0x1090008

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 457
    .local v7, cadapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v19, 0x1090009

    move-object v0, v7

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 458
    const/4 v12, 0x0

    .local v12, i:I
    :goto_a
    sget-object v19, Lcom/fleapapa/helper/Item;->ccname:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move v0, v12

    move/from16 v1, v19

    if-lt v0, v1, :cond_c

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->cspin:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->cspin:Landroid/widget/Spinner;

    move-object/from16 v19, v0

    new-instance v20, Lcom/fleapapa/helper/ItemEdit$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fleapapa/helper/ItemEdit$20;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 471
    return-void

    .line 230
    .end local v7           #cadapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v8           #dedit:Landroid/widget/EditText;
    .end local v9           #detail:Landroid/widget/EditText;
    .end local v10           #dist:Landroid/widget/EditText;
    .end local v11           #dtime:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #pbut:Landroid/widget/Button;
    .end local v14           #rgrp:Landroid/widget/RadioGroup;
    .end local v15           #sbut:Landroid/widget/Button;
    .end local v16           #t:[Ljava/lang/String;
    .end local v17           #tedit:Landroid/widget/EditText;
    .end local v18           #title:Landroid/widget/EditText;
    :cond_3
    const/16 v20, 0x8

    goto/16 :goto_0

    .line 235
    .restart local v14       #rgrp:Landroid/widget/RadioGroup;
    :sswitch_0
    const v19, 0x7f08009b

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 236
    :sswitch_1
    const v19, 0x7f08009c

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 237
    :sswitch_2
    const v19, 0x7f08009d

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 254
    :cond_4
    const v19, 0x7f06005b

    goto/16 :goto_2

    .line 255
    :cond_5
    const v19, 0x7f06005c

    goto/16 :goto_3

    .line 260
    .restart local v6       #agrp:Landroid/widget/RadioGroup;
    :cond_6
    const v19, 0x7f080096

    goto/16 :goto_4

    .line 268
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 278
    .end local v6           #agrp:Landroid/widget/RadioGroup;
    :cond_8
    const v19, 0x7f080092

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 299
    .restart local v18       #title:Landroid/widget/EditText;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_7

    .line 307
    .restart local v9       #detail:Landroid/widget/EditText;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_8

    .line 408
    .restart local v10       #dist:Landroid/widget/EditText;
    .restart local v13       #pbut:Landroid/widget/Button;
    .restart local v15       #sbut:Landroid/widget/Button;
    .restart local v16       #t:[Ljava/lang/String;
    :cond_b
    const-wide/32 v19, 0x93a80

    invoke-static/range {v19 .. v20}, Lcom/fleapapa/util/MyUtil;->getRelativeTime(J)Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v11, v19

    goto/16 :goto_9

    .line 459
    .restart local v7       #cadapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v8       #dedit:Landroid/widget/EditText;
    .restart local v11       #dtime:[Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v17       #tedit:Landroid/widget/EditText;
    :cond_c
    sget-object v19, Lcom/fleapapa/helper/Item;->ccname:[Ljava/lang/String;

    aget-object v19, v19, v12

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 458
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public finish(I)V
    .locals 3
    .parameter "iid"

    .prologue
    .line 109
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemEdit.finish: okItem="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/ItemEdit;->setResult(I)V

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 113
    return-void
.end method

.method indent(Landroid/widget/LinearLayout;I)V
    .locals 6
    .parameter "row"
    .parameter "nspace"

    .prologue
    const/4 v5, -0x2

    .line 598
    const-string v1, ""

    .line 599
    .local v1, spaces:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 600
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 601
    .local v2, tview:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40a0

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    return-void

    .line 599
    .end local v2           #tview:Landroid/widget/TextView;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method layoutCat(Lcom/fleapapa/helper/Category;I)V
    .locals 12
    .parameter "cat"
    .parameter "level"

    .prologue
    .line 501
    const v8, 0x7f080090

    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 502
    .local v7, tab:Landroid/widget/LinearLayout;
    new-instance v6, Lcom/fleapapa/helper/ItemEdit$Xpinner;

    invoke-direct {v6, p0, p0}, Lcom/fleapapa/helper/ItemEdit$Xpinner;-><init>(Lcom/fleapapa/helper/ItemEdit;Landroid/content/Context;)V

    .line 503
    .local v6, spin:Lcom/fleapapa/helper/ItemEdit$Xpinner;
    if-nez p2, :cond_0

    .line 504
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 509
    iget-object v8, p0, Lcom/fleapapa/helper/ItemEdit;->spins:[Lcom/fleapapa/helper/ItemEdit$Xpinner;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v9, :cond_5

    .line 512
    :cond_0
    iget-object v8, p0, Lcom/fleapapa/helper/ItemEdit;->spins:[Lcom/fleapapa/helper/ItemEdit$Xpinner;

    aput-object v6, v8, p2

    .line 514
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v0, p0, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 515
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/fleapapa/helper/Category;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 517
    invoke-virtual {p1}, Lcom/fleapapa/helper/Category;->getParent()Lcom/fleapapa/helper/Category;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fleapapa/helper/Category;->getChilds()Ljava/util/ArrayList;

    move-result-object v2

    .line 518
    .local v2, cats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fleapapa/helper/Category;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 519
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 520
    invoke-virtual {v6, v0}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 522
    new-instance v8, Lcom/fleapapa/helper/ItemEdit$21;

    invoke-direct {v8, p0}, Lcom/fleapapa/helper/ItemEdit$21;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    invoke-virtual {v6, v8}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 562
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 563
    .local v4, row:Landroid/widget/LinearLayout;
    mul-int/lit8 v8, p2, 0x4

    invoke-virtual {p0, v4, v8}, Lcom/fleapapa/helper/ItemEdit;->indent(Landroid/widget/LinearLayout;I)V

    .line 564
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/high16 v11, 0x428c

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    const/4 v8, 0x3

    sub-int/2addr v8, p2

    mul-int/lit8 v8, v8, 0x4

    invoke-virtual {p0, v4, v8}, Lcom/fleapapa/helper/ItemEdit;->indent(Landroid/widget/LinearLayout;I)V

    .line 566
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->select(I)V

    .line 569
    iget-boolean v8, p1, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-nez v8, :cond_2

    .line 570
    invoke-virtual {p1}, Lcom/fleapapa/helper/Category;->getChilds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    .line 574
    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 578
    :cond_3
    iget-object v8, p0, Lcom/fleapapa/helper/ItemEdit;->focusCat:Lcom/fleapapa/helper/Category;

    if-eqz v8, :cond_4

    .line 579
    iget v8, p1, Lcom/fleapapa/helper/Category;->code:I

    iget-object v9, p0, Lcom/fleapapa/helper/ItemEdit;->focusCat:Lcom/fleapapa/helper/Category;

    iget v9, v9, Lcom/fleapapa/helper/Category;->code:I

    if-ne v8, v9, :cond_4

    .line 580
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/fleapapa/helper/ItemEdit;->focusCat:Lcom/fleapapa/helper/Category;

    .line 581
    invoke-virtual {v6}, Lcom/fleapapa/helper/ItemEdit$Xpinner;->requestFocus()Z

    .line 584
    :cond_4
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/fleapapa/helper/ItemEdit;->dspin:Lcom/fleapapa/helper/ItemEdit$Xpinner;

    .line 585
    return-void

    .line 509
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/fleapapa/helper/Category;>;"
    .end local v2           #cats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fleapapa/helper/Category;>;"
    .end local v4           #row:Landroid/widget/LinearLayout;
    :cond_5
    aget-object v5, v8, v10

    .line 510
    .local v5, s:Lcom/fleapapa/helper/ItemEdit$Xpinner;
    if-eqz v5, :cond_6

    const/4 v11, 0x1

    iput-boolean v11, v5, Lcom/fleapapa/helper/ItemEdit$Xpinner;->obsoleted:Z

    .line 509
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 519
    .end local v5           #s:Lcom/fleapapa/helper/ItemEdit$Xpinner;
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/fleapapa/helper/Category;>;"
    .restart local v2       #cats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fleapapa/helper/Category;>;"
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/Category;

    .local v1, c:Lcom/fleapapa/helper/Category;
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 570
    .end local v1           #c:Lcom/fleapapa/helper/Category;
    .restart local v4       #row:Landroid/widget/LinearLayout;
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/Category;

    .line 571
    .local v3, kid:Lcom/fleapapa/helper/Category;
    iget-object v9, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v9, v9, Lcom/fleapapa/helper/Item;->code:I

    invoke-static {v9}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/fleapapa/helper/Category;->onPath(Lcom/fleapapa/helper/Category;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 572
    add-int/lit8 v9, p2, 0x1

    invoke-virtual {p0, v3, v9}, Lcom/fleapapa/helper/ItemEdit;->layoutCat(Lcom/fleapapa/helper/Category;I)V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 189
    if-eqz p2, :cond_0

    .line 190
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemEdit: photo picked="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->upload_photo(Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "ItemEdit: photo picker cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_1
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemEdit: unknown requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const-wide v6, 0x412e848000000000L

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, ""

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcom/fleapapa/util/MyUtil;->getDataDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->bsdir:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemEdit.onCreate: DataDir="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/ItemEdit;->bsdir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", System.user.dir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->requestWindowFeature(I)Z

    .line 66
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->setContentView(I)V

    .line 67
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->preview:Landroid/webkit/WebView;

    .line 70
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "iid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fleapapa/helper/ItemEdit;->iid:I

    .line 71
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "aid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fleapapa/helper/ItemEdit;->aid:I

    .line 72
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fleapapa/helper/ItemEdit;->code:I

    .line 73
    iget v0, p0, Lcom/fleapapa/helper/ItemEdit;->code:I

    invoke-static {v0}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->currCat:Lcom/fleapapa/helper/Category;

    .line 74
    sget v0, Lcom/fleapapa/util/My;->flags:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->currCat:Lcom/fleapapa/helper/Category;

    iget v0, v0, Lcom/fleapapa/helper/Category;->type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/fleapapa/helper/ItemEdit;->sellbuy:Z

    .line 76
    iget v0, p0, Lcom/fleapapa/helper/ItemEdit;->iid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fleapapa/helper/ItemEdit;->iid:I

    invoke-static {v0}, Lcom/fleapapa/helper/ItemList;->item(I)Lcom/fleapapa/helper/Item;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    if-nez v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Lcom/fleapapa/helper/Item;

    sget v1, Lcom/fleapapa/util/My;->uid:I

    iget v2, p0, Lcom/fleapapa/helper/ItemEdit;->code:I

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v8}, Lcom/fleapapa/helper/Item;-><init>(IIILjava/lang/String;)V

    iput-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    .line 78
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v1, p0, Lcom/fleapapa/helper/ItemEdit;->sellbuy:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    :goto_1
    iput v1, v0, Lcom/fleapapa/helper/Item;->type:I

    .line 79
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    sget v1, Lcom/fleapapa/util/My;->flags:I

    iput v1, v0, Lcom/fleapapa/helper/Item;->flags:I

    .line 80
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v4

    :goto_2
    iput v1, v0, Lcom/fleapapa/helper/Item;->loni:I

    .line 81
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v4

    :goto_3
    iput v1, v0, Lcom/fleapapa/helper/Item;->lati:I

    .line 82
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iput v4, v0, Lcom/fleapapa/helper/Item;->rdist:I

    .line 83
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iput-boolean v4, v0, Lcom/fleapapa/helper/Item;->biddable:Z

    .line 84
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iput-boolean v4, v0, Lcom/fleapapa/helper/Item;->callable:Z

    .line 85
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iput-boolean v5, v0, Lcom/fleapapa/helper/Item;->mailable:Z

    .line 86
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/fleapapa/helper/Item;->reserve:D

    .line 87
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const-wide/32 v1, 0x93a80

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getRelativeTime(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const-string v1, ""

    iput-object v8, v0, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    sget-object v1, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/fleapapa/helper/Item;->user:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->getRelativeTime(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fleapapa/helper/Item;->ctime:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_6

    const/16 v1, 0x12

    :goto_4
    iput v1, v0, Lcom/fleapapa/helper/Item;->qty:I

    .line 92
    iput-boolean v5, p0, Lcom/fleapapa/helper/ItemEdit;->isnew:Z

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit;->showTitle()V

    .line 95
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit;->edit()V

    .line 96
    return-void

    :cond_2
    move v0, v4

    .line 74
    goto/16 :goto_0

    .line 78
    :cond_3
    const/16 v1, 0x11

    goto :goto_1

    .line 80
    :cond_4
    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    goto :goto_2

    .line 81
    :cond_5
    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    goto :goto_3

    :cond_6
    move v1, v5

    .line 91
    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "ItemEdit.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->flea:Lcom/fleapapa/helper/Flea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->flea:Lcom/fleapapa/helper/Flea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    .line 106
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 107
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 696
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 697
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit;->changed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 700
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 702
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 703
    new-instance v6, Lcom/fleapapa/helper/ItemEdit$26;

    invoke-direct {v6, p0}, Lcom/fleapapa/helper/ItemEdit$26;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    .line 708
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 709
    new-instance v8, Lcom/fleapapa/helper/ItemEdit$27;

    invoke-direct {v8, p0}, Lcom/fleapapa/helper/ItemEdit$27;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, p0

    move-object v4, v3

    move-object v10, v3

    .line 698
    invoke-static/range {v0 .. v10}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnCancelListener;)V

    move v0, v9

    .line 723
    :goto_0
    return v0

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit;->abort()V

    .line 723
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->preview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->preview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 101
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    return-void
.end method

.method prompt()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 677
    .line 678
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v3, v3, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 680
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 681
    new-instance v6, Lcom/fleapapa/helper/ItemEdit$24;

    invoke-direct {v6, p0}, Lcom/fleapapa/helper/ItemEdit$24;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    .line 686
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 687
    new-instance v8, Lcom/fleapapa/helper/ItemEdit$25;

    invoke-direct {v8, p0}, Lcom/fleapapa/helper/ItemEdit$25;-><init>(Lcom/fleapapa/helper/ItemEdit;)V

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v10, v1

    .line 677
    invoke-static/range {v0 .. v10}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 693
    return-void
.end method

.method relayout(Lcom/fleapapa/helper/Category;)V
    .locals 2
    .parameter "cat"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->focusCat:Lcom/fleapapa/helper/Category;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit;->focusCat:Lcom/fleapapa/helper/Category;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v1, p1, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-eqz v1, :cond_1

    move-object v1, p1

    :goto_0
    iget v1, v1, Lcom/fleapapa/helper/Category;->code:I

    iput v1, v0, Lcom/fleapapa/helper/Item;->code:I

    .line 595
    invoke-virtual {p1}, Lcom/fleapapa/helper/Category;->getLevel1()Lcom/fleapapa/helper/Category;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fleapapa/helper/ItemEdit;->layoutCat(Lcom/fleapapa/helper/Category;I)V

    .line 596
    return-void

    .line 593
    :cond_1
    invoke-virtual {p1}, Lcom/fleapapa/helper/Category;->getFirstLeaf()Lcom/fleapapa/helper/Category;

    move-result-object v1

    goto :goto_0
.end method

.method save()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 640
    invoke-virtual {p0}, Lcom/fleapapa/helper/ItemEdit;->changed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    const v3, 0x7f080091

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 647
    :cond_1
    const/4 v3, 0x0

    const v4, 0x7f06006c

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 648
    .local v1, pdlg:Landroid/app/ProgressDialog;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 649
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/fleapapa/helper/ItemEdit$22;

    invoke-direct {v2, p0, v1}, Lcom/fleapapa/helper/ItemEdit$22;-><init>(Lcom/fleapapa/helper/ItemEdit;Landroid/app/ProgressDialog;)V

    .line 669
    .local v2, runner:Ljava/lang/Runnable;
    new-instance v3, Lcom/fleapapa/helper/ItemEdit$23;

    const-string v4, "flea.item_save"

    invoke-direct {v3, p0, v4, v0, v2}, Lcom/fleapapa/helper/ItemEdit$23;-><init>(Lcom/fleapapa/helper/ItemEdit;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 674
    invoke-virtual {v3}, Lcom/fleapapa/helper/ItemEdit$23;->start()V

    goto :goto_0
.end method

.method setVisuals()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 474
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->type:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    move v2, v7

    .line 475
    .local v2, sell:Z
    :goto_0
    const v3, 0x7f0800a3

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->sellbuy:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 476
    const v3, 0x7f08009c

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->sellbuy:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 477
    const v3, 0x7f08009d

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->sellbuy:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 478
    const v3, 0x7f08009e

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_5

    move v4, v5

    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 479
    const v3, 0x7f08009a

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->sellbuy:Z

    if-nez v4, :cond_6

    move v4, v5

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 480
    const v3, 0x7f08009b

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->sellbuy:Z

    if-nez v4, :cond_7

    move v4, v5

    :goto_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->type:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    move v1, v7

    .line 483
    .local v1, consume:Z
    :goto_7
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v3, v3, 0xff8

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 484
    :cond_0
    const v3, 0x7f08009f

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_9

    move v4, v5

    :goto_8
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 486
    const v3, 0x7f0800a0

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_a

    move v4, v5

    :goto_9
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    move v0, v7

    .line 489
    .local v0, bidded:Z
    :goto_a
    const v3, 0x7f0800a9

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v4, v4, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    if-eqz v4, :cond_c

    move v4, v5

    :goto_b
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 490
    const v3, 0x7f0800ae

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v4, v4, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    if-eqz v4, :cond_d

    move v4, v5

    :goto_c
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 491
    const v3, 0x7f0800ad

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v4, v4, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v4, :cond_e

    if-nez v0, :cond_e

    move v4, v7

    :goto_d
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 492
    const v3, 0x7f0800ab

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v4, v4, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v4, :cond_f

    if-nez v0, :cond_f

    move v4, v7

    :goto_e
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 494
    const v3, 0x7f0800b4

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    if-eqz v4, :cond_10

    move v4, v5

    :goto_f
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 495
    const v3, 0x7f0800b7

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    if-eqz v4, :cond_11

    move v4, v5

    :goto_10
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 496
    const v3, 0x7f0800b8

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    if-eqz v4, :cond_12

    move v4, v6

    :goto_11
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 497
    return-void

    .end local v0           #bidded:Z
    .end local v1           #consume:Z
    .end local v2           #sell:Z
    :cond_1
    move v2, v5

    .line 474
    goto/16 :goto_0

    .restart local v2       #sell:Z
    :cond_2
    move v4, v6

    .line 475
    goto/16 :goto_1

    :cond_3
    move v4, v6

    .line 476
    goto/16 :goto_2

    :cond_4
    move v4, v6

    .line 477
    goto/16 :goto_3

    :cond_5
    move v4, v6

    .line 478
    goto/16 :goto_4

    :cond_6
    move v4, v6

    .line 479
    goto/16 :goto_5

    :cond_7
    move v4, v6

    .line 480
    goto/16 :goto_6

    :cond_8
    move v1, v5

    .line 482
    goto/16 :goto_7

    .restart local v1       #consume:Z
    :cond_9
    move v4, v6

    .line 484
    goto/16 :goto_8

    :cond_a
    move v4, v6

    .line 486
    goto/16 :goto_9

    :cond_b
    move v0, v5

    .line 488
    goto/16 :goto_a

    .restart local v0       #bidded:Z
    :cond_c
    move v4, v6

    .line 489
    goto/16 :goto_b

    :cond_d
    move v4, v6

    .line 490
    goto :goto_c

    :cond_e
    move v4, v5

    .line 491
    goto :goto_d

    :cond_f
    move v4, v5

    .line 492
    goto :goto_e

    :cond_10
    move v4, v6

    .line 494
    goto :goto_f

    :cond_11
    move v4, v6

    .line 495
    goto :goto_10

    :cond_12
    move v4, v5

    .line 496
    goto :goto_11
.end method

.method showTitle()V
    .locals 5

    .prologue
    .line 116
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const v0, 0x7f060066

    .line 123
    .local v0, rsid:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit;->currCat:Lcom/fleapapa/helper/Category;

    invoke-virtual {v4}, Lcom/fleapapa/helper/Category;->getReversePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemEdit;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 117
    .end local v0           #rsid:I
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    const v0, 0x7f060067

    .restart local v0       #rsid:I
    goto :goto_0

    .line 118
    .end local v0           #rsid:I
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    const v0, 0x7f060068

    .restart local v0       #rsid:I
    goto :goto_0

    .line 119
    .end local v0           #rsid:I
    :cond_2
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const v0, 0x7f060069

    .restart local v0       #rsid:I
    goto :goto_0

    .line 120
    .end local v0           #rsid:I
    :cond_3
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4

    const v0, 0x7f06006a

    .restart local v0       #rsid:I
    goto :goto_0

    .line 121
    .end local v0           #rsid:I
    :cond_4
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_5

    const v0, 0x7f06006b

    .restart local v0       #rsid:I
    goto :goto_0

    .line 122
    .end local v0           #rsid:I
    :cond_5
    const v0, 0x7f060065

    .restart local v0       #rsid:I
    goto :goto_0
.end method

.method upload_photo(Ljava/lang/String;)V
    .locals 11
    .parameter "photo_uri"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 127
    sget-object v0, Lcom/fleapapa/helper/ItemEdit;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 129
    .local v4, ucode:I
    const/4 v0, 0x0

    const v1, 0x7f06006f

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/ItemEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v9

    .line 135
    .local v9, pdlg:Landroid/app/ProgressDialog;
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 136
    .local v8, int_handler:Landroid/os/Handler;
    new-instance v7, Lcom/fleapapa/helper/ItemEdit$1;

    invoke-direct {v7, p0, v4, v9, v8}, Lcom/fleapapa/helper/ItemEdit$1;-><init>(Lcom/fleapapa/helper/ItemEdit;ILandroid/app/ProgressDialog;Landroid/os/Handler;)V

    .line 145
    .local v7, checker:Ljava/lang/Runnable;
    sput-object v7, Lcom/fleapapa/helper/ItemEdit;->wtf:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {v8, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 147
    .local v5, handler:Landroid/os/Handler;
    new-instance v6, Lcom/fleapapa/helper/ItemEdit$2;

    invoke-direct {v6, p0, v8, v7, v9}, Lcom/fleapapa/helper/ItemEdit$2;-><init>(Lcom/fleapapa/helper/ItemEdit;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    .line 179
    .local v6, done:Ljava/lang/Runnable;
    new-instance v0, Lcom/fleapapa/helper/ItemEdit$3;

    const-string v2, "flea.upload_photo"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/fleapapa/helper/ItemEdit$3;-><init>(Lcom/fleapapa/helper/ItemEdit;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemEdit$3;->start()V

    .line 185
    return-void
.end method
