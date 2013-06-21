.class public Lbx;
.super Ljava/lang/Object;


# instance fields
.field private 癤욱븳援:Li;

.field private 궗:Z

.field private 먯꽌:Z


# direct methods
.method public constructor <init>(Li;Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx;->癤욱븳援:Li;

    iput-boolean p3, p0, Lbx;->먯꽌:Z

    if-nez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbx;->궗:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Li;->궗(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lbx;->궗:Z

    goto :goto_0
.end method
