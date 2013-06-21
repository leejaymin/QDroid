.class public final Lcom/tequnique/camerax/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "average"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "spot"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "meter-center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "meter-average"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "meter-spot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tequnique/camerax/g;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tequnique/camerax/g;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/hardware/Camera;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/tequnique/camerax/g;->c(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/hardware/Camera;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/tequnique/camerax/g;->c(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public static b(Landroid/hardware/Camera;)Ljava/util/List;
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    :try_start_1
    const-string v0, "meter-mode-values"

    invoke-virtual {v6, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-lez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v4

    :goto_0
    :try_start_2
    array-length v5, v3

    if-lt v2, v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    aget-object v5, v3, v2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/tequnique/camerax/g;->c(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    :goto_3
    sget-object v2, Lcom/tequnique/camerax/g;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v4, v2, :cond_2

    :cond_1
    invoke-virtual {p0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    :try_start_4
    sget-object v2, Lcom/tequnique/camerax/g;->a:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v7, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    if-nez v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_3
    rem-int/lit8 v2, v4, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/tequnique/camerax/g;->a:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v2, v4, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :try_start_5
    invoke-static {v2}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->q:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "metering"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "meter-mode"

    aput-object v3, v7, v2

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v5, v4

    :goto_5
    array-length v2, v7

    if-ge v5, v2, :cond_1

    move v3, v4

    :goto_6
    sget-object v2, Lcom/tequnique/camerax/g;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v3, v2, :cond_6

    sget-object v2, Lcom/tequnique/camerax/g;->b:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v2, :cond_1

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_5

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    aget-object v9, v7, v3

    sget-object v10, Lcom/tequnique/camerax/g;->a:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v2, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    aget-object v2, v7, v5

    sput-object v2, Lcom/tequnique/camerax/g;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_7
    rem-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/tequnique/camerax/g;->a:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_8
    :goto_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private static c(Landroid/hardware/Camera;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tequnique/camerax/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tequnique/camerax/g;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "meter-mode"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "meter-mode"

    sput-object v0, Lcom/tequnique/camerax/g;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "metering"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "metering"

    sput-object v0, Lcom/tequnique/camerax/g;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
