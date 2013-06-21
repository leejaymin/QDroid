.class public Lcom/fleapapa/helper/Item;
.super Ljava/lang/Object;
.source "Item.java"


# static fields
.field public static final WHO:Ljava/lang/String; = "Item"

.field static ccname:[Ljava/lang/String;

.field static ccrate:[D


# instance fields
.field biddable:Z

.field bids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fleapapa/helper/Bid;",
            ">;"
        }
    .end annotation
.end field

.field buynow:D

.field callable:Z

.field classx:I

.field code:I

.field ctime:Ljava/lang/String;

.field currency:I

.field deadline:Ljava/lang/String;

.field detail:Ljava/lang/String;

.field dist:I

.field email:Ljava/lang/String;

.field flags:I

.field icon:Landroid/graphics/drawable/Drawable;

.field iid:I

.field lati:I

.field ll:Landroid/widget/LinearLayout;

.field loni:I

.field mailable:Z

.field maxbid:D

.field mbid:D

.field minbid:D

.field nbid:I

.field ncomt:I

.field nsold:I

.field nview:I

.field nwatch:I

.field phone:Ljava/lang/String;

.field photos:Ljava/lang/String;

.field qas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fleapapa/helper/QA;",
            ">;"
        }
    .end annotation
.end field

.field qty:I

.field ratn:I

.field ratp:I

.field rats:I

.field ratx:I

.field rdist:I

.field refetch:Z

.field reserve:D

.field title:Ljava/lang/String;

.field tleft:Ljava/lang/String;

.field tpago:Ljava/lang/String;

.field type:I

.field uid:I

.field usd:D

