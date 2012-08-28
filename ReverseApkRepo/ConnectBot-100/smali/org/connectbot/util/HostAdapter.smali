.class public Lorg/connectbot/util/HostAdapter;
.super Landroid/widget/BaseAdapter;
.source "HostAdapter.java"


# static fields
.field public static final FIELD_HOST_CONNECTED:Ljava/lang/String; = "connected"

.field public static final FIELD_HOST_HOSTKEY:Ljava/lang/String; = "hostkey"

.field public static final FIELD_HOST_HOSTNAME:Ljava/lang/String; = "hostname"

.field public static final FIELD_HOST_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final FIELD_HOST_PORT:Ljava/lang/String; = "port"

.field public static final FIELD_HOST_USERNAME:Ljava/lang/String; = "username"

.field public static final TABLE_HOSTS:Ljava/lang/String; = "hosts"


# instance fields
.field public final COL_COLOR:I

.field public final COL_CONNECTED:I

.field public final COL_HOSTNAME:I

.field public final COL_ID:I

.field public final COL_NICKNAME:I

.field public final COL_USERNAME:I

.field public final blue:Landroid/content/res/ColorStateList;

.field public final context:Landroid/content/Context;

.field public final green:Landroid/content/res/ColorStateList;

.field public final inflater:Landroid/view/LayoutInflater;

.field public final red:Landroid/content/res/ColorStateList;

.field public final source:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "source"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/connectbot/util/HostAdapter;->context:Landroid/content/Context;

    .line 43
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lorg/connectbot/util/HostAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p2, p0, Lorg/connectbot/util/HostAdapter;->source:Landroid/database/Cursor;

    .line 46
    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/connectbot/util/HostAdapter;->COL_ID:I

    .line 47
    const-string v1, "nickname"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/connectbot/util/HostAdapter;->COL_NICKNAME:I

    .line 48
    const-string v1, "username"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/connectbot/util/HostAdapter;->COL_USERNAME:I

    .line 49
    const-string v1, "hostname"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/connectbot/util/HostAdapter;->COL_HOSTNAME:I

    .line 50
    const-string v1, "lastconnect"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/connectbot/util/HostAdapter;->COL_CONNECTED:I

    .line 51
    const-string v1, "color"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/connectbot/util/HostAdapter;->COL_COLOR:I

    .line 53
    iget-object v1, p0, Lorg/connectbot/util/HostAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/util/HostAdapter;->red:Landroid/content/res/ColorStateList;

    .line 55
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/util/HostAdapter;->green:Landroid/content/res/ColorStateList;

    .line 56
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/util/HostAdapter;->blue:Landroid/content/res/ColorStateList;

    .line 58
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/connectbot/util/HostAdapter;->source:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/connectbot/util/HostAdapter;->source:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 62
    iget-object v0, p0, Lorg/connectbot/util/HostAdapter;->source:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lorg/connectbot/util/HostAdapter;->source:Landroid/database/Cursor;

    invoke-interface {v8, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v8, p0, Lorg/connectbot/util/HostAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030008

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 92
    :cond_0
    const-string v5, "never"

    .line 93
    .local v5, nice:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    iget-object v9, p0, Lorg/connectbot/util/HostAdapter;->source:Landroid/database/Cursor;

    iget v10, p0, Lorg/connectbot/util/HostAdapter;->COL_CONNECTED:I

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x3c

    .line 94
    .local v4, minutes:I
    if-lez v4, :cond_1

    .line 95
    const-string v8, "%d minutes ago"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 96
    const/16 v8, 0x3c

    if-lt v4, v8, :cond_1

    .line 97
    div-int/lit8 v3, v4, 0x3c

    .line 98
    .local v3, hours:I
    const-string v8, "%d hours ago"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .restart local v5       #nice:Ljava/lang/String;
    const/16 v8, 0x18

    if-lt v3, v8, :cond_1

    .line 100
    div-int/lit8 v2, v3, 0x18

    .line 101
    .local v2, days:I
    const-string v8, "%d days ago"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .end local v3           #hours:I
    .end local v2           #days:I
    .restart local v5       #nice:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 108
    .local v1, connected:Z
    const v8, 0x1020014

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 109
    .local v7, title:Landroid/widget/TextView;
    iget-object v8, p0, Lorg/connectbot/util/HostAdapter;->source:Landroid/database/Cursor;

    iget v9, p0, Lorg/connectbot/util/HostAdapter;->COL_NICKNAME:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v8, 0x1020015

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, caption:Landroid/widget/TextView;
    const-string v8, "%s%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    if-eqz v1, :cond_3

    const-string v11, ", connected"

    :goto_0
    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v8, p0, Lorg/connectbot/util/HostAdapter;->context:Landroid/content/Context;

    const v9, 0x1010040

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 116
    iget-object v8, p0, Lorg/connectbot/util/HostAdapter;->context:Landroid/content/Context;

    const v9, 0x1010042

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 117
    iget-object v8, p0, Lorg/connectbot/util/HostAdapter;->source:Landroid/database/Cursor;

    iget v9, p0, Lorg/connectbot/util/HostAdapter;->COL_COLOR:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/connectbot/util/HostAdapter;->resolve(Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 118
    .local v6, resolved:Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_2

    .line 119
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 120
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
    :cond_2
    const v8, 0x1020006

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    const v9, 0x108006b

    :goto_1
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-object p2

    .line 112
    .end local v6           #resolved:Landroid/content/res/ColorStateList;
    :cond_3
    :try_start_1
    const-string v11, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .restart local v6       #resolved:Landroid/content/res/ColorStateList;
    :cond_4
    const v9, 0x108006a

    goto :goto_1

    .line 86
    .end local v4           #minutes:I
    .end local v5           #nice:Ljava/lang/String;
    .end local v1           #connected:Z
    .end local v7           #title:Landroid/widget/TextView;
    .end local v0           #caption:Landroid/widget/TextView;
    .end local v6           #resolved:Landroid/content/res/ColorStateList;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected resolve(Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "color"

    .prologue
    .line 78
    const-string v0, "red"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/connectbot/util/HostAdapter;->red:Landroid/content/res/ColorStateList;

    .line 81
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-string v0, "green"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/connectbot/util/HostAdapter;->green:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "blue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/connectbot/util/HostAdapter;->blue:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
