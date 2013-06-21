.class final Lccc71/pmw/lib/if;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ie;

.field private final synthetic b:Landroid/os/Handler;

.field private final synthetic c:Landroid/widget/TableLayout;

.field private final synthetic d:Lccc71/pmw/a/ar;

.field private final synthetic e:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ie;Landroid/os/Handler;Landroid/widget/TableLayout;Lccc71/pmw/a/ar;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/if;->a:Lccc71/pmw/lib/ie;

    iput-object p2, p0, Lccc71/pmw/lib/if;->b:Landroid/os/Handler;

    iput-object p3, p0, Lccc71/pmw/lib/if;->c:Landroid/widget/TableLayout;

    iput-object p4, p0, Lccc71/pmw/lib/if;->d:Lccc71/pmw/a/ar;

    iput p5, p0, Lccc71/pmw/lib/if;->e:I

    .line 230
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/if;)Lccc71/pmw/lib/ie;
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lccc71/pmw/lib/if;->a:Lccc71/pmw/lib/ie;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    .line 235
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 237
    iget-object v0, p0, Lccc71/pmw/lib/if;->a:Lccc71/pmw/lib/ie;

    invoke-static {v0}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v9

    .line 238
    iget-object v0, p0, Lccc71/pmw/lib/if;->a:Lccc71/pmw/lib/ie;

    invoke-static {v0}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v8

    .line 239
    iget-object v0, p0, Lccc71/pmw/lib/if;->a:Lccc71/pmw/lib/ie;

    invoke-static {v0}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v10

    .line 240
    iget-object v0, p0, Lccc71/pmw/lib/if;->a:Lccc71/pmw/lib/ie;

    invoke-static {v0}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v6

    .line 241
    iget-object v0, p0, Lccc71/pmw/lib/if;->a:Lccc71/pmw/lib/ie;

    invoke-static {v0}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->aB(Landroid/content/Context;)I

    move-result v7

    .line 243
    new-instance v3, Lccc71/pmw/b/q;

    iget-object v0, p0, Lccc71/pmw/lib/if;->a:Lccc71/pmw/lib/ie;

    invoke-static {v0}, Lccc71/pmw/lib/ie;->a(Lccc71/pmw/lib/ie;)Lccc71/pmw/lib/pmw_memory_tweak;

    move-result-object v0

    invoke-direct {v3, v0}, Lccc71/pmw/b/q;-><init>(Landroid/content/Context;)V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v1, v0}, Lccc71/pmw/b/q;->a(ZZZ)V

    .line 245
    invoke-virtual {v3}, Lccc71/pmw/b/q;->d()V

    .line 246
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Lccc71/pmw/b/q;->a(I)V

    .line 248
    iget-object v11, p0, Lccc71/pmw/lib/if;->b:Landroid/os/Handler;

    new-instance v0, Lccc71/pmw/lib/ig;

    iget-object v2, p0, Lccc71/pmw/lib/if;->c:Landroid/widget/TableLayout;

    iget-object v4, p0, Lccc71/pmw/lib/if;->d:Lccc71/pmw/a/ar;

    iget v5, p0, Lccc71/pmw/lib/if;->e:I

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lccc71/pmw/lib/ig;-><init>(Lccc71/pmw/lib/if;Landroid/widget/TableLayout;Lccc71/pmw/b/q;Lccc71/pmw/a/ar;IFIIII)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method