.field user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "$"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u00a5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u20ac"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C$"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u00a3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "A$"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Fr "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NT$"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "C\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u20a9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MEX$"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u0420."

    aput-object v2, v0, v1

    sput-object v0, Lcom/fleapapa/helper/Item;->ccname:[Ljava/lang/String;

    .line 49
    new-array v0, v3, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fleapapa/helper/Item;->ccrate:[D

    .line 13
    return-void

    .line 49
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x33t 0x33t 0x33t 0x33t 0x33t 0xf3t 0x57t 0x40t
        0x85t 0xebt 0x51t 0xb8t 0x1et 0x85t 0xe7t 0x3ft
        0xe3t 0xa5t 0x9bt 0xc4t 0x20t 0xb0t 0xf2t 0x3ft
        0x1ft 0x85t 0xebt 0x51t 0xb8t 0x1et 0xe5t 0x3ft
        0xf4t 0xfdt 0xd4t 0x78t 0xe9t 0x26t 0xf5t 0x3ft
        0x83t 0xc0t 0xcat 0xa1t 0x45t 0xb6t 0xf1t 0x3ft
        0xat 0xd7t 0xa3t 0x70t 0x3dt 0x7at 0x40t 0x40t
        0x2t 0x2bt 0x87t 0x16t 0xd9t 0x4et 0x1bt 0x40t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x5dt 0x93t 0x40t
        0x60t 0xe5t 0xd0t 0x22t 0xdbt 0xb9t 0x2at 0x40t
        0xaat 0xf1t 0xd2t 0x4dt 0x62t 0x0t 0x40t 0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/fleapapa/helper/Item;->qty:I

    .line 38
    iput-boolean v0, p0, Lcom/fleapapa/helper/Item;->refetch:Z

    .line 52
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .parameter "uid"
    .parameter "iid"
    .parameter "code"
    .parameter "title"

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/fleapapa/helper/Item;->qty:I

    .line 38
    iput-boolean v0, p0, Lcom/fleapapa/helper/Item;->refetch:Z

    .line 55
    iput p3, p0, Lcom/fleapapa/helper/Item;->code:I

    .line 56
    iput-object p4, p0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    .line 57
    iput p1, p0, Lcom/fleapapa/helper/Item;->uid:I

    .line 58
    iput p2, p0, Lcom/fleapapa/helper/Item;->iid:I

    .line 59
    invoke-static {p0}, Lcom/fleapapa/helper/Item;->add(Lcom/fleapapa/helper/Item;)V

    .line 60
    return-void
.end method

.method static add(Lcom/fleapapa/helper/Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 169
    sget-object v0, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method static decodeDesc(Ljava/lang/String;)Lcom/fleapapa/helper/Item;
    .locals 8
    .parameter "line"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "@i_"

    .line 65
    const-string v2, "@i_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Item.decodeDesc: no item magic: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 115
    :goto_0
    return-object v2

    .line 69
    :cond_0
    const-string v2, "@i_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\\\"

    const/16 v4, 0x28

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, t:[Ljava/lang/String;
    array-length v2, v1

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 72
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Item.decodeDesc: bad item line only has "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fields!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    aget-object v2, v1, v7

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/fleapapa/helper/ItemList;->item(I)Lcom/fleapapa/helper/Item;

    move-result-object v0

    .line 76
    .local v0, item:Lcom/fleapapa/helper/Item;
    if-nez v0, :cond_2

    .line 77
    new-instance v0, Lcom/fleapapa/helper/Item;

    .end local v0           #item:Lcom/fleapapa/helper/Item;
    aget-object v2, v1, v6

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v1, v7

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x7

    aget-object v5, v1, v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/fleapapa/helper/Item;-><init>(IIILjava/lang/String;)V

    .line 78
    .restart local v0       #item:Lcom/fleapapa/helper/Item;
    :cond_2
    aget-object v2, v1, v6

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->uid:I

    .line 79
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->type:I

    .line 80
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->loni:I

    .line 81
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->lati:I

    .line 82
    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->flags:I

    .line 83
    iget v2, v0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_3

    move v2, v7

    :goto_1
    iput-boolean v2, v0, Lcom/fleapapa/helper/Item;->biddable:Z

    .line 84
    iget v2, v0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    move v2, v7

    :goto_2
    iput-boolean v2, v0, Lcom/fleapapa/helper/Item;->callable:Z

    .line 85
    iget v2, v0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    move v2, v7

    :goto_3
    iput-boolean v2, v0, Lcom/fleapapa/helper/Item;->mailable:Z

    .line 86
    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->rdist:I

    .line 87
    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/fleapapa/helper/Item;->buynow:D

    .line 88
    const/16 v2, 0xa

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/fleapapa/helper/Item;->minbid:D

    .line 89
    const/16 v2, 0xb

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    .line 90
    const/16 v2, 0xc

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/fleapapa/helper/Item;->phone:Ljava/lang/String;

    .line 91
    const/16 v2, 0xd

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/fleapapa/helper/Item;->email:Ljava/lang/String;

    .line 92
    const/16 v2, 0xe

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/fleapapa/helper/Item;->photos:Ljava/lang/String;

    .line 93
    const/16 v2, 0xf

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/fleapapa/helper/Item;->tleft:Ljava/lang/String;

    .line 94
    const/16 v2, 0x10

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->ratp:I

    .line 95
    const/16 v2, 0x11

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->ratn:I

    .line 96
    const/16 v2, 0x12

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/fleapapa/helper/Item;->user:Ljava/lang/String;

    .line 97
    const/16 v2, 0x13

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->classx:I

    .line 98
    const/16 v2, 0x14

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/fleapapa/helper/Item;->ctime:Ljava/lang/String;

    .line 99
    const/16 v2, 0x15

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->nview:I

    .line 100
    const/16 v2, 0x16

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->ncomt:I

    .line 101
    const/16 v2, 0x17

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->currency:I

    .line 102
    iget-wide v2, v0, Lcom/fleapapa/helper/Item;->buynow:D

    sget-object v4, Lcom/fleapapa/helper/Item;->ccrate:[D

    iget v5, v0, Lcom/fleapapa/helper/Item;->currency:I

    aget-wide v4, v4, v5

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/fleapapa/helper/Item;->usd:D

    .line 103
    const/16 v2, 0x18

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/fleapapa/helper/Item;->reserve:D

    .line 104
    const/16 v2, 0x19

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->qty:I

    .line 105
    const/16 v2, 0x1a

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->nbid:I

    .line 106
    const/16 v2, 0x1b

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/fleapapa/helper/Item;->mbid:D

    .line 107
    const/16 v2, 0x1c

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->nsold:I

    .line 108
    const/16 v2, 0x1d

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->ratx:I

    .line 109
    const/16 v2, 0x1e

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->nwatch:I

    .line 110
    const/16 v2, 0x1f

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/fleapapa/helper/Item;->tpago:Ljava/lang/String;

    .line 112
    iget v2, v0, Lcom/fleapapa/helper/Item;->ratp:I

    iget v3, v0, Lcom/fleapapa/helper/Item;->ratn:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/fleapapa/helper/Item;->ratx:I

    mul-int/lit8 v3, v3, 0x9

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/fleapapa/helper/Item;->rats:I

    .line 114
    iget v2, v0, Lcom/fleapapa/helper/Item;->lati:I

    iget v3, v0, Lcom/fleapapa/helper/Item;->loni:I

    invoke-static {v2, v3}, Lcom/fleapapa/util/MyUtil;->distance(II)F

    move-result v2

    const/high16 v3, 0x4120

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/fleapapa/helper/Item;->dist:I

    move-object v2, v0

    .line 115
    goto/16 :goto_0

    :cond_3
    move v2, v6

    .line 83
    goto/16 :goto_1

    :cond_4
    move v2, v6

    .line 84
    goto/16 :goto_2

    :cond_5
    move v2, v6

    .line 85
    goto/16 :goto_3
.end method

.method static loadMyItems()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method static remove(Lcom/fleapapa/helper/Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 172
    sget-object v0, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method


# virtual methods
.method ended()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    iget v0, p0, Lcom/fleapapa/helper/Item;->nsold:I

    iget v1, p0, Lcom/fleapapa/helper/Item;->qty:I

    if-lt v0, v1, :cond_0

    move v0, v3

    .line 205
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/Item;->tleft:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/Item;->tleft:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method iwin()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 208
    iget-object v3, p0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    move v3, v7

    .line 218
    :goto_0
    return v3

    .line 210
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, ns:I
    :goto_1
    iget-object v3, p0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget v3, p0, Lcom/fleapapa/helper/Item;->qty:I

    if-lt v2, v3, :cond_2

    :cond_1
    move v3, v7

    .line 218
    goto :goto_0

    .line 211
    :cond_2
    iget-object v3, p0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Bid;

    .line 212
    .local v0, b:Lcom/fleapapa/helper/Bid;
    iget-wide v3, p0, Lcom/fleapapa/helper/Item;->buynow:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    iget-wide v3, v0, Lcom/fleapapa/helper/Bid;->bid:D

    iget-wide v5, p0, Lcom/fleapapa/helper/Item;->buynow:D

    cmpl-double v3, v3, v5

    if-gez v3, :cond_5

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/fleapapa/helper/Item;->ended()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v3, v0, Lcom/fleapapa/helper/Bid;->bid:D

    iget-wide v5, p0, Lcom/fleapapa/helper/Item;->reserve:D

    cmpl-double v3, v3, v5

    if-gez v3, :cond_5

    :cond_4
    move v3, v7

    .line 214
    goto :goto_0

    .line 215
    :cond_5
    iget v3, v0, Lcom/fleapapa/helper/Bid;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-ne v3, v4, :cond_7

    .line 216
    iget v3, v0, Lcom/fleapapa/helper/Bid;->qty:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/fleapapa/helper/Item;->qty:I

    if-ge v3, v4, :cond_6

    iget v3, v0, Lcom/fleapapa/helper/Bid;->qty:I

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/fleapapa/helper/Item;->qty:I

    sub-int/2addr v3, v2

    goto :goto_0

    .line 210
    :cond_7
    add-int/lit8 v1, v1, 0x1

    iget v3, v0, Lcom/fleapapa/helper/Bid;->qty:I

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method nextbid(I)D
    .locals 8
    .parameter "qty"

    .prologue
    .line 177
    const/4 v3, 0x0

    .local v3, ng:I
    move v2, v3

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 182
    :cond_0
    iget-wide v4, p0, Lcom/fleapapa/helper/Item;->buynow:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 183
    iget v4, p0, Lcom/fleapapa/helper/Item;->qty:I

    if-le v3, v4, :cond_2

    .line 184
    iget-object v4, p0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    const/4 v5, 0x1

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/fleapapa/helper/Bid;

    iget-wide v4, p1, Lcom/fleapapa/helper/Bid;->bid:D

    iget-wide v6, p0, Lcom/fleapapa/helper/Item;->buynow:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 185
    const-wide/16 v4, 0x0

    .line 201
    :goto_1
    return-wide v4

    .line 178
    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Bid;

    iget v4, v0, Lcom/fleapapa/helper/Bid;->qty:I

    add-int/2addr v3, v4

    .line 179
    add-int v4, p1, v3

    iget v5, p0, Lcom/fleapapa/helper/Item;->qty:I

    if-gt v4, v5, :cond_0

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local p1
    :cond_2
    iget-object v4, p0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 188
    iget-wide v4, p0, Lcom/fleapapa/helper/Item;->minbid:D

    goto :goto_1

    .line 189
    :cond_3
    iget-object v4, p0, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fleapapa/helper/Bid;

    iget-wide v0, p1, Lcom/fleapapa/helper/Bid;->bid:D

    .line 190
    .local v0, cbid:D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_5

    const-wide v0, 0x3fb999999999999aL

    .line 198
    :goto_2
    iget-wide v4, p0, Lcom/fleapapa/helper/Item;->buynow:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 199
    iget-wide v4, p0, Lcom/fleapapa/helper/Item;->buynow:D

    cmpg-double v4, v4, v0

    if-gez v4, :cond_4

    .line 200
    iget-wide v0, p0, Lcom/fleapapa/helper/Item;->buynow:D

    :cond_4
    move-wide v4, v0

    .line 201
    goto :goto_1

    .line 191
    :cond_5
    const-wide/high16 v4, 0x4024

    cmpg-double v4, v0, v4

    if-gez v4, :cond_6

    const-wide v4, 0x3fb999999999999aL

    add-double/2addr v0, v4

    goto :goto_2

    .line 192
    :cond_6
    const-wide/high16 v4, 0x4059

    cmpg-double v4, v0, v4

    if-gez v4, :cond_7

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v0, v4

    goto :goto_2

    .line 193
    :cond_7
    const-wide v4, 0x408f400000000000L

    cmpg-double v4, v0, v4

    if-gez v4, :cond_8

    const-wide/high16 v4, 0x4024

    add-double/2addr v0, v4

    goto :goto_2

    .line 194
    :cond_8
    const-wide v4, 0x40c3880000000000L

    cmpg-double v4, v0, v4

    if-gez v4, :cond_9

    const-wide/high16 v4, 0x4059

    add-double/2addr v0, v4

    goto :goto_2

    .line 195
    :cond_9
    const-wide v4, 0x412e848000000000L

    cmpg-double v4, v0, v4

    if-gez v4, :cond_a

    const-wide v4, 0x408f400000000000L

    add-double/2addr v0, v4

    goto :goto_2

    .line 196
    :cond_a
    const-wide v4, 0x40c3880000000000L

    add-double/2addr v0, v4

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    return-object v0
.end method
