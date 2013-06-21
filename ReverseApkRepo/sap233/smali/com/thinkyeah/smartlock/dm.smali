.class final Lcom/thinkyeah/smartlock/dm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/i;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/di;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/di;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/dm;->a:Lcom/thinkyeah/smartlock/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/thinkyeah/smartlock/dm;->a:Lcom/thinkyeah/smartlock/di;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/di;->c(Lcom/thinkyeah/smartlock/di;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v2

    iget-object v3, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "PatternVisible"

    invoke-static {v3, v4, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v2, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v3, :cond_0

    :goto_1
    const-string v1, "PatternVisible"

    invoke-static {v2, v1, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/thinkyeah/smartlock/dm;->a:Lcom/thinkyeah/smartlock/di;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/di;->c(Lcom/thinkyeah/smartlock/di;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v2

    iget-object v3, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "VibrationFeedbackEnabled"

    invoke-static {v3, v4, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v2, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v3, :cond_1

    :goto_2
    const-string v1, "VibrationFeedbackEnabled"

    invoke-static {v2, v1, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method
