.class final Lcom/thinkyeah/smartlock/service/h;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/service/g;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/service/g;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/service/h;->a:Lcom/thinkyeah/smartlock/service/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/h;->a:Lcom/thinkyeah/smartlock/service/g;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/g;->c(Lcom/thinkyeah/smartlock/service/g;)V

    return-void
.end method
