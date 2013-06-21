.class final LfG;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/util/Set;

.field private volatile c:Landroid/telephony/ServiceState;

.field private synthetic d:LfE;


# direct methods
.method synthetic constructor <init>(LfE;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LfG;-><init>(LfE;B)V

    return-void
.end method

.method private constructor <init>(LfE;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, LfG;->d:LfE;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LfG;->a:Ljava/util/Vector;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LfG;->b:Ljava/util/Set;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, LfG;->c:Landroid/telephony/ServiceState;

    return-void
.end method


# virtual methods
.method public final a()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, LfG;->c:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public final a(LfM;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-object v1, p0, LfG;->b:Ljava/util/Set;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, LfG;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(LfM;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-object v1, p0, LfG;->b:Ljava/util/Set;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, LfG;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 184
    :cond_0
    return-void

    .line 128
    :pswitch_0
    new-instance v0, LfN;

    invoke-direct {v0}, LfN;-><init>()V

    .line 129
    iget-object v1, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, v0, LfN;->e:Z

    .line 135
    :goto_0
    iput v2, v0, LfN;->d:I

    .line 136
    iput-object p2, v0, LfN;->c:Ljava/lang/String;

    .line 137
    iget-object v1, v0, LfN;->c:Ljava/lang/String;

    invoke-static {v1}, Lfn;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "-2"

    iput-object v1, v0, LfN;->c:Ljava/lang/String;

    .line 141
    :cond_1
    iget-object v1, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, LfG;->d:LfE;

    invoke-virtual {v1, v0}, LfE;->a(LfK;)V

    .line 150
    :pswitch_1
    iget-object v0, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 154
    iget-object v0, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfN;

    invoke-virtual {v0}, LfN;->d()V

    .line 155
    iget-object v0, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 152
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 133
    :cond_2
    iput-boolean v2, v0, LfN;->e:Z

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v0, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_0

    .line 170
    iget-object v0, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfN;

    invoke-virtual {v0}, LfN;->d()V

    .line 171
    iget-object v0, p0, LfG;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 168
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, LfG;->c:Landroid/telephony/ServiceState;

    .line 102
    iget-object v1, p0, LfG;->b:Ljava/util/Set;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, LfG;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 105
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfM;

    .line 108
    invoke-interface {v0, p1}, LfM;->a(Landroid/telephony/ServiceState;)Z

    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
