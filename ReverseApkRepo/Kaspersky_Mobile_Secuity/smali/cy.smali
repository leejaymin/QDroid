.class public final Lcy;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lao;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/AvApplicationsMonitor;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/AvApplicationsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->c(Lcom/kms/antivirus/AvApplicationsMonitor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kms/antivirus/AvApplicationsMonitor;->a(Lcom/kms/antivirus/AvApplicationsMonitor;Z)Z

    .line 150
    const/4 v0, 0x3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/io/Serializable;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 151
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->g()V

    .line 153
    invoke-static {p3}, Lfp;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 155
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 158
    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 160
    :try_start_0
    invoke-static {v0, v6}, Lfw;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v1}, Lcom/kms/antivirus/AvApplicationsMonitor;->d(Lcom/kms/antivirus/AvApplicationsMonitor;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0xbb8

    move-object v2, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lfp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)V

    .line 169
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfp;->b(Landroid/content/Context;)V

    .line 170
    invoke-static {}, Lfp;->h()V

    .line 189
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v1}, Lcom/kms/antivirus/AvApplicationsMonitor;->b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kms/antivirus/gui/AvUserActionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    const-string v1, "com.kms.useraction.info"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "com.kms.useraction.file"

    iget-object v2, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v2}, Lcom/kms/antivirus/AvApplicationsMonitor;->d(Lcom/kms/antivirus/AvApplicationsMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "com.kms.useraction.type"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 194
    const-string v1, "com.kms.useraction.mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v1, "com.kms.useraction.launchedfrom"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v1}, Lcom/kms/antivirus/AvApplicationsMonitor;->b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-static {}, Lcom/kms/antivirus/AvApplicationsMonitor;->a()V

    .line 200
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->e(Lcom/kms/antivirus/AvApplicationsMonitor;)V

    .line 201
    invoke-static {}, Lcom/kms/antivirus/AvApplicationsMonitor;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_2
    :try_start_1
    invoke-static {v0, v6}, Lfp;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 206
    :pswitch_0
    invoke-static {v6}, Lfp;->e(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x1

    invoke-static {v0, p3}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_1

    .line 210
    :pswitch_1
    const/4 v0, 0x4

    invoke-static {v0, p3}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->a(Lcom/kms/antivirus/AvApplicationsMonitor;)Lcz;

    move-result-object v0

    invoke-virtual {v0}, Lcz;->a()Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "scan_tmp3"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :try_start_0
    new-instance v3, Lcom/kavsdk/antivirus/AvObjectScanner;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v1}, Lcom/kavsdk/antivirus/AvFsMonitor;->getMonitorNativePtr()I

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/kavsdk/antivirus/AvObjectScanner;-><init>(Ljava/lang/String;I)V

    .line 114
    invoke-virtual {v3, p0}, Lcom/kavsdk/antivirus/AvObjectScanner;->a(Lao;)V

    .line 115
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 116
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 117
    if-eqz v1, :cond_1

    const/16 v1, 0x202

    .line 119
    :goto_1
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    or-int/lit16 v0, v1, 0x800

    .line 123
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lcom/kavsdk/antivirus/AvObjectScanner;->setScanningMode(II)V

    .line 124
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kms/antivirus/AvApplicationsMonitor;->a(Lcom/kms/antivirus/AvApplicationsMonitor;Z)Z

    .line 125
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v2}, Lfp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/antivirus/AvApplicationsMonitor;->a(Lcom/kms/antivirus/AvApplicationsMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    const/4 v0, 0x5

    invoke-virtual {v3, v2, v0}, Lcom/kavsdk/antivirus/AvObjectScanner;->scanFile(Ljava/lang/String;I)I

    .line 127
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->c(Lcom/kms/antivirus/AvApplicationsMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v1}, Lcom/kms/antivirus/AvApplicationsMonitor;->d(Lcom/kms/antivirus/AvApplicationsMonitor;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    sget-object v5, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;->None:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    invoke-static/range {v0 .. v5}, Lfp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)V

    .line 130
    iget-object v0, p0, Lcy;->a:Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-static {v0}, Lcom/kms/antivirus/AvApplicationsMonitor;->b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfp;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
