.class final Lcom/rubycell/c2dm/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rubycell/c2dm/d;


# instance fields
.field final synthetic a:Lcom/rubycell/c2dm/C2DMReceiver;


# direct methods
.method constructor <init>(Lcom/rubycell/c2dm/C2DMReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/c2dm/a;->a:Lcom/rubycell/c2dm/C2DMReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/c2dm/a;->a:Lcom/rubycell/c2dm/C2DMReceiver;

    invoke-virtual {v0}, Lcom/rubycell/c2dm/C2DMReceiver;->stopSelf()V

    return-void
.end method
