.class public Lccc71/pmw/pro/pmw_widget_2x1;
.super Lccc71/pmw/lib/pmw_widget;
.source "SourceFile"


# static fields
.field private static p:[I

.field private static q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccc71/pmw/pro/pmw_widget_2x1;->p:[I

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lccc71/pmw/pro/pmw_widget_2x1;->q:[I

    .line 16
    return-void

    .line 18
    :array_0
    .array-data 0x4
        0x86t 0x0t 0x3t 0x7ft
        0x8bt 0x0t 0x3t 0x7ft
        0x89t 0x0t 0x3t 0x7ft
        0x87t 0x0t 0x3t 0x7ft
    .end array-data

    .line 24
    :array_1
    .array-data 0x4
        0x8dt 0x0t 0x3t 0x7ft
        0x8ct 0x0t 0x3t 0x7ft
        0x8at 0x0t 0x3t 0x7ft
        0x88t 0x0t 0x3t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_widget;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccc71/pmw/lib/qm;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p2}, Lccc71/pmw/lib/pmw_settings;->aL(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/pmw/pro/pmw_widget_2x1;->i:I

    .line 36
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->u(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->n:I

    .line 37
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->v(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->p:I

    .line 39
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->w(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->o:I

    .line 40
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->x(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->q:I

    .line 42
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->l(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->l:I

    .line 43
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->i:I

    .line 44
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->s(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->m:I

    .line 46
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->u:I

    .line 48
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->m(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->c:I

    .line 49
    iget v0, p1, Lccc71/pmw/lib/qm;->c:I

    if-nez v0, :cond_1

    .line 51
    iget v0, p1, Lccc71/pmw/lib/qm;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p1, Lccc71/pmw/lib/qm;->a:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    .line 53
    :cond_0
    const/4 v0, -0x1

    iput v0, p1, Lccc71/pmw/lib/qm;->c:I

    .line 61
    :cond_1
    :goto_0
    iget v0, p1, Lccc71/pmw/lib/qm;->u:I

    invoke-static {v0}, Lccc71/pmw/pro/pmw_widget_2x1;->a(I)V

    .line 63
    iget v0, p1, Lccc71/pmw/lib/qm;->n:I

    invoke-static {v0}, Lccc71/pmw/pro/pmw_widget_2x1;->a(I)V

    .line 64
    iget v0, p1, Lccc71/pmw/lib/qm;->p:I

    invoke-static {v0}, Lccc71/pmw/pro/pmw_widget_2x1;->a(I)V

    .line 65
    iget v0, p1, Lccc71/pmw/lib/qm;->o:I

    invoke-static {v0}, Lccc71/pmw/pro/pmw_widget_2x1;->a(I)V

    .line 66
    iget v0, p1, Lccc71/pmw/lib/qm;->q:I

    invoke-static {v0}, Lccc71/pmw/pro/pmw_widget_2x1;->a(I)V

    .line 68
    iget v0, p1, Lccc71/pmw/lib/qm;->u:I

    invoke-static {v0}, Lccc71/pmw/pro/pmw_widget_2x1;->a(I)V

    .line 69
    return-void

    .line 57
    :cond_2
    const/high16 v0, -0x100

    iput v0, p1, Lccc71/pmw/lib/qm;->c:I

    goto :goto_0
.end method

.method protected final a(Lccc71/pmw/lib/qm;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f09019e

    const v7, 0x7f09019d

    const v6, 0x7f09019b

    const/4 v1, 0x0

    const v5, 0x7f0901aa

    .line 74
    iget v0, p1, Lccc71/pmw/lib/qm;->s:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget v2, p1, Lccc71/pmw/lib/qm;->t:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_1
    add-int/2addr v2, v0

    .line 77
    iget v0, p1, Lccc71/pmw/lib/qm;->a:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_3

    .line 78
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lccc71/pmw/pro/pmw_widget_2x1;->q:[I

    aget v4, v4, v2

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 82
    :goto_2
    const v3, 0x7f090199

    sget-object v4, Lccc71/pmw/pro/pmw_widget_2x1;->j:[[I

    aget-object v2, v4, v2

    iget v4, p1, Lccc71/pmw/lib/qm;->a:I

    aget v2, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 83
    iget v2, p1, Lccc71/pmw/lib/qm;->c:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 84
    iget v2, p1, Lccc71/pmw/lib/qm;->c:I

    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 85
    const v2, 0x7f0901a0

    iget v3, p1, Lccc71/pmw/lib/qm;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 86
    const v2, 0x7f0901a2

    iget v3, p1, Lccc71/pmw/lib/qm;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 87
    iget v2, p1, Lccc71/pmw/lib/qm;->c:I

    invoke-virtual {v0, v8, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 89
    iget v2, p1, Lccc71/pmw/lib/qm;->d:I

    if-nez v2, :cond_5

    .line 91
    const v2, 0x7f0901ab

    const v3, 0x7f050124

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 92
    iget-boolean v2, p1, Lccc71/pmw/lib/qm;->e:Z

    if-eqz v2, :cond_4

    .line 94
    iget v2, p1, Lccc71/pmw/lib/qm;->a:I

    packed-switch v2, :pswitch_data_0

    .line 97
    :pswitch_0
    const v2, 0x7f0200a7

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 117
    :goto_3
    const v2, 0x7f0901a1

    iget v3, p1, Lccc71/pmw/lib/qm;->i:I

    invoke-static {v0, v2, v3}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/widget/RemoteViews;II)V

    .line 118
    const v2, 0x7f09019c

    iget v3, p1, Lccc71/pmw/lib/qm;->m:I

    invoke-static {v0, v2, v3}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/widget/RemoteViews;II)V

    .line 119
    iget v2, p1, Lccc71/pmw/lib/qm;->u:I

    iget-boolean v3, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v0, v8, v2, v3}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 121
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 123
    const v2, 0x7f090198

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 130
    :goto_4
    const v2, 0x7f090191

    iget v3, p1, Lccc71/pmw/lib/qm;->g:I

    invoke-static {p2, v0, p4, v2, v3}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V

    .line 131
    iget v2, p1, Lccc71/pmw/lib/qm;->h:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 132
    iget v2, p1, Lccc71/pmw/lib/qm;->h:I

    invoke-static {p2, v0, p4, v5, v2}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V

    .line 136
    :goto_5
    const v2, 0x7f0901a0

    iget v3, p1, Lccc71/pmw/lib/qm;->p:I

    iget-boolean v4, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v0, v2, v3, v4}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 137
    iget v2, p1, Lccc71/pmw/lib/qm;->n:I

    iget-boolean v3, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v0, v6, v2, v3}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 138
    const v2, 0x7f0901a2

    iget v3, p1, Lccc71/pmw/lib/qm;->q:I

    iget-boolean v4, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v0, v2, v3, v4}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 139
    iget v2, p1, Lccc71/pmw/lib/qm;->o:I

    iget-boolean v3, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v0, v7, v2, v3}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 140
    iget v2, p1, Lccc71/pmw/lib/qm;->l:I

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "setTextSize"

    iget v3, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v3, v3

    invoke-virtual {v0, v8, v2, v3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 143
    const v2, 0x7f0901a0

    const-string v3, "setTextSize"

    iget v4, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 144
    const-string v2, "setTextSize"

    iget v3, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v3, v3

    invoke-virtual {v0, v6, v2, v3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 145
    const v2, 0x7f0901a2

    const-string v3, "setTextSize"

    iget v4, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 146
    const-string v2, "setTextSize"

    iget v3, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v3, v3

    invoke-virtual {v0, v7, v2, v3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 149
    :cond_0
    const/4 v2, 0x1

    iget v3, p1, Lccc71/pmw/lib/qm;->t:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p1, Lccc71/pmw/lib/qm;->r:I

    invoke-static {p2, v0, v2, v3, v4}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ZII)V

    .line 150
    iget v2, p1, Lccc71/pmw/lib/qm;->s:I

    iget v3, p1, Lccc71/pmw/lib/qm;->r:I

    invoke-static {p2, v0, v1, v2, v3}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ZII)V

    .line 152
    if-eqz p3, :cond_9

    .line 153
    invoke-virtual {p3, p4, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 156
    :goto_6
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 80
    :cond_3
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lccc71/pmw/pro/pmw_widget_2x1;->p:[I

    aget v4, v4, v2

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 102
    :pswitch_1
    const v2, 0x7f0200a9

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 107
    :cond_4
    const v2, 0x7f0200a8

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 111
    :cond_5
    iget v2, p1, Lccc71/pmw/lib/qm;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget v2, p1, Lccc71/pmw/lib/qm;->a:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_6

    .line 112
    const v2, 0x7f0901a9

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    :cond_6
    const v2, 0x7f0901ab

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 114
    const v2, 0x7f0200a8

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 127
    :cond_7
    const v2, 0x7f090198

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 134
    :cond_8
    iget v2, p1, Lccc71/pmw/lib/qm;->g:I

    invoke-static {p2, v0, p4, v5, v2}, Lccc71/pmw/pro/pmw_widget_2x1;->a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V

    goto/16 :goto_5

    .line 155
    :cond_9
    const-string v0, "process_monitor_widget"

    const-string v1, "appWidgetManager is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
