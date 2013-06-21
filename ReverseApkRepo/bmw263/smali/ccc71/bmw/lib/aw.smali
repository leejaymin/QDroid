.class final Lccc71/bmw/lib/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private final synthetic b:Landroid/widget/ImageButton;

.field private final synthetic c:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/aw;->b:Landroid/widget/ImageButton;

    iput-object p2, p0, Lccc71/bmw/lib/aw;->c:Landroid/widget/ImageButton;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0xc8

    iput v0, p0, Lccc71/bmw/lib/aw;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 74
    iget-object v0, p0, Lccc71/bmw/lib/aw;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lccc71/bmw/lib/aw;->b:Landroid/widget/ImageButton;

    iget v1, p0, Lccc71/bmw/lib/aw;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 76
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/aw;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lccc71/bmw/lib/aw;->c:Landroid/widget/ImageButton;

    iget v1, p0, Lccc71/bmw/lib/aw;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 78
    :cond_1
    iget v0, p0, Lccc71/bmw/lib/aw;->a:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lccc71/bmw/lib/aw;->a:I

    .line 79
    iget v0, p0, Lccc71/bmw/lib/aw;->a:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_2

    .line 81
    invoke-static {}, Lccc71/bmw/lib/av;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lccc71/bmw/lib/av;->b()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/aw;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lccc71/bmw/lib/aw;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 87
    invoke-static {}, Lccc71/bmw/lib/av;->c()V

    goto :goto_0
.end method
