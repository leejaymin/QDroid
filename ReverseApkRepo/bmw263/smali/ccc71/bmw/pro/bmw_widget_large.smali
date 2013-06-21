.class public Lccc71/bmw/pro/bmw_widget_large;
.super Lccc71/bmw/lib/bmw_widget;
.source "SourceFile"


# static fields
.field static s:[I

.field private static y:[I


# instance fields
.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 19
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 18
    sput-object v0, Lccc71/bmw/pro/bmw_widget_large;->y:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 35
    sput-object v0, Lccc71/bmw/pro/bmw_widget_large;->s:[I

    .line 10
    return-void

    .line 19
    nop

    :array_0
    .array-data 0x4
        0x59t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0x45t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
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
    .line 10
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_widget;-><init>()V

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->t:I

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->u:I

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->v:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->w:I

    .line 16
    const/4 v0, 0x5

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->x:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0800eb

    const/4 v0, 0x6

    .line 68
    if-eqz p3, :cond_1

    .line 70
    if-lt p2, v0, :cond_0

    .line 71
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030080

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 75
    :goto_0
    sget-object v1, Lccc71/bmw/pro/bmw_widget_large;->y:[I

    aget v1, v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 86
    :goto_1
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 79
    :cond_1
    if-lt p2, v0, :cond_2

    .line 80
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 84
    :goto_2
    sget-object v1, Lccc71/bmw/pro/bmw_widget_large;->s:[I

    aget v1, v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 82
    :cond_2
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03007e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method protected final a(Landroid/content/Context;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p1, p2}, Lccc71/bmw/pro/bmw_settings;->w(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->t:I

    .line 56
    invoke-static {p1, p2}, Lccc71/bmw/pro/bmw_settings;->x(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->u:I

    .line 57
    invoke-static {p1, p2}, Lccc71/bmw/pro/bmw_settings;->y(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->v:I

    .line 58
    invoke-static {p1, p2}, Lccc71/bmw/pro/bmw_settings;->z(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->w:I

    .line 59
    invoke-static {p1, p2}, Lccc71/bmw/pro/bmw_settings;->A(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_widget_large;->x:I

    .line 61
    invoke-super {p0, p1, p2, p3}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;II)V

    .line 62
    return-void
.end method

.method protected final a(Landroid/widget/RemoteViews;Lccc71/bmw/lib/ei;Landroid/content/Context;I)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v10, 0x7f0800f6

    const v3, 0x7f0800f5

    const v9, 0x7f0800f4

    const v4, 0x7f0800ef

    const/high16 v8, 0x4160

    .line 92
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 96
    :goto_0
    iget v1, p2, Lccc71/bmw/lib/ei;->m:I

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 97
    iget v1, p2, Lccc71/bmw/lib/ei;->m:I

    invoke-virtual {p1, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 98
    const v1, 0x7f0800f8

    iget v2, p2, Lccc71/bmw/lib/ei;->m:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 99
    iget v1, p2, Lccc71/bmw/lib/ei;->m:I

    invoke-virtual {p1, v9, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 103
    invoke-static {p3, p4}, Lccc71/bmw/pro/bmw_settings;->o(Landroid/content/Context;I)I

    move-result v1

    .line 104
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 106
    const/16 v0, 0x8

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 121
    :goto_1
    iget v0, p2, Lccc71/bmw/lib/ei;->k:I

    if-ltz v0, :cond_0

    .line 123
    iget v0, p2, Lccc71/bmw/lib/ei;->k:I

    invoke-static {p3, p1, v0}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 126
    :cond_0
    iget v0, p2, Lccc71/bmw/lib/ei;->c:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    .line 128
    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    if-eqz v0, :cond_4

    .line 130
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->t:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 131
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->u:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v3, v10

    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 132
    const v3, 0x7f0800f7

    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->v:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 133
    const v3, 0x7f0800f8

    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->w:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 134
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->x:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    move-object v2, p1

    move-object v1, p3

    move-object v0, p0

    :goto_2
    move v3, v9

    .line 151
    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 153
    :goto_3
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 110
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 111
    if-eqz v0, :cond_3

    .line 113
    sget-object v0, Lccc71/bmw/pro/bmw_widget_large;->e:[I

    invoke-static {p3, p4}, Lccc71/bmw/pro/bmw_settings;->o(Landroid/content/Context;I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 117
    :cond_3
    sget-object v0, Lccc71/bmw/pro/bmw_widget_large;->f:[I

    invoke-static {p3, p4}, Lccc71/bmw/pro/bmw_settings;->o(Landroid/content/Context;I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 138
    :cond_4
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->t:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZI)V

    .line 139
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->u:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v3, v10

    invoke-virtual/range {v0 .. v6}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZI)V

    .line 140
    const v3, 0x7f0800f7

    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->v:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZI)V

    .line 141
    const v3, 0x7f0800f8

    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->w:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZI)V

    .line 142
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->x:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZI)V

    goto :goto_3

    .line 147
    :cond_5
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->t:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    if-eqz v0, :cond_6

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    :goto_4
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 148
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->u:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    if-eqz v0, :cond_7

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    :goto_5
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v3, v10

    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 149
    const v3, 0x7f0800f7

    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->v:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    if-eqz v0, :cond_8

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    :goto_6
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 150
    const v3, 0x7f0800f8

    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->w:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    if-eqz v0, :cond_9

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    :goto_7
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lccc71/bmw/pro/bmw_widget_large;->a(Landroid/content/Context;Landroid/widget/RemoteViews;IIZIF)V

    .line 151
    iget v4, p0, Lccc71/bmw/pro/bmw_widget_large;->x:I

    iget-boolean v5, p2, Lccc71/bmw/lib/ei;->d:Z

    iget v6, p2, Lccc71/bmw/lib/ei;->m:I

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    if-eqz v0, :cond_a

    iget v0, p2, Lccc71/bmw/lib/ei;->e:I

    int-to-float v7, v0

    move-object v2, p1

    move-object v1, p3

    move-object v0, p0

    goto/16 :goto_2

    :cond_6
    move v7, v8

    .line 147
    goto :goto_4

    :cond_7
    move v7, v8

    .line 148
    goto :goto_5

    :cond_8
    move v7, v8

    .line 149
    goto :goto_6

    :cond_9
    move v7, v8

    .line 150
    goto :goto_7

    :cond_a
    move v7, v8

    move-object v2, p1

    move-object v1, p3

    move-object v0, p0

    .line 151
    goto/16 :goto_2
.end method
