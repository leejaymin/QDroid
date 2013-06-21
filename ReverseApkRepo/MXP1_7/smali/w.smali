.class Lw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final 癤욱븳援:Z

.field private final 궗:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw;->궗:Landroid/webkit/WebView;

    iput-boolean p2, p0, Lw;->癤욱븳援:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lw;->궗:Landroid/webkit/WebView;

    iget-boolean v1, p0, Lw;->癤욱븳援:Z

    invoke-static {v0, v1}, Lt;->癤욱븳援(Landroid/webkit/WebView;Z)V

    return-void
.end method
