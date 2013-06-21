.class public Lgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfV;


# instance fields
.field private volatile A:Ljava/lang/String;

.field private volatile B:Ljava/lang/String;

.field private volatile C:Ljava/lang/String;

.field private volatile D:Z

.field public volatile a:Ljava/lang/String;

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Z

.field public volatile e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:Z

.field public volatile k:Ljava/lang/String;

.field public volatile l:Ljava/lang/String;

.field public m:Z

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public r:Z

.field public s:I

.field public volatile t:Ljava/lang/String;

.field public volatile u:Z

.field public volatile v:Z

.field public volatile w:Z

.field public volatile x:Z

.field public volatile y:Z

.field private volatile z:Ljava/lang/String;


# direct methods
.method public constructor <init>(LfW;)V
    .locals 1
    .parameter

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgd;->m:Z

    .line 560
    invoke-virtual {p0}, Lgd;->a()V

    .line 561
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 564
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lgd;->B:Ljava/lang/String;

    .line 566
    const-string v0, ""

    iput-object v0, p0, Lgd;->C:Ljava/lang/String;

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lgd;->a:Ljava/lang/String;

    .line 568
    iput-boolean v3, p0, Lgd;->b:Z

    .line 569
    iput-boolean v4, p0, Lgd;->c:Z

    .line 570
    iput-boolean v4, p0, Lgd;->d:Z

    .line 571
    iput-boolean v4, p0, Lgd;->e:Z

    .line 572
    iput-boolean v3, p0, Lgd;->D:Z

    .line 573
    iput-boolean v3, p0, Lgd;->f:Z

    .line 574
    iput-boolean v4, p0, Lgd;->g:Z

    .line 575
    iput-boolean v4, p0, Lgd;->h:Z

    .line 576
    iput-boolean v3, p0, Lgd;->j:Z

    .line 577
    const-string v0, ""

    iput-object v0, p0, Lgd;->k:Ljava/lang/String;

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lgd;->l:Ljava/lang/String;

    .line 579
    iput-boolean v3, p0, Lgd;->i:Z

    .line 580
    iput-boolean v3, p0, Lgd;->m:Z

    .line 581
    iput-wide v5, p0, Lgd;->n:J

    .line 582
    iput-wide v5, p0, Lgd;->o:J

    .line 583
    iput v3, p0, Lgd;->p:I

    .line 584
    iput v3, p0, Lgd;->q:I

    .line 585
    iput-boolean v3, p0, Lgd;->r:Z

    .line 586
    const/4 v0, -0x1

    iput v0, p0, Lgd;->s:I

    .line 587
    const-string v0, ""

    iput-object v0, p0, Lgd;->t:Ljava/lang/String;

    .line 588
    iput-boolean v3, p0, Lgd;->u:Z

    .line 589
    iput-boolean v3, p0, Lgd;->r:Z

    .line 590
    iput-boolean v3, p0, Lgd;->v:Z

    .line 591
    iput-boolean v3, p0, Lgd;->w:Z

    .line 592
    iput-boolean v3, p0, Lgd;->x:Z

    .line 593
    iput-boolean v3, p0, Lgd;->y:Z

    .line 594
    const-class v1, Lgd;

    monitor-enter v1

    .line 596
    :try_start_0
    invoke-virtual {p0}, Lgd;->b()V

    .line 597
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 601
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 602
    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_1

    .line 603
    :cond_0
    invoke-direct {p0}, Lgd;->c()V

    .line 638
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "def_uninstaller_package"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgd;->z:Ljava/lang/String;

    .line 607
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "def_uninstaller_class"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgd;->A:Ljava/lang/String;

    .line 608
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_activation_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgd;->B:Ljava/lang/String;

    .line 609
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "KEY_IMEI"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgd;->C:Ljava/lang/String;

    .line 610
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "password_hash"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgd;->a:Ljava/lang/String;

    .line 611
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_blocked"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->b:Z

    .line 612
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_notifications"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->c:Z

    .line 613
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_sounds"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->d:Z

    .line 614
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_hints"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->e:Z

    .line 615
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_eula"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->D:Z

    .line 616
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_activation_done"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->f:Z

    .line 617
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_widget_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->g:Z

    .line 618
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_widget_pp_enabled"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->h:Z

    .line 619
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_recovery_enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->j:Z

    .line 620
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_recovery_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgd;->k:Ljava/lang/String;

    .line 621
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_cipher_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgd;->l:Ljava/lang/String;

    .line 622
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_expired_notification_shown"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->i:Z

    .line 624
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_market_expire_date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lgd;->n:J

    .line 625
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_market_install_date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lgd;->o:J

    .line 626
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_last_responce_code"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lgd;->p:I

    .line 627
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_last_license_state"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lgd;->q:I

    .line 628
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_key_settings_imported"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->r:Z

    .line 629
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_key_eula_file_index"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lgd;->s:I

    .line 630
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_password_string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgd;->t:Ljava/lang/String;

    .line 631
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_key_settings_imported"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->r:Z

    .line 632
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_welcome_completed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->u:Z

    .line 633
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_incompatible_apps_canceled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->v:Z

    .line 634
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_workaround_step_completed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->w:Z

    .line 635
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_final_step_completed"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->x:Z

    .line 636
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_need_password_recovery_res"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgd;->y:Z

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 648
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "def_uninstaller_package"

    iget-object v2, p0, Lgd;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "def_uninstaller_class"

    iget-object v2, p0, Lgd;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_activation_code"

    iget-object v2, p0, Lgd;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "KEY_IMEI"

    iget-object v2, p0, Lgd;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "password_hash"

    iget-object v2, p0, Lgd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_blocked"

    iget-boolean v2, p0, Lgd;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 654
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_notifications"

    iget-boolean v2, p0, Lgd;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 655
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_sounds"

    iget-boolean v2, p0, Lgd;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 656
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_hints"

    iget-boolean v2, p0, Lgd;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 657
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_eula"

    iget-boolean v2, p0, Lgd;->D:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 658
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_activation_done"

    iget-boolean v2, p0, Lgd;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 659
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_widget_enabled"

    iget-boolean v2, p0, Lgd;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 660
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_widget_pp_enabled"

    iget-boolean v2, p0, Lgd;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 661
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_recovery_enabled"

    iget-boolean v2, p0, Lgd;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 662
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_recovery_code"

    iget-object v2, p0, Lgd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_cipher_key"

    iget-object v2, p0, Lgd;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_expired_notification_shown"

    iget-boolean v2, p0, Lgd;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 665
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_license_request_activated"

    iget-boolean v2, p0, Lgd;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 666
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_market_expire_date"

    iget-wide v2, p0, Lgd;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 667
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_market_install_date"

    iget-wide v2, p0, Lgd;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 668
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_last_responce_code"

    iget v2, p0, Lgd;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_last_license_state"

    iget v2, p0, Lgd;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_key_settings_imported"

    iget-boolean v2, p0, Lgd;->r:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 671
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_key_eula_file_index"

    iget v2, p0, Lgd;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_password_string"

    iget-object v2, p0, Lgd;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgi;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_key_settings_imported"

    iget-boolean v2, p0, Lgd;->r:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 674
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_welcome_completed"

    iget-boolean v2, p0, Lgd;->u:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 675
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_incompatible_apps_canceled"

    iget-boolean v2, p0, Lgd;->v:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 676
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_workaround_step_completed"

    iget-boolean v2, p0, Lgd;->w:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 677
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_final_step_completed"

    iget-boolean v2, p0, Lgd;->x:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 678
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    const-string v1, "general_need_password_recovery_res"

    iget-boolean v2, p0, Lgd;->y:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 680
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {v0}, Lgi;->b()V

    .line 681
    return-void
.end method
