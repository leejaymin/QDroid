.class final Landroid/support/v4/view/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroid/support/v4/view/ai;

    check-cast p2, Landroid/support/v4/view/ai;

    iget v0, p1, Landroid/support/v4/view/ai;->b:I

    iget v1, p2, Landroid/support/v4/view/ai;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
