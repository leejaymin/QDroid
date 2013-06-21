.class public final Lcom/inisoft/mediaplayer/bq;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/util/Comparator;


# instance fields
.field public a:Ljava/util/Vector;

.field public b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inisoft/mediaplayer/br;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/br;-><init>()V

    sput-object v0, Lcom/inisoft/mediaplayer/bq;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bq;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bq;->b:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "DiceConnectionInfoCount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Lcom/inisoft/mediaplayer/bp;

    invoke-direct {v3}, Lcom/inisoft/mediaplayer/bp;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DiceConnectionInfo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inisoft/mediaplayer/bp;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bq;->b:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    sget-object v3, Lcom/inisoft/mediaplayer/bq;->c:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v1, "DiceConnectionInfoCount"

    iget-object v3, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/bp;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v4}, Lcom/inisoft/mediaplayer/bs;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inisoft/mediaplayer/bp;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, v0, Lcom/inisoft/mediaplayer/bp;->g:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiceConnectionInfo"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/inisoft/mediaplayer/bs;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    if-ne v0, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(I)Lcom/inisoft/mediaplayer/bp;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/bp;

    goto :goto_0
.end method

.method public final a(ILcom/inisoft/mediaplayer/bp;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/bq;->b()V

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/bp;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/bq;->b()V

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/bq;Lcom/inisoft/mediaplayer/bs;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/inisoft/mediaplayer/bq;->a()I

    move-result v3

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/bq;->a()I

    move-result v0

    if-lt v3, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    if-ne v0, p2, :cond_9

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/bp;

    invoke-virtual {p1, v3}, Lcom/inisoft/mediaplayer/bq;->a(I)Lcom/inisoft/mediaplayer/bp;

    move-result-object v4

    iget-object v5, v0, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    iget-object v6, v4, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    if-eq v5, v6, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    iget-object v6, v4, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    iget-object v6, v4, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v5, v0, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    iget-object v6, v4, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lcom/inisoft/mediaplayer/bp;->e:Ljava/lang/String;

    iget-object v6, v4, Lcom/inisoft/mediaplayer/bp;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v5, v0, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    iget-object v6, v4, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    iget-boolean v0, v0, Lcom/inisoft/mediaplayer/bp;->g:Z

    iget-boolean v4, v4, Lcom/inisoft/mediaplayer/bp;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v4, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bq;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/bq;->b()V

    return-void
.end method
