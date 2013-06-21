.class public Lcom/stickycoding/rokon/DrawOrder;
.super Ljava/lang/Object;
.source "DrawOrder.java"


# static fields
.field public static final FASTEST:I = 0x0

.field protected static XAscendingComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/stickycoding/rokon/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected static XDescendingComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/stickycoding/rokon/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final X_ASCENDING:I = 0x1

.field public static final X_DESCENDING:I = 0x2

.field protected static YAscendingComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/stickycoding/rokon/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected static YDescendingComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/stickycoding/rokon/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y_ASCENDING:I = 0x3

.field public static final Y_DESCENDING:I = 0x4

.field protected static ZComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/stickycoding/rokon/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final Z_ORDER:I = 0x5


# instance fields
.field protected method:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/stickycoding/rokon/DrawOrder$1;

    invoke-direct {v0}, Lcom/stickycoding/rokon/DrawOrder$1;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/DrawOrder;->XAscendingComparator:Ljava/util/Comparator;

    .line 61
    new-instance v0, Lcom/stickycoding/rokon/DrawOrder$2;

    invoke-direct {v0}, Lcom/stickycoding/rokon/DrawOrder$2;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/DrawOrder;->XDescendingComparator:Ljava/util/Comparator;

    .line 71
    new-instance v0, Lcom/stickycoding/rokon/DrawOrder$3;

    invoke-direct {v0}, Lcom/stickycoding/rokon/DrawOrder$3;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/DrawOrder;->YAscendingComparator:Ljava/util/Comparator;

    .line 81
    new-instance v0, Lcom/stickycoding/rokon/DrawOrder$4;

    invoke-direct {v0}, Lcom/stickycoding/rokon/DrawOrder$4;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/DrawOrder;->YDescendingComparator:Ljava/util/Comparator;

    .line 91
    new-instance v0, Lcom/stickycoding/rokon/DrawOrder$5;

    invoke-direct {v0}, Lcom/stickycoding/rokon/DrawOrder$5;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/DrawOrder;->ZComparator:Ljava/util/Comparator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/stickycoding/rokon/DrawOrder;->method:I

    .line 11
    return-void
.end method

.method public static sort(Lcom/stickycoding/rokon/FixedSizeArray;I)V
    .locals 2
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Lcom/stickycoding/rokon/Drawable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p0, gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<Lcom/stickycoding/rokon/Drawable;>;"
    const/4 v1, 0x1

    .line 27
    packed-switch p1, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 29
    :pswitch_0
    sget-object v0, Lcom/stickycoding/rokon/DrawOrder;->XAscendingComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->setComparator(Ljava/util/Comparator;)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->sort(Z)V

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object v0, Lcom/stickycoding/rokon/DrawOrder;->YAscendingComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->setComparator(Ljava/util/Comparator;)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->sort(Z)V

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/stickycoding/rokon/DrawOrder;->XDescendingComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->setComparator(Ljava/util/Comparator;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->sort(Z)V

    goto :goto_0

    .line 41
    :pswitch_3
    sget-object v0, Lcom/stickycoding/rokon/DrawOrder;->YDescendingComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->setComparator(Ljava/util/Comparator;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->sort(Z)V

    goto :goto_0

    .line 45
    :pswitch_4
    sget-object v0, Lcom/stickycoding/rokon/DrawOrder;->ZComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->setComparator(Ljava/util/Comparator;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->sort(Z)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
