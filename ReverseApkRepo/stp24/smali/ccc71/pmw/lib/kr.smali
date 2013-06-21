.class final Lccc71/pmw/lib/kr;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_recorder;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_recorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    .line 245
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 254
    iget-object v0, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    iget-object v1, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/lib/pmw_recorder;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/lib/pmw_recorder;->a(Landroid/content/Context;Z)V

    .line 256
    iget-object v0, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/lib/pmw_recorder;Ljava/util/Date;)V

    .line 257
    iget-object v0, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/lib/pmw_recorder;Ljava/util/HashMap;)V

    .line 258
    iget-object v0, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_recorder;->b(Lccc71/pmw/lib/pmw_recorder;Ljava/util/HashMap;)V

    .line 259
    iget-object v0, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    iget-object v1, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/lib/pmw_recorder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->s(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/lib/pmw_recorder;I)V

    .line 261
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recording precisely every "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_recorder;->b(Lccc71/pmw/lib/pmw_recorder;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds and for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_recorder;->c(Lccc71/pmw/lib/pmw_recorder;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    iget-object v1, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_recorder;->c(Lccc71/pmw/lib/pmw_recorder;)I

    move-result v1

    iget-object v2, p0, Lccc71/pmw/lib/kr;->a:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_recorder;->b(Lccc71/pmw/lib/pmw_recorder;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_recorder;->a(Lccc71/pmw/lib/pmw_recorder;I)V

    .line 263
    return-void
.end method
