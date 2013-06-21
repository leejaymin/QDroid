.class public final Lbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfD;


# instance fields
.field private a:Lbl;

.field private b:Lbb;

.field private c:Lbc;

.field private d:Lbd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static b(LfK;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x2b

    .line 212
    instance-of v0, p0, LfN;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 213
    check-cast v0, LfN;

    iget v0, v0, LfN;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, LfK;->c:Ljava/lang/String;

    invoke-static {v0}, Lfp;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f080291

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, LfK;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    instance-of v0, p0, LfL;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 224
    check-cast v0, LfL;

    iget v0, v0, LfL;->d:I

    if-nez v0, :cond_0

    .line 225
    const/16 v0, 0x2a

    iget-object v1, p0, LfK;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfY;

    .line 233
    invoke-virtual {v0, v1}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lbe;->d:Lbd;

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Lbd;

    invoke-direct {v1}, Lbd;-><init>()V

    iput-object v1, p0, Lbe;->d:Lbd;

    .line 245
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    invoke-virtual {v0, v3}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 248
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lbe;->c:Lbc;

    if-nez v1, :cond_1

    .line 252
    new-instance v1, Lbc;

    invoke-direct {v1}, Lbc;-><init>()V

    iput-object v1, p0, Lbe;->c:Lbc;

    .line 261
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    if-eqz v0, :cond_4

    .line 264
    new-instance v1, Lbb;

    invoke-direct {v1, v0}, Lbb;-><init>(I)V

    iput-object v1, p0, Lbe;->b:Lbb;

    .line 270
    :goto_2
    return-void

    .line 242
    :cond_2
    iput-object v2, p0, Lbe;->d:Lbd;

    goto :goto_0

    .line 258
    :cond_3
    iput-object v2, p0, Lbe;->c:Lbc;

    goto :goto_1

    .line 268
    :cond_4
    iput-object v2, p0, Lbe;->b:Lbb;

    goto :goto_2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lbl;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lbe;->a:Lbl;

    .line 48
    invoke-direct {p0}, Lbe;->c()V

    .line 49
    return-void
.end method

.method public final declared-synchronized a(LfK;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 53
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, LfY;

    .line 54
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 55
    if-nez v4, :cond_0

    move v1, v3

    .line 208
    :goto_0
    monitor-exit p0

    return v1

    .line 58
    :cond_0
    :try_start_1
    instance-of v2, p1, LfL;

    if-eqz v2, :cond_2

    .line 59
    move-object v0, p1

    check-cast v0, LfL;

    move-object v2, v0

    .line 60
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 61
    iget v5, v2, LfL;->d:I

    if-eq v5, v7, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v1, v2, LfL;->g:J

    cmp-long v1, v5, v1

    if-lez v1, :cond_2

    :cond_1
    move v1, v3

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    instance-of v1, p1, LfN;

    if-eqz v1, :cond_3

    .line 68
    move-object v0, p1

    check-cast v0, LfN;

    move-object v1, v0

    iget v1, v1, LfN;->f:I

    if-ne v1, v7, :cond_3

    move v1, v3

    .line 70
    goto :goto_0

    .line 73
    :cond_3
    invoke-direct {p0}, Lbe;->c()V

    .line 76
    packed-switch v4, :pswitch_data_0

    .line 208
    :cond_4
    :goto_1
    invoke-virtual {p1}, LfK;->a()Z

    move-result v1

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object v1, p0, Lbe;->d:Lbd;

    if-eqz v1, :cond_5

    .line 81
    invoke-static {p1}, Lbd;->a(LfK;)I

    move-result v1

    .line 82
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 85
    invoke-static {p1}, Lbe;->b(LfK;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 89
    :cond_5
    :try_start_2
    iget-object v1, p0, Lbe;->b:Lbb;

    if-eqz v1, :cond_4

    .line 90
    iget-object v1, p0, Lbe;->b:Lbb;

    invoke-virtual {v1, p1}, Lbb;->a(LfK;)I

    move-result v1

    .line 91
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_6

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 94
    invoke-static {p1}, Lbe;->b(LfK;)V

    goto :goto_1

    .line 97
    :cond_6
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_7

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 100
    invoke-static {p1}, Lbe;->b(LfK;)V

    goto :goto_1

    .line 103
    :cond_7
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 106
    invoke-static {p1}, Lbe;->b(LfK;)V

    goto :goto_1

    .line 112
    :pswitch_1
    iget-object v1, p0, Lbe;->c:Lbc;

    if-eqz v1, :cond_8

    .line 114
    invoke-static {p1}, Lbc;->a(LfK;)I

    move-result v1

    .line 115
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    .line 117
    invoke-virtual {p1}, LfK;->c()V

    goto :goto_1

    .line 121
    :cond_8
    iget-object v1, p0, Lbe;->b:Lbb;

    if-eqz v1, :cond_b

    .line 122
    iget-object v1, p0, Lbe;->b:Lbb;

    invoke-virtual {v1, p1}, Lbb;->a(LfK;)I

    move-result v1

    .line 123
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_9

    .line 125
    invoke-virtual {p1}, LfK;->c()V

    goto :goto_1

    .line 128
    :cond_9
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_a

    .line 130
    invoke-virtual {p1}, LfK;->c()V

    goto :goto_1

    .line 133
    :cond_a
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b

    .line 135
    invoke-virtual {p1}, LfK;->c()V

    goto :goto_1

    .line 139
    :cond_b
    iget-object v1, p0, Lbe;->b:Lbb;

    if-nez v1, :cond_c

    iget-object v1, p0, Lbe;->c:Lbc;

    if-eqz v1, :cond_4

    .line 140
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 141
    invoke-static {p1}, Lbe;->b(LfK;)V

    goto/16 :goto_1

    .line 145
    :pswitch_2
    iget-object v1, p0, Lbe;->b:Lbb;

    if-eqz v1, :cond_14

    .line 146
    iget-object v1, p0, Lbe;->b:Lbb;

    invoke-virtual {v1, p1}, Lbb;->a(LfK;)I

    move-result v1

    .line 147
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_d

    .line 149
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 150
    invoke-static {p1}, Lbe;->b(LfK;)V

    goto/16 :goto_1

    .line 153
    :cond_d
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_e

    .line 155
    invoke-virtual {p1}, LfK;->c()V

    goto/16 :goto_1

    .line 158
    :cond_e
    iget-object v2, p0, Lbe;->d:Lbd;

    if-eqz v2, :cond_f

    .line 160
    invoke-static {p1}, Lbd;->a(LfK;)I

    move-result v2

    .line 161
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    .line 163
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 164
    invoke-static {p1}, Lbe;->b(LfK;)V

    goto/16 :goto_1

    .line 168
    :cond_f
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_10

    .line 170
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 171
    invoke-static {p1}, Lbe;->b(LfK;)V

    goto/16 :goto_1

    .line 174
    :cond_10
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_11

    .line 176
    invoke-virtual {p1}, LfK;->c()V

    goto/16 :goto_1

    .line 179
    :cond_11
    iget-object v2, p0, Lbe;->c:Lbc;

    if-eqz v2, :cond_12

    .line 181
    invoke-static {p1}, Lbc;->a(LfK;)I

    move-result v2

    .line 182
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_12

    .line 184
    invoke-virtual {p1}, LfK;->c()V

    goto/16 :goto_1

    .line 188
    :cond_12
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_13

    .line 190
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 191
    invoke-static {p1}, Lbe;->b(LfK;)V

    goto/16 :goto_1

    .line 194
    :cond_13
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_14

    .line 196
    invoke-virtual {p1}, LfK;->c()V

    goto/16 :goto_1

    .line 200
    :cond_14
    iget-object v1, p0, Lbe;->a:Lbl;

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lbe;->a:Lbl;

    invoke-interface {v1, p1}, Lbl;->a(LfK;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()Lbk;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lbe;->b:Lbb;

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0}, Lbe;->c()V

    .line 284
    :cond_0
    iget-object v0, p0, Lbe;->b:Lbb;

    return-object v0
.end method
