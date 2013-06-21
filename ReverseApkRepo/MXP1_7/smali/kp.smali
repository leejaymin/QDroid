.class public Lkp;
.super Ljava/lang/Object;


# instance fields
.field final 癤욱븳援:Ljava/lang/CharSequence;

.field final 궗:I

.field final 먯꽌:F


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkp;->癤욱븳援:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    iput v0, p0, Lkp;->궗:I

    iput p2, p0, Lkp;->먯꽌:F

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkp;->癤욱븳援:Ljava/lang/CharSequence;

    iput p2, p0, Lkp;->궗:I

    const/4 v0, 0x0

    iput v0, p0, Lkp;->먯꽌:F

    return-void
.end method
