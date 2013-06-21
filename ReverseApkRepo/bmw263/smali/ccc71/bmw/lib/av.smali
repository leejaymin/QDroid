.class public final Lccc71/bmw/lib/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lccc71/bmw/lib/av;->a:Landroid/os/Handler;

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    .line 10
    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lccc71/bmw/lib/av;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    sget v0, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_list_view;

    .line 19
    if-eqz v0, :cond_0

    .line 20
    sget v1, Lccc71/bmw/lib/g;->cd:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_list_view;->setText(Ljava/lang/String;)V

    .line 22
    :cond_0
    sget v0, Lccc71/bmw/lib/d;->bO:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    if-eqz v0, :cond_1

    .line 24
    sget v1, Lccc71/bmw/lib/g;->cd:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_1
    return-void
.end method

.method static synthetic b()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 29
    sget v0, Lccc71/bmw/lib/d;->de:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 30
    sget v1, Lccc71/bmw/lib/d;->da:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 35
    sget-object v0, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lccc71/bmw/lib/av;->a:Landroid/os/Handler;

    sget-object v1, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    .line 40
    :cond_0
    return-void
.end method

.method static synthetic c()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 44
    sget v0, Lccc71/bmw/lib/d;->de:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 45
    sget v1, Lccc71/bmw/lib/d;->da:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 47
    invoke-static {}, Lccc71/bmw/lib/bi;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 56
    :goto_0
    invoke-static {}, Lccc71/bmw/lib/bi;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 65
    :goto_1
    sget-object v2, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 66
    sget-object v2, Lccc71/bmw/lib/av;->a:Landroid/os/Handler;

    sget-object v3, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    :cond_0
    new-instance v2, Lccc71/bmw/lib/aw;

    invoke-direct {v2, v1, v0}, Lccc71/bmw/lib/aw;-><init>(Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    sput-object v2, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    .line 91
    sget-object v0, Lccc71/bmw/lib/av;->a:Landroid/os/Handler;

    sget-object v1, Lccc71/bmw/lib/av;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void

    .line 53
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method
