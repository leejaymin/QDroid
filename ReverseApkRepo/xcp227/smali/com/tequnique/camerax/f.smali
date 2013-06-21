.class public final Lcom/tequnique/camerax/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "deblur"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "100"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "200"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "400"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "800"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1250"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "movie"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tequnique/camerax/f;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tequnique/camerax/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/hardware/Camera;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/tequnique/camerax/f;->c(Landroid/hardware/Camera;)Ljava/lang/String;

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
    invoke-static {p0}, Lcom/tequnique/camerax/f;->c(Landroid/hardware/Camera;)Ljava/lang/String;

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
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    const-string v0, "iso-values"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    if-lez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    :goto_0
    :try_start_2
    array-length v6, v5

    if-lt v3, v6, :cond_0

    :goto_1
    return-object v0

    :cond_0
    aget-object v6, v5, v3

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/tequnique/camerax/f;->c(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    move v3, v2

    :goto_3
    sget-object v2, Lcom/tequnique/camerax/f;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v3, v2, :cond_2

    :cond_1
    invoke-virtual {p0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    :try_start_4
    sget-object v2, Lcom/tequnique/camerax/f;->a:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v6, v5, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    if-nez v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_3
    sget-object v2, Lcom/tequnique/camerax/f;->a:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :try_start_5
    invoke-static {v3}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/tequnique/camerax/bo;->q:Z

    if-eqz v3, :cond_1

    move v3, v2

    :goto_5
    sget-object v2, Lcom/tequnique/camerax/f;->a:[Ljava/lang/String;

    array-length v2, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-ge v3, v2, :cond_1

    :try_start_6
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v5, "iso"

    sget-object v6, Lcom/tequnique/camerax/f;->a:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const-string v2, "iso"

    sput-object v2, Lcom/tequnique/camerax/f;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_5
    sget-object v2, Lcom/tequnique/camerax/f;->a:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private static c(Landroid/hardware/Camera;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/tequnique/camerax/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tequnique/camerax/f;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "iso"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "iso"

    sput-object v0, Lcom/tequnique/camerax/f;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
