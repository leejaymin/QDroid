.class public final Lccc71/bmw/lib/ej;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field static a:I

.field static b:Ljava/lang/String;

.field static c:Z

.field static d:Ljava/util/ArrayList;

.field static e:Lccc71/bmw/lib/ej;

.field private static synthetic g:[I


# instance fields
.field f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x1e0

    sput v0, Lccc71/bmw/lib/ej;->a:I

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/bmw/lib/ej;->c:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccc71/bmw/lib/ej;->d:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/ej;->e:Lccc71/bmw/lib/ej;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/bmw/lib/ej;->f:Landroid/content/Context;

    .line 12
    return-void
.end method

.method public static a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    sget-object v0, Lccc71/bmw/lib/ej;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 40
    invoke-static {}, Lccc71/bmw/lib/ej;->c()[I

    move-result-object v2

    invoke-virtual {p0}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    move v2, v1

    .line 97
    :goto_0
    if-lt v2, v4, :cond_3

    .line 104
    :cond_0
    return-object v3

    .line 43
    :pswitch_0
    if-eqz p1, :cond_1

    move v2, v1

    .line 45
    :goto_1
    if-ge v2, v4, :cond_0

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v1, v1, Lccc71/bmw/data/b;->b:I

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 52
    :goto_2
    if-ge v2, v4, :cond_0

    .line 54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v1, v1, Lccc71/bmw/data/b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 59
    :pswitch_1
    if-eqz p1, :cond_2

    move v2, v1

    .line 61
    :goto_3
    if-ge v2, v4, :cond_0

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v5, v1, Lccc71/bmw/data/b;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v1, v1, Lccc71/bmw/data/b;->d:I

    mul-int/2addr v1, v5

    neg-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_2
    move v2, v1

    .line 68
    :goto_4
    if-ge v2, v4, :cond_0

    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v5, v1, Lccc71/bmw/data/b;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v1, v1, Lccc71/bmw/data/b;->d:I

    mul-int/2addr v1, v5

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :pswitch_2
    move v2, v1

    .line 76
    :goto_5
    if-ge v2, v4, :cond_0

    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v1, v1, Lccc71/bmw/data/b;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :pswitch_3
    move v2, v1

    .line 83
    :goto_6
    if-ge v2, v4, :cond_0

    .line 85
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v1, v1, Lccc71/bmw/data/b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :pswitch_4
    move v2, v1

    .line 90
    :goto_7
    if-ge v2, v4, :cond_0

    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v1, v1, Lccc71/bmw/data/b;->e:F

    const/high16 v5, 0x4120

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    .line 99
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v1, v1, Lccc71/bmw/data/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lccc71/bmw/lib/ej;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "battery_widget_monitor"

    const-string v1, "Releasing history data for widgets!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v0, Lccc71/bmw/lib/ej;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/bmw/lib/ej;->c:Z

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lccc71/bmw/lib/ej;->a:I

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v1, Lccc71/bmw/lib/ej;->a:I

    if-le v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lccc71/bmw/lib/ej;->a:I

    .line 118
    :cond_0
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading graph max record "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/bmw/lib/ej;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lccc71/bmw/lib/ej;

    invoke-direct {v0}, Lccc71/bmw/lib/ej;-><init>()V

    .line 120
    sput-object v0, Lccc71/bmw/lib/ej;->e:Lccc71/bmw/lib/ej;

    iput-object p0, v0, Lccc71/bmw/lib/ej;->f:Landroid/content/Context;

    .line 121
    sget-object v0, Lccc71/bmw/lib/ej;->e:Lccc71/bmw/lib/ej;

    invoke-virtual {v0}, Lccc71/bmw/lib/ej;->run()V

    .line 122
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lccc71/bmw/lib/ej;->c:Z

    return v0
.end method

.method private static synthetic c()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Lccc71/bmw/lib/ej;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lccc71/bmw/lib/ak;->d:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lccc71/bmw/lib/ej;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lccc71/bmw/lib/ej;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "battery_widget_monitor"

    const-string v1, "GW no parent context!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccc71/bmw/lib/ej;->f:Landroid/content/Context;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/ej;->b:Ljava/lang/String;

    .line 141
    invoke-static {}, Lccc71/bmw/lib/ej;->a()V

    .line 143
    new-instance v0, Lccc71/bmw/lib/bi;

    iget-object v1, p0, Lccc71/bmw/lib/ej;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    .line 144
    sget v1, Lccc71/bmw/lib/ej;->a:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bi;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/ej;->d:Ljava/util/ArrayList;

    .line 146
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bmw_widget_graph_history - read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/bmw/lib/ej;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lines"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/bmw/lib/ej;->c:Z

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bmw_widget_graph_history - failed to load history: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
