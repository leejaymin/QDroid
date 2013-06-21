.class public final Lccc71/utils/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lccc71/utils/a/p;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lccc71/utils/a/p;->a()Lccc71/utils/a/p;

    move-result-object v0

    sput-object v0, Lccc71/utils/r;->d:Lccc71/utils/a/p;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lccc71/utils/r;->a:Z

    .line 10
    iput-boolean v0, p0, Lccc71/utils/r;->b:Z

    .line 7
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Lccc71/utils/s;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 21
    :sswitch_0
    iput-boolean v1, p0, Lccc71/utils/r;->b:Z

    goto :goto_0

    .line 25
    :sswitch_1
    iput-boolean v1, p0, Lccc71/utils/r;->b:Z

    goto :goto_0

    .line 30
    :sswitch_2
    sget-object v0, Lccc71/utils/r;->d:Lccc71/utils/a/p;

    invoke-virtual {v0, p2}, Lccc71/utils/a/p;->d(Landroid/view/MotionEvent;)V

    .line 31
    iput-boolean v1, p0, Lccc71/utils/r;->a:Z

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    move v0, v1

    .line 33
    goto :goto_0

    .line 36
    :sswitch_3
    iget-boolean v2, p0, Lccc71/utils/r;->b:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lccc71/utils/r;->a:Z

    if-eqz v2, :cond_0

    .line 38
    :cond_1
    iput-boolean v0, p0, Lccc71/utils/r;->b:Z

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 40
    iput-boolean v0, p0, Lccc71/utils/r;->a:Z

    move v0, v1

    .line 42
    goto :goto_0

    .line 48
    :sswitch_4
    sget-object v1, Lccc71/utils/r;->d:Lccc71/utils/a/p;

    invoke-virtual {v1, p2}, Lccc71/utils/a/p;->c(Landroid/view/MotionEvent;)V

    .line 49
    iput v0, p0, Lccc71/utils/r;->c:I

    goto :goto_0

    .line 53
    :sswitch_5
    iget-boolean v0, p0, Lccc71/utils/r;->a:Z

    if-eqz v0, :cond_3

    .line 55
    sget-object v0, Lccc71/utils/r;->d:Lccc71/utils/a/p;

    invoke-virtual {v0, p2}, Lccc71/utils/a/p;->a(Landroid/view/MotionEvent;)F

    move-result v0

    .line 56
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_7

    .line 58
    invoke-interface {p3, v0}, Lccc71/utils/s;->a(F)V

    .line 59
    iput-boolean v1, p0, Lccc71/utils/r;->b:Z

    .line 61
    invoke-interface {p3}, Lccc71/utils/s;->i()Lccc71/utils/q;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    invoke-interface {p3}, Lccc71/utils/s;->i()Lccc71/utils/q;

    move-result-object v0

    invoke-interface {p3}, Lccc71/utils/s;->d()F

    move-result v2

    invoke-interface {v0, p1, v2}, Lccc71/utils/q;->a(Landroid/view/View;F)V

    :cond_2
    move v0, v1

    .line 64
    goto :goto_0

    .line 69
    :cond_3
    sget-object v0, Lccc71/utils/r;->d:Lccc71/utils/a/p;

    invoke-virtual {v0, p2}, Lccc71/utils/a/p;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 70
    if-eqz v0, :cond_7

    .line 72
    int-to-float v2, v0

    invoke-interface {p3, v2}, Lccc71/utils/s;->b(F)F

    .line 73
    iget v2, p0, Lccc71/utils/r;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lccc71/utils/r;->c:I

    .line 75
    iget v0, p0, Lccc71/utils/r;->c:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_4

    iget v0, p0, Lccc71/utils/r;->c:I

    const/4 v2, -0x5

    if-ge v0, v2, :cond_5

    .line 77
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 78
    iput-boolean v1, p0, Lccc71/utils/r;->b:Z

    .line 81
    :cond_5
    invoke-interface {p3}, Lccc71/utils/s;->i()Lccc71/utils/q;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 82
    invoke-interface {p3}, Lccc71/utils/s;->i()Lccc71/utils/q;

    move-result-object v0

    invoke-interface {p3}, Lccc71/utils/s;->g()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, p1, v2}, Lccc71/utils/q;->a(Landroid/view/View;I)V

    :cond_6
    move v0, v1

    .line 84
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 88
    goto/16 :goto_0

    .line 17
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x105 -> :sswitch_2
        0x106 -> :sswitch_1
    .end sparse-switch
.end method
