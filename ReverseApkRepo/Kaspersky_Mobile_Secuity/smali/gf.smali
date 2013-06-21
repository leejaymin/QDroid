.class public final Lgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfV;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Z

.field private k:Z


# direct methods
.method public constructor <init>(LfW;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "pp_settings_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 338
    if-eq v0, v5, :cond_0

    if-eq v0, v3, :cond_1

    .line 339
    :cond_0
    invoke-direct {p0}, Lgf;->b()V

    .line 355
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "mode_changed"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->a:Z

    .line 343
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "current_mode"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->b:Z

    .line 344
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "contacts"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->c:Z

    .line 345
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "sms"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->d:Z

    .line 346
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "calls"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->e:Z

    .line 347
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "incomming_calls"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->f:Z

    .line 348
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "incomming_sms"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->g:Z

    .line 349
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "switch_timeout"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->k:Z

    .line 350
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "switch_sms"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->h:Z

    .line 351
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "timeout"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lgf;->i:J

    .line 352
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "auto_sync_state_on_pp_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgf;->j:Z

    goto/16 :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 357
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "pp_settings_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    iput-boolean v3, p0, Lgf;->a:Z

    .line 359
    iput-boolean v3, p0, Lgf;->b:Z

    .line 360
    iput-boolean v4, p0, Lgf;->c:Z

    .line 361
    iput-boolean v4, p0, Lgf;->d:Z

    .line 362
    iput-boolean v4, p0, Lgf;->e:Z

    .line 363
    iput-boolean v3, p0, Lgf;->f:Z

    .line 364
    iput-boolean v3, p0, Lgf;->g:Z

    .line 365
    iput-boolean v3, p0, Lgf;->k:Z

    .line 366
    iput-boolean v3, p0, Lgf;->h:Z

    .line 367
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgf;->i:J

    .line 368
    iput-boolean v3, p0, Lgf;->j:Z

    .line 369
    invoke-virtual {p0}, Lgf;->a()V

    .line 371
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 374
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "mode_changed"

    iget-boolean v2, p0, Lgf;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 375
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "current_mode"

    iget-boolean v2, p0, Lgf;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 376
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "contacts"

    iget-boolean v2, p0, Lgf;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 377
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "sms"

    iget-boolean v2, p0, Lgf;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 378
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "calls"

    iget-boolean v2, p0, Lgf;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 379
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "incomming_calls"

    iget-boolean v2, p0, Lgf;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 380
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "incomming_sms"

    iget-boolean v2, p0, Lgf;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 381
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "switch_timeout"

    iget-boolean v2, p0, Lgf;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 382
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "switch_sms"

    iget-boolean v2, p0, Lgf;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 383
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "timeout"

    iget-wide v2, p0, Lgf;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "auto_sync_state_on_pp_enabled"

    iget-boolean v2, p0, Lgf;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 385
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {v0}, Lgi;->b()V

    .line 386
    return-void
.end method
