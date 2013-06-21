.class public Lccc71/bmw/pro/bmw_widget_graph_extra_large;
.super Lccc71/bmw/pro/bmw_widget_graph;
.source "SourceFile"


# static fields
.field private static H:[I


# instance fields
.field private final G:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 11
    sput-object v0, Lccc71/bmw/pro/bmw_widget_graph_extra_large;->H:[I

    .line 7
    return-void

    .line 12
    :array_0
    .array-data 0x4
        0x49t 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lccc71/bmw/pro/bmw_widget_graph;-><init>()V

    .line 9
    const/16 v0, 0x120

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph_extra_large;->G:I

    .line 7
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x6

    if-lt p2, v0, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 38
    :goto_0
    invoke-virtual {p0, p1, v0}, Lccc71/bmw/pro/bmw_widget_graph_extra_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 40
    const v1, 0x7f0800eb

    const-string v2, "setImageResource"

    sget-object v3, Lccc71/bmw/pro/bmw_widget_graph_extra_large;->H:[I

    aget v3, v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 41
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030079

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f00

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 48
    const/high16 v1, 0x4390

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lccc71/bmw/pro/bmw_widget_graph_extra_large;->s:I

    .line 49
    const/high16 v1, 0x4290

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_graph_extra_large;->t:I

    .line 51
    invoke-super {p0, p1, p2, p3}, Lccc71/bmw/pro/bmw_widget_graph;->a(Landroid/content/Context;II)V

    .line 52
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x3

    return v0
.end method
