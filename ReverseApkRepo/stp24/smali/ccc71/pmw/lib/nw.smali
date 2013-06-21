.class final Lccc71/pmw/lib/nw;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lccc71/pmw/a/ah;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Ljava/lang/String;Lccc71/pmw/a/ah;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/nw;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/nw;->b:Ljava/lang/String;

    iput-object p3, p0, Lccc71/pmw/lib/nw;->c:Lccc71/pmw/a/ah;

    iput p4, p0, Lccc71/pmw/lib/nw;->d:I

    .line 4101
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 4106
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4108
    iget-object v0, p0, Lccc71/pmw/lib/nw;->b:Ljava/lang/String;

    const-string v1, "ondemand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4110
    iget-object v0, p0, Lccc71/pmw/lib/nw;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->D(Landroid/content/Context;)I

    move-result v0

    .line 4111
    iget-object v1, p0, Lccc71/pmw/lib/nw;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->E(Landroid/content/Context;)I

    move-result v1

    .line 4112
    iget-object v2, p0, Lccc71/pmw/lib/nw;->c:Lccc71/pmw/a/ah;

    iget v2, p0, Lccc71/pmw/lib/nw;->d:I

    invoke-static {v2, v0, v1}, Lccc71/pmw/a/ah;->a(III)V

    .line 4128
    :cond_0
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/nw;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->R(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4130
    iget-object v0, p0, Lccc71/pmw/lib/nw;->c:Lccc71/pmw/a/ah;

    iget-object v1, p0, Lccc71/pmw/lib/nw;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ah;->h(Landroid/content/Context;)V

    .line 4132
    :cond_1
    return-void

    .line 4114
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/nw;->b:Ljava/lang/String;

    const-string v1, "interactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4116
    iget-object v0, p0, Lccc71/pmw/lib/nw;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->H(Landroid/content/Context;)I

    move-result v0

    .line 4117
    iget-object v1, p0, Lccc71/pmw/lib/nw;->c:Lccc71/pmw/a/ah;

    iget v1, p0, Lccc71/pmw/lib/nw;->d:I

    invoke-static {v1, v0}, Lccc71/pmw/a/ah;->a(II)V

    goto :goto_0

    .line 4119
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/nw;->b:Ljava/lang/String;

    const-string v1, "conservative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4121
    iget-object v0, p0, Lccc71/pmw/lib/nw;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->F(Landroid/content/Context;)I

    move-result v0

    .line 4122
    iget-object v1, p0, Lccc71/pmw/lib/nw;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->G(Landroid/content/Context;)I

    move-result v1

    .line 4123
    iget-object v2, p0, Lccc71/pmw/lib/nw;->c:Lccc71/pmw/a/ah;

    iget v2, p0, Lccc71/pmw/lib/nw;->d:I

    invoke-static {v2, v0, v1}, Lccc71/pmw/a/ah;->b(III)V

    goto :goto_0
.end method
