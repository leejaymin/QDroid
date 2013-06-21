.class final Lcom/tapjoy/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/ca;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/ca;->a:Lcom/tapjoy/TapjoyVideoView;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyVideoView;->finish()V

    return-void
.end method
