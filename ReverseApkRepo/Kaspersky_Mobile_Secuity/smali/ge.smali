.class public Lge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfV;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(LfW;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 430
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "monitor_settings_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    iput v3, p0, Lge;->a:I

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lge;->b:I

    .line 434
    iput v3, p0, Lge;->c:I

    .line 435
    invoke-virtual {p0}, Lge;->b()V

    .line 437
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 418
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "monitor_settings_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 419
    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_1

    .line 420
    :cond_0
    invoke-direct {p0}, Lge;->c()V

    .line 428
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "monitor_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lge;->a:I

    .line 424
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "monitor_scanModeFlags"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lge;->b:I

    .line 426
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "monitor_cleanModeValues"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lge;->c:I

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 446
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "monitor_mode"

    iget v2, p0, Lge;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "monitor_scanModeFlags"

    iget v2, p0, Lge;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "monitor_cleanModeValues"

    iget v2, p0, Lge;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {v0}, Lgi;->b()V

    .line 450
    return-void
.end method
