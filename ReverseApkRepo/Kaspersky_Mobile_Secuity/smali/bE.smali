.class public final LbE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, LbE;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, LbE;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-virtual {v1}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 101
    sget-object v2, Lfp;->a:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "body"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 107
    if-eqz v19, :cond_3

    .line 109
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 113
    const/4 v1, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 115
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, LbE;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-virtual {v1, v2, v7}, Lgr;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 117
    const-string v1, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 119
    new-instance v1, LeQ;

    const/4 v2, 0x2

    const v3, 0x7f02008c

    const v4, 0x7f02008c

    invoke-direct/range {v1 .. v9}, LeQ;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 136
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, LbE;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->a(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, LbE;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->a(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 144
    :cond_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, LbE;->a:Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    new-instance v2, LbF;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, LbF;-><init>(LbE;)V

    invoke-virtual {v1, v2}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    return-void

    .line 128
    :cond_4
    :try_start_1
    new-instance v10, LeQ;

    const/4 v11, 0x2

    const v12, 0x7f02008c

    const v13, 0x7f02008c

    const-string v16, ""

    move-object v14, v7

    move-object v15, v6

    move-wide/from16 v17, v8

    invoke-direct/range {v10 .. v18}, LeQ;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v10

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v1
.end method
