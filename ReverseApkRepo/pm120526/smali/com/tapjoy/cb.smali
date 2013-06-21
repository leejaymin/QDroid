.class final Lcom/tapjoy/cb;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/cb;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyVideoView;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/cb;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/cb;->a:Lcom/tapjoy/TapjoyVideoView;

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/cb;->a:Lcom/tapjoy/TapjoyVideoView;

    iget-object v1, v1, Lcom/tapjoy/TapjoyVideoView;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
