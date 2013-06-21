.class final Lct;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private volatile b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    iput-boolean p1, p0, Lct;->b:Z

    .line 41
    return-void
.end method

.method private a(IIIZ)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v1, 0x5

    .line 83
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move v2, v1

    .line 84
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 97
    packed-switch v1, :pswitch_data_0

    .line 167
    :cond_1
    :pswitch_0
    const-wide/16 v3, 0x4e20

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 173
    iget-boolean v3, p0, Lct;->a:Z

    if-eqz v3, :cond_0

    .line 175
    throw v1

    .line 101
    :pswitch_1
    if-eqz p4, :cond_2

    .line 103
    const-wide/16 v3, 0x7530

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 106
    :cond_2
    if-lez p3, :cond_3

    .line 108
    const-wide/16 v3, 0x7530

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 109
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 114
    :cond_3
    invoke-static {v0}, Lct;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_1
    return-object v0

    .line 118
    :pswitch_2
    invoke-static {v0}, Lct;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :pswitch_3
    const-wide/32 v3, 0xea60

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 122
    if-nez p4, :cond_0

    .line 124
    invoke-static {v0}, Lct;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 129
    :pswitch_4
    const-wide/32 v3, 0xea60

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 130
    if-nez p4, :cond_1

    .line 132
    invoke-static {v0}, Lct;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 141
    :pswitch_5
    invoke-static {v0}, Lct;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 145
    if-nez p4, :cond_1

    .line 147
    if-lez v2, :cond_4

    .line 149
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    .line 151
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 155
    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 162
    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private static c()V
    .locals 4

    .prologue
    .line 185
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 186
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, LfZ;

    .line 188
    iget-boolean v2, v0, Lgd;->b:Z

    .line 191
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 193
    if-eqz v1, :cond_1

    .line 195
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    .line 196
    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->n()V

    .line 198
    if-nez v2, :cond_0

    .line 200
    const-class v1, Lgd;

    monitor-enter v1

    .line 202
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lgd;->b:Z

    .line 203
    invoke-virtual {v0}, Lgd;->b()V

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 209
    :cond_1
    invoke-static {}, LdT;->d()V

    goto :goto_0
.end method

.method private static d()V
    .locals 4

    .prologue
    .line 215
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 216
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v2, Lcom/kms/kmsshared/KMSApplication;

    .line 219
    const/16 v3, 0x13

    invoke-static {v3}, Lgj;->a(I)Z

    move-result v3

    .line 221
    if-nez v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {v1}, Lfn;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 228
    const v3, 0x7f080148

    invoke-virtual {v2, v3}, Lcom/kms/kmsshared/KMSApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    :cond_2
    invoke-static {v0}, Lfn;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const-string v1, "SIM-Watch:"

    invoke-static {v0, v1}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct;->a:Z

    .line 249
    invoke-virtual {p0}, Lct;->interrupt()V

    .line 250
    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lct;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lct;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 267
    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 268
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 270
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 272
    if-nez v2, :cond_0

    invoke-static {v1}, Lfn;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 277
    const/16 v2, 0x11

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, LfZ;->a(ILjava/lang/Object;)V

    .line 278
    invoke-virtual {v0}, LfZ;->a()V

    move v2, v3

    .line 283
    :cond_0
    const/16 v3, 0x13

    invoke-static {v3}, Lgj;->a(I)Z

    move-result v3

    .line 285
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lct;->b:Z

    if-eqz v3, :cond_3

    .line 297
    :cond_1
    const v1, 0xea60

    const/16 v2, 0x7530

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lct;->a(IIIZ)Ljava/lang/String;

    move-result-object v1

    .line 298
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, LfZ;->a(ILjava/lang/Object;)V

    .line 299
    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 300
    invoke-virtual {v0}, LfZ;->a()V

    .line 361
    :cond_2
    :goto_0
    return-void

    .line 310
    :cond_3
    const v3, 0xea60

    const/16 v4, 0x7530

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Lct;->a(IIIZ)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    invoke-static {}, Lct;->c()V

    .line 326
    const v3, 0xea60

    const/16 v4, 0x7530

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lct;->a(IIIZ)Ljava/lang/String;

    move-result-object v3

    .line 334
    if-nez v2, :cond_4

    .line 337
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, LfZ;->a(ILjava/lang/Object;)V

    .line 338
    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 339
    invoke-virtual {v0}, LfZ;->a()V

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0

    .line 344
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 352
    invoke-static {}, Lct;->d()V

    .line 355
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, LfZ;->a(ILjava/lang/Object;)V

    .line 356
    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 357
    invoke-virtual {v0}, LfZ;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
